EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:polypoint
LIBS:pinpoint_core-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 6
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 3600 2450 0    60   BiDi ~ 0
I2C_IN_SDA
Text HLabel 3600 2550 0    60   BiDi ~ 0
I2C_IN_SCL
Text HLabel 4450 4800 0    60   Input ~ 0
CFG0_IN0
Text HLabel 4450 4900 0    60   Input ~ 0
CFG0_IN1
Text HLabel 9550 3400 2    60   BiDi ~ 0
I2C2_SCL
Text HLabel 9550 3200 2    60   BiDi ~ 0
I2C2_SDA
Text HLabel 9550 2600 2    60   BiDi ~ 0
I2C1_SCL
Text HLabel 9550 2400 2    60   BiDi ~ 0
I2C1_SDA
Text HLabel 9550 1800 2    60   BiDi ~ 0
I2C0_SCL
Text HLabel 9550 1600 2    60   BiDi ~ 0
I2C0_SDA
Text HLabel 6000 5400 2    60   Output ~ 0
CFG2_OUT1
Text HLabel 6000 5300 2    60   Output ~ 0
CFG2_OUT0
Text HLabel 6000 5200 2    60   Output ~ 0
CFG1_OUT1
Text HLabel 6000 5100 2    60   Output ~ 0
CFG1_OUT0
Text HLabel 6000 5000 2    60   Output ~ 0
CFG0_OUT1
Text HLabel 6000 4900 2    60   Output ~ 0
CFG0_OUT0
$Comp
L PCA9545A U14
U 1 1 55DA400E
P 5250 2750
F 0 "U14" H 4950 3550 60  0000 C CNN
F 1 "PCA9545A" H 5250 1950 60  0000 C CNN
F 2 "Housings_SSOP:TSSOP-20_4.4x6.5mm_Pitch0.65mm" H 5900 2900 60  0001 C CNN
F 3 "" H 5900 2900 60  0000 C CNN
	1    5250 2750
	1    0    0    -1  
$EndComp
$Comp
L P82B96-PP U12
U 1 1 55DA435E
P 7900 1700
F 0 "U12" H 7600 2050 60  0000 C CNN
F 1 "P82B96-PP" H 7900 1350 60  0000 C CNN
F 2 "Housings_SSOP:TSSOP-8_3x3mm_Pitch0.65mm" H 7950 1550 60  0001 C CNN
F 3 "" H 7950 1550 60  0000 C CNN
	1    7900 1700
	-1   0    0    -1  
$EndComp
$Comp
L P82B96-PP U13
U 1 1 55DA447D
P 7900 2500
F 0 "U13" H 7600 2850 60  0000 C CNN
F 1 "P82B96-PP" H 7900 2150 60  0000 C CNN
F 2 "Housings_SSOP:TSSOP-8_3x3mm_Pitch0.65mm" H 7950 2350 60  0001 C CNN
F 3 "" H 7950 2350 60  0000 C CNN
	1    7900 2500
	-1   0    0    -1  
$EndComp
$Comp
L P82B96-PP U15
U 1 1 55DA44B6
P 7900 3300
F 0 "U15" H 7600 3650 60  0000 C CNN
F 1 "P82B96-PP" H 7900 2950 60  0000 C CNN
F 2 "Housings_SSOP:TSSOP-8_3x3mm_Pitch0.65mm" H 7950 3150 60  0001 C CNN
F 3 "" H 7950 3150 60  0000 C CNN
	1    7900 3300
	-1   0    0    -1  
$EndComp
$Comp
L +3.3V #PWR0103
U 1 1 55DA489D
P 5700 1100
F 0 "#PWR0103" H 5700 950 50  0001 C CNN
F 1 "+3.3V" H 5700 1240 50  0000 C CNN
F 2 "" H 5700 1100 60  0000 C CNN
F 3 "" H 5700 1100 60  0000 C CNN
	1    5700 1100
	1    0    0    -1  
