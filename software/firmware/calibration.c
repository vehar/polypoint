#include <stddef.h>
#include <string.h>

#include "deca_device_api.h"
#include "deca_regs.h"

#include "timer.h"
#include "delay.h"

#include "dw1000.h"
#include "host_interface.h"
#include "firmware.h"
#include "calibration.h"


/******************************************************************************/
// Configuration and settings
/******************************************************************************/

// All of the configuration passed to us by the host for how this application
// should operate.
static calibration_config_t _config;
// Our local reference to the timer for all of the high-level application
// code.
static stm_timer_t* _app_timer;

// Configure the RF channels to use. This is just a mapping from 0..2 to
// the actual RF channel numbers the DW1000 uses.
static const uint8_t channel_index_to_channel_rf_number[CALIB_NUM_CHANNELS] = {
	1, 4, 3
};

/******************************************************************************/
// Calibration state
/******************************************************************************/
// Which calibration round we are currently in
static uint32_t _round_num = UINT32_MAX;

// Timing of packet transmissions and receptions.
// What these are vary based on which node this is.
static uint64_t _calibration_timing[4];

// Buffer to send back to the host
static uint8_t _calibration_response_buf[64];

// Counter for the weird timers
static uint8_t _timeout_firing = 0;

// Prepopulated struct of the outgoing broadcast poll packet.
static struct pp_calibration_msg pp_calibration_pkt = {
	.header = {
		.frameCtrl = {
			0x41, // FCF[0]: data frame, panid compression
			0xC8  // FCF[1]: ext source address, compressed destination
		},
		.seqNum = 0,
		.panID = {
			POLYPOINT_PANID & 0xFF,
			POLYPOINT_PANID >> 8
		},
		.destAddr = {
			0xFF, // Destination address: broadcast
			0xFF
		},
		.sourceAddr = { 0 }     // Source (blank for now)
	},
	// PACKET BODY
	.message_type = MSG_TYPE_PP_CALIBRATION_INIT,
	.seq = 0,
	.num = 0
};

/******************************************************************************/
// Function prototypes
/******************************************************************************/

static void calibration_txcallback (const dwt_callback_data_t *txd);
static void calibration_rxcallback (const dwt_callback_data_t *txd);

static void setup_round_antenna_channel (uint32_t round_num, bool initiator);
static void calib_start_round ();
static void send_calibration_pkt (uint8_t message_type, uint8_t packet_num);
static void finish ();

/******************************************************************************/
// Application API for main()
/******************************************************************************/

static void init () {
	// Make sure the SPI speed is slow for this function
	dw1000_spi_slow();

	// Setup callbacks to this TAG
	dwt_setcallbacks(calibration_txcallback, calibration_rxcallback);

	// Allow data and ack frames
	dwt_enableframefilter(DWT_FF_DATA_EN | DWT_FF_ACK_EN);

	// Setup parameters of how the radio should work
	dwt_setautorxreenable(TRUE);
	// dwt_setdblrxbuffmode(TRUE);
	// dwt_enableautoack(DW1000_ACK_RESPONSE_TIME);
	dwt_setdblrxbuffmode(FALSE);
	dwt_setrxtimeout(FALSE);

	// Put source EUI in the pp_tag_poll packet
	dw1000_read_eui(pp_calibration_pkt.header.sourceAddr);

	// Make SPI fast now that everything has been setup
	dw1000_spi_fast();
}

// Setup the calibration
void calibration_configure (calibration_config_t* config, stm_timer_t* app_timer) {
	dw1000_err_e err;

	// Save the settings
	memcpy(&_config, config, sizeof(calibration_config_t));

	// Save the application timer for use by this application
	_app_timer = app_timer;

	// Make sure the DW1000 is awake before trying to do anything.
	err = dw1000_wakeup();
	if (err == DW1000_WAKEUP_SUCCESS) {
		// Going to init anyway
	} else if (err) {
		// Failed to wakeup
		polypoint_reset();
		return;
	}

	// Set all of the calibration init settings
	init();
}

void calibration_start () {
	// Start at round 0, but we increment at the start
	_round_num = UINT32_MAX;

	// Setup channel and antenna settings for round 0
	setup_round_antenna_channel(0, FALSE);

	// Determine what to do during calibration based on what index we are
	if (_config.index == 0) {
		// We are the master and start things.
		timer_start(_app_timer, CALIBRATION_ROUND_PERIOD_US, calib_start_round);

	} else if (_config.index > 0 && _config.index <= 2) {
		// Other nodes just enter RX mode
		dwt_rxenable(0);
	}
}

