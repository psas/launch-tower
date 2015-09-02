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
LIBS:LTC3
LIBS:BeagleBone_Black
LIBS:Launch_Tower_Computer_III-cache
EELAYER 25 0
EELAYER END
$Descr B 17000 11000
encoding utf-8
Sheet 2 7
Title "LTC3 Power Sources (Solar, Lab, Battery)"
Date "2015-08-01"
Rev "A"
Comp "Portland State Aerospace Society <http://psas.pdx.edu/>"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 12150 2650 2    60   Output ~ 0
VCC_BATT
Wire Notes Line
	7850 5100 9200 5100
Wire Notes Line
	9200 5100 9200 6350
Wire Notes Line
	9200 6350 7850 6350
Wire Notes Line
	7850 6350 7850 5100
Text Notes 8000 5400 0    100  ~ 0
LiPo Batteries
$Comp
L LT8490 U2
U 1 1 5560E702
P 5750 2650
F 0 "U2" H 5750 2550 60  0000 C CNN
F 1 "LT8490" H 5750 2700 60  0000 C CNN
F 2 "~" H 5800 2750 60  0000 C CNN
F 3 "" H 5800 2750 60  0000 C CNN
	1    5750 2650
	1    0    0    -1  
$EndComp
$Comp
L BQ77PL900 U1
U 1 1 556A16F5
P 4550 5850
F 0 "U1" H 4550 5800 60  0000 C CNN
F 1 "BQ77PL900" H 4550 5900 60  0000 C CNN
F 2 "" H 4550 5850 60  0000 C CNN
F 3 "" H 4550 5850 60  0000 C CNN
	1    4550 5850
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P?
U 1 1 5583855E
P 2200 2750
F 0 "P?" H 2200 2900 50  0000 C CNN
F 1 "PV_IN" V 2300 2750 50  0000 C CNN
F 2 "" H 2200 2750 60  0000 C CNN
F 3 "" H 2200 2750 60  0000 C CNN
	1    2200 2750
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X02 P?
U 1 1 55838585
P 2200 3400
F 0 "P?" H 2200 3550 50  0000 C CNN
F 1 "LAB_IN" V 2300 3400 50  0000 C CNN
F 2 "" H 2200 3400 60  0000 C CNN
F 3 "" H 2200 3400 60  0000 C CNN
	1    2200 3400
	-1   0    0    1   
$EndComp
Connection ~ 11900 2950
Wire Wire Line
	12150 2950 11900 2950
Connection ~ 11400 2650
Wire Wire Line
	11400 2800 11400 2650
Wire Wire Line
	12150 2800 11400 2800
Connection ~ 11900 2650
Wire Wire Line
	11900 2650 11900 3200
Wire Wire Line
	11800 2650 12150 2650
$Comp
L R R?
U 1 1 55BE1E65
P 11650 2650
F 0 "R?" V 11730 2650 50  0000 C CNN
F 1 "R" V 11650 2650 50  0000 C CNN
F 2 "" V 11580 2650 30  0000 C CNN
F 3 "" H 11650 2650 30  0000 C CNN
F 4 "1W, 1%" V 11550 2650 60  0000 C CNN "Note"
	1    11650 2650
	0    1    1    0   
$EndComp
Wire Wire Line
	11150 2650 11500 2650
Text HLabel 12150 2950 2    60   Output ~ 0
BB_VSENSE_BATT-
Text HLabel 12150 2800 2    60   Output ~ 0
BB_VSENSE_BATT+
Connection ~ 11900 1850
Wire Wire Line
	12150 1850 11900 1850
Connection ~ 11400 1550
Wire Wire Line
	11400 1700 11400 1550
Wire Wire Line
	12150 1700 11400 1700
Connection ~ 11900 1550
Wire Wire Line
	11900 1550 11900 2100
Wire Wire Line
	11800 1550 12150 1550
$Comp
L R R?
U 1 1 55BE4A9F
P 11650 1550
F 0 "R?" V 11730 1550 50  0000 C CNN
F 1 "R" V 11650 1550 50  0000 C CNN
F 2 "" V 11580 1550 30  0000 C CNN
F 3 "" H 11650 1550 30  0000 C CNN
F 4 "1W, 1%" V 11550 1550 60  0000 C CNN "Note"
	1    11650 1550
	0    1    1    0   
$EndComp
Wire Wire Line
	11150 1550 11500 1550
Text HLabel 12150 1850 2    60   Output ~ 0
BB_VSENSE_PV-
Text HLabel 12150 1700 2    60   Output ~ 0
BB_VSENSE_PV+
Text Notes 13900 2600 0    100  ~ 0
R_sense = 1/Imax**2\n1 A = 1 ohm\n3 A = 0.1 ohm\n5 A = 0.04 ohms\n10 A = 0.01 ohms
$Comp
L Q_NPN_BCE Q?
U 1 1 55C1857A
P 13700 5900
F 0 "Q?" H 14000 5950 50  0000 R CNN
F 1 "MMBT3904" H 14300 5850 50  0000 R CNN
F 2 "" H 13900 6000 29  0000 C CNN
F 3 "" H 13700 5900 60  0000 C CNN
	1    13700 5900
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 55C1A85C
P 13350 6200
F 0 "C?" H 13375 6300 50  0000 L CNN
F 1 "470p" H 13375 6100 50  0000 L CNN
F 2 "" H 13388 6050 30  0000 C CNN
F 3 "" H 13350 6200 60  0000 C CNN
	1    13350 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	13350 5550 13350 6050
Wire Wire Line
	13200 5900 13500 5900
Wire Wire Line
	13350 5550 13800 5550
Wire Wire Line
	13800 5550 13800 5700
Connection ~ 13350 5900
Wire Wire Line
	13800 6100 13800 6500
Wire Wire Line
	13800 6500 13350 6500
Wire Wire Line
	13350 6500 13350 6350
Text HLabel 13200 5900 0    60   Output ~ 0
BB_TEMP_BATT+
Wire Wire Line
	13950 6250 13800 6250
Connection ~ 13800 6250
Text HLabel 13950 6250 2    60   Output ~ 0
BB_TEMP_BATT-
Text Notes 14300 6700 2    60   ~ 0
Temperature Sensor, Main Battery
$EndSCHEMATC