$EndComp
$Comp
L +15V #PWR0104
U 1 1 55DA4971
P 8600 1100
F 0 "#PWR0104" H 8600 950 50  0001 C CNN
F 1 "+15V" H 8600 1240 50  0000 C CNN
F 2 "" H 8600 1100 60  0000 C CNN
F 3 "" H 8600 1100 60  0000 C CNN
	1    8600 1100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0105
U 1 1 55DA4BFA
P 8500 2000
F 0 "#PWR0105" H 8500 1750 50  0001 C CNN
F 1 "GND" H 8500 1850 50  0000 C CNN
F 2 "" H 8500 2000 60  0000 C CNN
F 3 "" H 8500 2000 60  0000 C CNN
	1    8500 2000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0106
U 1 1 55DA4C78
P 8500 2800
F 0 "#PWR0106" H 8500 2550 50  0001 C CNN
F 1 "GND" H 8500 2650 50  0000 C CNN
F 2 "" H 8500 2800 60  0000 C CNN
F 3 "" H 8500 2800 60  0000 C CNN
	1    8500 2800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0107
U 1 1 55DA4CC7
P 8500 3600
F 0 "#PWR0107" H 8500 3350 50  0001 C CNN
F 1 "GND" H 8500 3450 50  0000 C CNN
F 2 "" H 8500 3600 60  0000 C CNN
F 3 "" H 8500 3600 60  0000 C CNN
	1    8500 3600
	1    0    0    -1  
$EndComp
$Comp
L C_Small C34
U 1 1 55DA4E24
P 9650 2250
F 0 "C34" V 9600 2300 50  0000 L CNN
F 1 "C_Small" V 9500 2300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 9650 2250 60  0001 C CNN
F 3 "" H 9650 2250 60  0000 C CNN
	1    9650 2250
	0    1    1    0   
$EndComp
$Comp
L GND #PWR0108
U 1 1 55DA506D
P 9750 1450
F 0 "#PWR0108" H 9750 1200 50  0001 C CNN
F 1 "GND" H 9750 1300 50  0000 C CNN
F 2 "" H 9750 1450 60  0000 C CNN
F 3 "" H 9750 1450 60  0000 C CNN
	1    9750 1450
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR0109
U 1 1 55DA508D
P 9750 2250
F 0 "#PWR0109" H 9750 2000 50  0001 C CNN
F 1 "GND" H 9750 2100 50  0000 C CNN
F 2 "" H 9750 2250 60  0000 C CNN
F 3 "" H 9750 2250 60  0000 C CNN
	1    9750 2250
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR0110
U 1 1 55DA50AD
P 9750 3050
F 0 "#PWR0110" H 9750 2800 50  0001 C CNN
F 1 "GND" H 9750 2900 50  0000 C CNN
F 2 "" H 9750 3050 60  0000 C CNN
F 3 "" H 9750 3050 60  0000 C CNN
	1    9750 3050
	0    -1   -1   0   
$EndComp
$Comp
L C_Small C32
U 1 1 55DA5155
P 9650 1450
F 0 "C32" V 9600 1500 50  0000 L CNN
F 1 "C_Small" V 9500 1500 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 9650 1450 60  0001 C CNN
F 3 "" H 9650 1450 60  0000 C CNN
	1    9650 1450
	0    1    1    0   
$EndComp
$Comp
L C_Small C35
U 1 1 55DA519E
P 9650 3050
F 0 "C35" V 9600 3100 50  0000 L CNN
F 1 "C_Small" V 9500 3100 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 9650 3050 60  0001 C CNN
F 3 "" H 9650 3050 60  0000 C CNN
	1    9650 3050
	0    1    1    0   
$EndComp
$Comp
L R_Small R45
U 1 1 55D783FA
P 8950 1250
F 0 "R45" V 8950 1650 50  0000 L CNN
F 1 "290" V 8950 1450 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 8950 1250 60  0001 C CNN
F 3 "" H 8950 1250 60  0000 C CNN
	1    8950 1250
	1    0    0    -1  
$EndComp
$Comp
L R_Small R46
U 1 1 55D78678
P 9050 1250
F 0 "R46" V 9050 1650 50  0000 L CNN
F 1 "290" V 9050 1450 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 9050 1250 60  0001 C CNN
F 3 "" H 9050 1250 60  0000 C CNN
	1    9050 1250
	1    0    0    -1  