void calibration_stop () {
	timer_stop(_app_timer);
	dwt_forcetrxoff();
}

void calibration_reset () {
	init();
}

/******************************************************************************/
// Calibration action functions
/******************************************************************************/

static void setup_round_antenna_channel (uint32_t round_num, bool initiator) {
	uint8_t antenna;
	uint8_t channel;
	if (initiator) {
		// This rotates the fastest
		antenna = round_num % CALIB_NUM_ANTENNAS;
	} else {
		antenna = (round_num / CALIB_NUM_ANTENNAS) % CALIB_NUM_ANTENNAS;
	}
	channel = ((round_num / CALIB_NUM_ANTENNAS) / CALIB_NUM_ANTENNAS) % CALIB_NUM_CHANNELS;
	dw1000_choose_antenna(antenna);
	dw1000_update_channel(channel_index_to_channel_rf_number[channel]);
}

// Timer callback that marks the start of each round
static void calib_start_round () {

	// Increment the round number
	if (_round_num == UINT32_MAX) {
		_round_num = 0;
	} else {
		_round_num++;
	}

	// Before the INIT packet, use the default settings
	setup_round_antenna_channel(0, FALSE);

	// Send a packet to announce the start of the a calibration round.
	send_calibration_pkt(MSG_TYPE_PP_CALIBRATION_INIT, 0);
}

// Send a packet
static void send_calibration_pkt (uint8_t message_type, uint8_t packet_num) {
	// Record the packet length to send to DW1000
	uint16_t tx_len = sizeof(struct pp_calibration_msg);

	// Setup what needs to change in the outgoing packet
	pp_calibration_pkt.header.seqNum++;
	pp_calibration_pkt.message_type = message_type;
	pp_calibration_pkt.seq = _round_num;
	pp_calibration_pkt.num = packet_num;

	// Make sure we're out of RX mode before attempting to transmit
	dwt_forcetrxoff();

	// Tell the DW1000 about the packet
	dwt_writetxfctrl(tx_len, 0);

	// Setup the time the packet will go out at, and save that timestamp
	uint32_t delay_time = dwt_readsystimestamphi32() + DW_DELAY_FROM_PKT_LEN(tx_len);
	delay_time &= 0xFFFFFFFE; // Make sure last bit is zero
	dwt_setdelayedtrxtime(delay_time);
	_calibration_timing[packet_num] = ((uint64_t) delay_time) << 8;

	// Write the data
	dwt_writetxdata(tx_len, (uint8_t*) &pp_calibration_pkt, 0);

	// Start the transmission and enter RX mode
	dwt_setrxaftertxdelay(1); // us
	dwt_starttx(DWT_START_TX_DELAYED | DWT_RESPONSE_EXPECTED);

	// MP bug - TX antenna delay needs reprogramming as it is not preserved
	dwt_settxantennadelay(DW1000_ANTENNA_DELAY_TX);
}

static void round_timeout () {
	if (_timeout_firing == 0) {
		// skip the immediate callback
		_timeout_firing = 1;
	} else {
		timer_stop(_app_timer);

		// Wait for next round
		setup_round_antenna_channel(0, FALSE);
	}
}

static void finish () {
	// Setup initial configs
	setup_round_antenna_channel(0, FALSE);

	if (_config.index != 0) {
		// Stop the timeout timer
		timer_stop(_app_timer);
	}

	// Notify host
	_calibration_response_buf[0] = _round_num & 0xFF;
	_calibration_response_buf[1] = (_round_num >> 8) & 0xFF;
	_calibration_response_buf[2] = (_calibration_timing[0] >> 0) & 0xFF;
	_calibration_response_buf[3] = (_calibration_timing[0] >> 8) & 0xFF;
	_calibration_response_buf[4] = (_calibration_timing[0] >> 16) & 0xFF;
	_calibration_response_buf[5] = (_calibration_timing[0] >> 24) & 0xFF;
	_calibration_response_buf[6] = (_calibration_timing[0] >> 32) & 0xFF;
	uint32_t diff;
	diff = (uint32_t) (_calibration_timing[1] - _calibration_timing[0]);
	memcpy(_calibration_response_buf+7, &diff, sizeof(uint32_t));
	diff = (uint32_t) (_calibration_timing[2] - _calibration_timing[1]);
	memcpy(_calibration_response_buf+11, &diff, sizeof(uint32_t));
	diff = (uint32_t) (_calibration_timing[3] - _calibration_timing[2]);
	memcpy(_calibration_response_buf+15, &diff, sizeof(uint32_t));
	host_interface_notify_calibration(_calibration_response_buf, 19);
}