$EndComp
$Comp
L R_Small R47
U 1 1 55D786A5
P 9150 1250
F 0 "R47" V 9150 1650 50  0000 L CNN
F 1 "290" V 9150 1450 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 9150 1250 60  0001 C CNN
F 3 "" H 9150 1250 60  0000 C CNN
	1    9150 1250
	1    0    0    -1  
$EndComp
$Comp
L R_Small R48
U 1 1 55D786D5
P 9250 1250
F 0 "R48" V 9250 1650 50  0000 L CNN
F 1 "290" V 9250 1450 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 9250 1250 60  0001 C CNN
F 3 "" H 9250 1250 60  0000 C CNN
	1    9250 1250
	1    0    0    -1  
$EndComp
$Comp
L R_Small R49
U 1 1 55D78708
P 9350 1250
F 0 "R49" V 9350 1650 50  0000 L CNN
F 1 "290" V 9350 1450 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 9350 1250 60  0001 C CNN
F 3 "" H 9350 1250 60  0000 C CNN
	1    9350 1250
	1    0    0    -1  
$EndComp
$Comp
L R_Small R50
U 1 1 55D7873E
P 9450 1250
F 0 "R50" V 9450 1650 50  0000 L CNN
F 1 "290" V 9450 1450 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 9450 1250 60  0001 C CNN
F 3 "" H 9450 1250 60  0000 C CNN
	1    9450 1250
	1    0    0    -1  
$EndComp
$Comp
L R_Small R44
U 1 1 55D791B9
P 7000 1250
F 0 "R44" V 7000 1650 50  0000 L CNN
F 1 "1K" V 7000 1450 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 7000 1250 60  0001 C CNN
F 3 "" H 7000 1250 60  0000 C CNN
	1    7000 1250
	1    0    0    -1  
$EndComp
$Comp
L R_Small R43
U 1 1 55D79282
P 6900 1250
F 0 "R43" V 6900 1650 50  0000 L CNN
F 1 "1K" V 6900 1450 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 6900 1250 60  0001 C CNN
F 3 "" H 6900 1250 60  0000 C CNN
	1    6900 1250
	1    0    0    -1  
$EndComp
$Comp
L R_Small R42
U 1 1 55D792C1
P 6800 1250
F 0 "R42" V 6800 1650 50  0000 L CNN
F 1 "1K" V 6800 1450 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 6800 1250 60  0001 C CNN
F 3 "" H 6800 1250 60  0000 C CNN
	1    6800 1250
	1    0    0    -1  
$EndComp
$Comp
L R_Small R41
U 1 1 55D79303
P 6700 1250
F 0 "R41" V 6700 1650 50  0000 L CNN
F 1 "1K" V 6700 1450 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 6700 1250 60  0001 C CNN
F 3 "" H 6700 1250 60  0000 C CNN
	1    6700 1250
	1    0    0    -1  
$EndComp
$Comp
L R_Small R40
U 1 1 55D79350
P 6600 1250
F 0 "R40" V 6600 1650 50  0000 L CNN
F 1 "1K" V 6600 1450 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 6600 1250 60  0001 C CNN
F 3 "" H 6600 1250 60  0000 C CNN
	1    6600 1250
	1    0    0    -1  
$EndComp
$Comp
L R_Small R39
U 1 1 55D79398
P 6500 1250
F 0 "R39" V 6500 1650 50  0000 L CNN
F 1 "1K" V 6500 1450 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 6500 1250 60  0001 C CNN
F 3 "" H 6500 1250 60  0000 C CNN
	1    6500 1250
	1    0    0    -1  
$EndComp
$Comp
L R_Small R38
U 1 1 55D793E7
P 6400 1250
F 0 "R38" V 6400 1650 50  0000 L CNN
F 1 "1K" V 6400 1450 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 6400 1250 60  0001 C CNN
F 3 "" H 6400 1250 60  0000 C CNN
	1    6400 1250
	1    0    0    -1  
$EndComp
$Comp
L R_Small R37
U 1 1 55D79435
P 6300 1250
F 0 "R37" V 6300 1650 50  0000 L CNN
F 1 "1K" V 6300 1450 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 6300 1250 60  0001 C CNN
F 3 "" H 6300 1250 60  0000 C CNN
	1    6300 1250
	1    0    0    -1  
$EndComp
$Comp
L R_Small R36
U 1 1 55D7962A
P 6200 1250
F 0 "R36" V 6200 1650 50  0000 L CNN
F 1 "1K" V 6200 1450 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 6200 1250 60  0001 C CNN
F 3 "" H 6200 1250 60  0000 C CNN
	1    6200 1250
	1    0    0    -1  
$EndComp
$Comp
L R_Small R35
U 1 1 55D79682
P 6100 1250
F 0 "R35" V 6100 1650 50  0000 L CNN
F 1 "1K" V 6100 1450 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 6100 1250 60  0001 C CNN
F 3 "" H 6100 1250 60  0000 C CNN
	1    6100 1250
	1    0    0    -1  
$EndComp
$Comp
L R_Small R34
U 1 1 55D796D9
P 6000 1250
F 0 "R34" V 6000 1650 50  0000 L CNN
F 1 "1K" V 6000 1450 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 6000 1250 60  0001 C CNN
F 3 "" H 6000 1250 60  0000 C CNN
	1    6000 1250
	1    0    0    -1  
$EndComp
$Comp
L R_Small R33
U 1 1 55D79733
P 5900 1250
F 0 "R33" V 5900 1650 50  0000 L CNN
F 1 "1K" V 5900 1450 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 5900 1250 60  0001 C CNN
F 3 "" H 5900 1250 60  0000 C CNN
	1    5900 1250
	1    0    0    -1  
$EndComp
$Comp
L VDDDIG #PWR0111
U 1 1 55D7A5F6
P 4450 1100
F 0 "#PWR0111" H 4450 950 50  0001 C CNN
F 1 "VDDDIG" H 4450 1250 50  0000 C CNN
F 2 "" H 4450 1100 60  0000 C CNN
F 3 "" H 4450 1100 60  0000 C CNN
	1    4450 1100
	1    0    0    -1  
$EndComp
$Comp
L C_Small C33
U 1 1 55D7AA10
P 4800 1800
F 0 "C33" V 4750 1850 50  0000 L CNN
F 1 "C_Small" V 4650 1850 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 4800 1800 60  0001 C CNN
F 3 "" H 4800 1800 60  0000 C CNN
	1    4800 1800
	0    1    1    0   
$EndComp
$Comp
L GND #PWR0112
U 1 1 55D7AAB0
P 4900 1800
F 0 "#PWR0112" H 4900 1550 50  0001 C CNN
F 1 "GND" H 4900 1650 50  0000 C CNN
F 2 "" H 4900 1800 60  0000 C CNN
F 3 "" H 4900 1800 60  0000 C CNN
	1    4900 1800
	0    -1   -1   0   
$EndComp
$Comp
L R_Small R32
U 1 1 55D7AEEA
P 4200 1250
F 0 "R32" V 4200 1650 50  0000 L CNN
F 1 "1K" V 4200 1450 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 4200 1250 60  0001 C CNN
F 3 "" H 4200 1250 60  0000 C CNN
	1    4200 1250
	1    0    0    -1  
$EndComp
$Comp
L R_Small R31
U 1 1 55D7AF77
P 4100 1250
F 0 "R31" V 4100 1650 50  0000 L CNN
F 1 "1K" V 4100 1450 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 4100 1250 60  0001 C CNN
F 3 "" H 4100 1250 60  0000 C CNN
	1    4100 1250
	1    0    0    -1  
$EndComp
$Comp
L R_Small R30
U 1 1 55D7AFDD
P 4000 1250
F 0 "R30" V 4000 1650 50  0000 L CNN
F 1 "1K" V 4000 1450 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 4000 1250 60  0001 C CNN
F 3 "" H 4000 1250 60  0000 C CNN
	1    4000 1250
	1    0    0    -1  