/******************************************************************************/
// TX/RX callbacks
/******************************************************************************/

// Use this callback to start the next cycle in the round
static void calibration_txcallback (const dwt_callback_data_t *txd) {

	// Nodes 0 and 1 send multiple messages in a row
	if (_config.index == 0 &&
	    pp_calibration_pkt.message_type == MSG_TYPE_PP_CALIBRATION_INIT) {
		// We just sent the "get everybody on the same page packet".
		// Now start the actual cycle.
		// Delay a bit to give the other nodes a chance to download and
		// process.
		mDelay(2);
		// Send on the next ranging cycle in this round
		setup_round_antenna_channel(_round_num, TRUE);
		send_calibration_pkt(MSG_TYPE_PP_CALIBRATION_MSG, 0);

	} else if (_config.index == 1 && pp_calibration_pkt.num == 1) {
		// Node 1 sends two messages in a row
		mDelay(2);
		// Send on the next ranging cycle in this round
		send_calibration_pkt(MSG_TYPE_PP_CALIBRATION_MSG, 2);

	} else if (_config.index == 2 && pp_calibration_pkt.num == 3) {
		// Node 2 is the last to transmit, need to notify at this
		// point
		finish();
	}
}

// Handle when we receive packets
static void calibration_rxcallback (const dwt_callback_data_t *rxd) {
	if (rxd->event == DWT_SIG_RX_OKAY) {

		// Read in parameters of this packet reception
		uint64_t dw_rx_timestamp;
		uint8_t  buf[CALIBRATION_MAX_RX_PKT_LEN];
		uint8_t  message_type;

		// Get the received time of this packet first
		dwt_readrxtimestamp(buf);
		dw_rx_timestamp = DW_TIMESTAMP_TO_UINT64(buf);

		// Get the actual packet bytes
		dwt_readrxdata(buf, MIN(CALIBRATION_MAX_RX_PKT_LEN, rxd->datalength), 0);

		// We process based on the first byte in the packet. How very active
		// message like...
		message_type = buf[offsetof(struct pp_calibration_msg, message_type)];

		// Packet
		struct pp_calibration_msg* rx_start_pkt = (struct pp_calibration_msg*) buf;

		if (message_type == MSG_TYPE_PP_CALIBRATION_INIT) {
			// Got the start of round message
			// Set the round number, and configure for that round
			_round_num = rx_start_pkt->seq;
			setup_round_antenna_channel(_round_num, FALSE);

			// Set a timeout timer. If everything doesn't complete in a certain
			// amount of time, go back to initial state.
			// Also, just make sure that for some weird reason (aka it should
			// never happen) that node 0 zero does not do this.
			if (_config.index != 0) {
				_timeout_firing = 0;
				timer_start(_app_timer, CALIBRATION_ROUND_TIMEOUT_US, round_timeout);
			}

		} else if (message_type == MSG_TYPE_PP_CALIBRATION_MSG) {
			uint8_t packet_num = rx_start_pkt->num;

			// store timestamps.
			//
			// INDEX || SLOT0 | SLOT1 | SLOT2 | SLOT3
			// --------------------------------------
			//  0    || TX0   | RX1   | RX2   | RX3
			//  1    || RX0   | TX1   | TX2   | RX3
			//  2    || RX0   | RX1   | RX2   | TX3
			_calibration_timing[packet_num] = dw_rx_timestamp;

			if (packet_num == 0 && _config.index == 1) {
				// The second node sends the next packet
				send_calibration_pkt(MSG_TYPE_PP_CALIBRATION_MSG, packet_num+1);

			} else if (packet_num == 2 && _config.index == 2) {
				// The third node sends the last packet
				send_calibration_pkt(MSG_TYPE_PP_CALIBRATION_MSG, packet_num+1);

			} else if (packet_num == 3) {
				// This is the last packet, notify the host of our findings
				finish();
			}

		}

		dwt_rxenable(0);
	}
}