$EndComp
$Comp
L R_Small R29
U 1 1 55D7B046
P 3900 1250
F 0 "R29" V 3900 1650 50  0000 L CNN
F 1 "1K" V 3900 1450 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 3900 1250 60  0001 C CNN
F 3 "" H 3900 1250 60  0000 C CNN
	1    3900 1250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0113
U 1 1 55D7B4EA
P 4650 3500
F 0 "#PWR0113" H 4650 3250 50  0001 C CNN
F 1 "GND" H 4650 3350 50  0000 C CNN
F 2 "" H 4650 3500 60  0000 C CNN
F 3 "" H 4650 3500 60  0000 C CNN
	1    4650 3500
	1    0    0    -1  
$EndComp
$Comp
L C_Small C37
U 1 1 55D79604
P 6150 4700
F 0 "C37" V 6100 4750 50  0000 L CNN
F 1 "C_Small" V 6000 4750 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 6150 4700 60  0001 C CNN
F 3 "" H 6150 4700 60  0000 C CNN
	1    6150 4700
	0    1    1    0   
$EndComp
$Comp
L GND #PWR0114
U 1 1 55D79857
P 6250 4700
F 0 "#PWR0114" H 6250 4450 50  0001 C CNN
F 1 "GND" H 6250 4550 50  0000 C CNN
F 2 "" H 6250 4700 60  0000 C CNN
F 3 "" H 6250 4700 60  0000 C CNN
	1    6250 4700
	0    -1   -1   0   
$EndComp
Text HLabel 4450 5000 0    60   Input ~ 0
CFG1_IN0
Text HLabel 4450 5100 0    60   Input ~ 0
CFG1_IN1
Text HLabel 4450 5200 0    60   Input ~ 0
CFG2_IN0
Text HLabel 4450 5300 0    60   Input ~ 0
CFG2_IN1
$Comp
L +3.3V #PWR0115
U 1 1 55D7F7AC
P 5800 4500
F 0 "#PWR0115" H 5800 4350 50  0001 C CNN
F 1 "+3.3V" H 5800 4640 50  0000 C CNN
F 2 "" H 5800 4500 60  0000 C CNN
F 3 "" H 5800 4500 60  0000 C CNN
	1    5800 4500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0116
U 1 1 55D7FCC9
P 5750 5750
F 0 "#PWR0116" H 5750 5500 50  0001 C CNN
F 1 "GND" H 5750 5600 50  0000 C CNN
F 2 "" H 5750 5750 60  0000 C CNN
F 3 "" H 5750 5750 60  0000 C CNN
	1    5750 5750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0117
U 1 1 55D7FD34
P 4750 5750
F 0 "#PWR0117" H 4750 5500 50  0001 C CNN
F 1 "GND" H 4750 5600 50  0000 C CNN
F 2 "" H 4750 5750 60  0000 C CNN
F 3 "" H 4750 5750 60  0000 C CNN
	1    4750 5750
	1    0    0    -1  
$EndComp
$Comp
L VDDDIG #PWR0118
U 1 1 55D802A5
P 4750 4500
F 0 "#PWR0118" H 4750 4350 50  0001 C CNN
F 1 "VDDDIG" H 4750 4650 50  0000 C CNN
F 2 "" H 4750 4500 60  0000 C CNN
F 3 "" H 4750 4500 60  0000 C CNN
	1    4750 4500
	1    0    0    -1  
$EndComp
$Comp
L C_Small C36
U 1 1 55D80390
P 4350 4600
F 0 "C36" V 4300 4650 50  0000 L CNN
F 1 "C_Small" V 4200 4650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 4350 4600 60  0001 C CNN
F 3 "" H 4350 4600 60  0000 C CNN
	1    4350 4600
	0    1    1    0   
$EndComp
$Comp
L GND #PWR0119
U 1 1 55D80445
P 4250 4600
F 0 "#PWR0119" H 4250 4350 50  0001 C CNN
F 1 "GND" H 4250 4450 50  0000 C CNN
F 2 "" H 4250 4600 60  0000 C CNN
F 3 "" H 4250 4600 60  0000 C CNN
	1    4250 4600
	0    1    1    0   
$EndComp
Text HLabel 9550 4200 2    60   BiDi ~ 0
I2C3_SCL
Text HLabel 9550 4000 2    60   BiDi ~ 0
I2C3_SDA
$Comp
L P82B96-PP U17
U 1 1 55DBAB16
P 7900 4100
F 0 "U17" H 7600 4450 60  0000 C CNN
F 1 "P82B96-PP" H 7900 3750 60  0000 C CNN
F 2 "Housings_SSOP:TSSOP-8_3x3mm_Pitch0.65mm" H 7950 3950 60  0001 C CNN
F 3 "" H 7950 3950 60  0000 C CNN
	1    7900 4100
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR0120
U 1 1 55DBAB1C
P 8500 4400
F 0 "#PWR0120" H 8500 4150 50  0001 C CNN
F 1 "GND" H 8500 4250 50  0000 C CNN
F 2 "" H 8500 4400 60  0000 C CNN
F 3 "" H 8500 4400 60  0000 C CNN
	1    8500 4400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0121
U 1 1 55DBAB22
P 9750 3850
F 0 "#PWR0121" H 9750 3600 50  0001 C CNN
F 1 "GND" H 9750 3700 50  0000 C CNN
F 2 "" H 9750 3850 60  0000 C CNN
F 3 "" H 9750 3850 60  0000 C CNN
	1    9750 3850
	0    -1   -1   0   
$EndComp
$Comp
L C_Small C38
U 1 1 55DBAB28
P 9650 3850
F 0 "C38" V 9600 3900 50  0000 L CNN
F 1 "C_Small" V 9500 3900 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 9650 3850 60  0001 C CNN
F 3 "" H 9650 3850 60  0000 C CNN
	1    9650 3850
	0    1    1    0   
$EndComp
Wire Wire Line
	5800 2450 7350 2450
Wire Wire Line
	7350 2350 7200 2350
Wire Wire Line
	7200 2350 7200 2450
Connection ~ 7200 2450
Wire Wire Line
	5800 2550 7350 2550
Wire Wire Line
	7200 2550 7200 2650
Wire Wire Line
	7200 2650 7350 2650
Connection ~ 7200 2550
Wire Wire Line
	7200 2150 5800 2150
Wire Wire Line
	7200 1750 7200 2150
Wire Wire Line
	7200 1750 7350 1750
Wire Wire Line
	7350 1850 7200 1850
Connection ~ 7200 1850
Wire Wire Line
	7100 2050 5800 2050
Wire Wire Line
	7100 1550 7100 2050
Wire Wire Line
	7100 1550 7350 1550
Wire Wire Line
	7350 1650 7100 1650
Connection ~ 7100 1650
Wire Wire Line
	5800 2850 7200 2850
Wire Wire Line
	7200 2850 7200 3250
Wire Wire Line
	7200 3250 7350 3250
Wire Wire Line
	7350 3150 7200 3150
Connection ~ 7200 3150
Wire Wire Line
	5800 2950 7100 2950
Wire Wire Line
	7100 2950 7100 3450
Wire Wire Line
	7100 3450 7350 3450
Wire Wire Line
	7100 3350 7350 3350
Connection ~ 7100 3350
Wire Wire Line
	8450 3550 8500 3550
Wire Wire Line
	8500 3550 8500 3600
Wire Wire Line
	8450 2750 8500 2750
Wire Wire Line
	8500 2750 8500 2800
Wire Wire Line
	8450 1950 8500 1950
Wire Wire Line
	8500 1950 8500 2000
Wire Wire Line
	8600 1100 8600 3050
Wire Wire Line
	8450 1450 9550 1450
Wire Wire Line
	8450 2250 9550 2250
Connection ~ 8600 1450
Wire Wire Line
	8450 3050 9550 3050
Connection ~ 8600 2250
Wire Wire Line
	8600 1150 9450 1150
Connection ~ 8600 1150
Connection ~ 9350 1150
Connection ~ 9250 1150
Connection ~ 9150 1150
Connection ~ 9050 1150
Connection ~ 8950 1150
Connection ~ 8600 3050
Wire Wire Line
	8450 1800 9550 1800
Wire Wire Line
	8450 1600 9550 1600
Wire Wire Line
	8450 2400 9550 2400
Wire Wire Line
	8450 2600 9550 2600
Wire Wire Line
	8450 3200 9550 3200
Wire Wire Line
	8450 3400 9550 3400
Wire Wire Line
	9450 1350 9450 1600
Connection ~ 9450 1600
Wire Wire Line
	9350 1350 9350 1800
Connection ~ 9350 1800
Wire Wire Line
	9250 1350 9250 2400
Connection ~ 9250 2400
Wire Wire Line
	9150 1350 9150 2600
Connection ~ 9150 2600
Wire Wire Line
	9050 1350 9050 3200
Connection ~ 9050 3200
Wire Wire Line
	8950 1350 8950 3400
Connection ~ 8950 3400
Wire Wire Line
	5700 1100 5700 1150
Wire Wire Line
	4600 1150 7000 1150
Wire Wire Line
	7000 1350 7000 2050
Connection ~ 7000 2050
Wire Wire Line
	6900 1350 6900 2150
Connection ~ 6900 2150
Wire Wire Line
	6800 1350 6800 2250
Wire Wire Line
	6800 2250 5800 2250
Wire Wire Line
	6700 1350 6700 2450
Connection ~ 6700 2450
Wire Wire Line
	6600 2550 6600 1350
Connection ~ 6600 2550
Wire Wire Line
	6500 1350 6500 2650
Wire Wire Line
	6500 2650 5800 2650
Wire Wire Line
	6400 1350 6400 2850
Connection ~ 6400 2850
Wire Wire Line
	6300 2950 6300 1350
Connection ~ 6300 2950
Wire Wire Line
	6200 1350 6200 3050
Wire Wire Line
	6200 3050 5800 3050
Wire Wire Line
	6100 1350 6100 3250
Wire Wire Line
	5800 3250 6950 3250
Wire Wire Line
	6000 1350 6000 3350
Wire Wire Line
	5800 3350 6850 3350
Wire Wire Line
	5900 1350 5900 3450
Wire Wire Line
	5900 3450 5800 3450
Connection ~ 6900 1150
Connection ~ 6800 1150
Connection ~ 6700 1150
Connection ~ 6600 1150
Connection ~ 6500 1150
Connection ~ 6400 1150
Connection ~ 6300 1150
Connection ~ 6200 1150
Connection ~ 6100 1150
Connection ~ 6000 1150
Connection ~ 5900 1150
Wire Wire Line
	4600 1150 4600 2050
Wire Wire Line
	4600 2050 4700 2050
Connection ~ 5700 1150
Wire Wire Line
	4700 1800 4600 1800
Connection ~ 4600 1800
Wire Wire Line
	4700 3250 4650 3250
Wire Wire Line
	4650 3250 4650 3500
Wire Wire Line
	4700 3450 4650 3450
Connection ~ 4650 3450
Wire Wire Line
	4700 3350 4650 3350
Connection ~ 4650 3350
Wire Wire Line
	4450 1150 4450 1100
Wire Wire Line
	3900 1150 4450 1150
Connection ~ 4000 1150
Connection ~ 4100 1150
Connection ~ 4200 1150
Wire Wire Line
	3600 2450 4700 2450
Wire Wire Line
	3600 2550 4700 2550
Wire Wire Line
	4200 1350 4200 2450
Connection ~ 4200 2450
Wire Wire Line
	4100 2550 4100 1350
Connection ~ 4100 2550
Wire Wire Line
	4000 1350 4000 2650
Wire Wire Line
	4000 2650 4700 2650
Wire Wire Line
	4700 2850 3900 2850
Wire Wire Line
	3900 2850 3900 1350
Wire Wire Line
	5700 4800 6250 4800
Wire Wire Line
	6250 4800 6250 4700
Wire Wire Line
	6050 4700 5700 4700
Wire Wire Line
	5700 4600 5800 4600
Wire Wire Line
	5800 4500 5800 4700
Connection ~ 5800 4700
Connection ~ 5800 4600
Wire Wire Line
	6000 4900 5700 4900
Wire Wire Line
	5700 5000 6000 5000
Wire Wire Line
	6000 5100 5700 5100
Wire Wire Line
	5700 5200 6000 5200
Wire Wire Line
	6000 5300 5700 5300
Wire Wire Line
	5700 5400 6000 5400
Wire Wire Line
	4800 5700 4750 5700
Connection ~ 4750 5700
Wire Wire Line
	4800 4600 4450 4600
Wire Wire Line
	4750 4500 4750 4700
Connection ~ 4750 4600
Wire Wire Line
	4750 4700 4800 4700
Wire Wire Line
	4800 4800 4450 4800
Wire Wire Line
	4450 4900 4800 4900
Wire Wire Line
	4800 5000 4450 5000
Wire Wire Line
	4450 5100 4800 5100
Wire Wire Line
	4800 5200 4450 5200
Wire Wire Line
	4450 5300 4800 5300
Wire Wire Line
	8450 4350 8500 4350
Wire Wire Line
	8500 4350 8500 4400
Wire Wire Line
	8450 3850 9550 3850
Wire Wire Line
	8450 4000 9550 4000
Wire Wire Line
	8450 4200 9550 4200
Wire Wire Line
	7350 3950 6950 3950
Wire Wire Line
	6950 3250 6950 4050
Connection ~ 6100 3250
Wire Wire Line
	6850 3350 6850 4250
Wire Wire Line
	6850 4150 7350 4150
Connection ~ 6000 3350
Wire Wire Line
	6950 4050 7350 4050
Connection ~ 6950 3950
Wire Wire Line
	6850 4250 7350 4250
Connection ~ 6850 4150
$Comp
L R_Small R52
U 1 1 55DBC653
P 8850 1250
F 0 "R52" V 8850 1650 50  0000 L CNN
F 1 "290" V 8850 1450 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 8850 1250 60  0001 C CNN
F 3 "" H 8850 1250 60  0000 C CNN
	1    8850 1250
	1    0    0    -1  
$EndComp
$Comp
L R_Small R51
U 1 1 55DBC6D3
P 8750 1250
F 0 "R51" V 8750 1650 50  0000 L CNN
F 1 "290" V 8750 1450 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 8750 1250 60  0001 C CNN
F 3 "" H 8750 1250 60  0000 C CNN
	1    8750 1250
	1    0    0    -1  
$EndComp
Connection ~ 8850 1150
Connection ~ 8750 1150
Wire Wire Line
	8850 1350 8850 4000
Connection ~ 8850 4000
Wire Wire Line
	8750 1350 8750 4200
Connection ~ 8750 4200
Wire Wire Line
	5700 5700 5750 5700
Wire Wire Line
	5750 5700 5750 5750
Text HLabel 6000 5600 2    60   Output ~ 0
CFG3_OUT1
Text HLabel 6000 5500 2    60   Output ~ 0
CFG3_OUT0
Wire Wire Line
	6000 5500 5700 5500
Wire Wire Line
	5700 5600 6000 5600
$Comp
L SN74AVCH8T245 U16
U 1 1 55D7F074
P 5250 5150
F 0 "U16" H 5050 5800 60  0000 C CNN
F 1 "SN74AVCH8T245" H 5250 4500 60  0000 C CNN
F 2 "Housings_SSOP:TSSOP-24_4.4x7.8mm_Pitch0.65mm" H 5600 5100 60  0001 C CNN
F 3 "" H 5600 5100 60  0000 C CNN
	1    5250 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 5600 4750 5600
Wire Wire Line
	4750 5600 4750 5750
Text HLabel 4450 5400 0    60   Input ~ 0
CFG3_IN0
Text HLabel 4450 5500 0    60   Input ~ 0
CFG3_IN1
Wire Wire Line
	4800 5400 4450 5400
Wire Wire Line
	4450 5500 4800 5500
$EndSCHEMATC
