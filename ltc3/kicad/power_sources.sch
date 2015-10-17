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
LIBS:BeagleBone_Black
LIBS:LT8490
LIBS:LTC299x
LIBS:PMV45EN
LIBS:PTN78020n
LIBS:EEPROMs
LIBS:TLP
LIBS:bq77PL900
LIBS:Launch_Tower_Computer_III-cache
EELAYER 25 0
EELAYER END
$Descr B 17000 11000
encoding utf-8
Sheet 2 8
Title "LTC3 Power Sources (Solar, Lab, Battery)"
Date "2015-10-17"
Rev "A"
Comp "Portland State Aerospace Society <http://psas.pdx.edu/>"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 15150 2850 2    60   Output ~ 0
VCC_BATT
Wire Notes Line
	14400 5500 15750 5500
Wire Notes Line
	15750 5500 15750 6750
Wire Notes Line
	15750 6750 14400 6750
Wire Notes Line
	14400 6750 14400 5500
Text Notes 14550 5800 0    100  ~ 0
LiPo Batteries
$Comp
L CONN_01X02 P?
U 1 1 5583855E
P 1100 1300
F 0 "P?" H 1100 1450 50  0000 C CNN
F 1 "PV_IN" V 1200 1300 50  0000 C CNN
F 2 "" H 1100 1300 60  0000 C CNN
F 3 "" H 1100 1300 60  0000 C CNN
	1    1100 1300
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X02 P?
U 1 1 55838585
P 1100 1950
F 0 "P?" H 1100 2100 50  0000 C CNN
F 1 "LAB_IN" V 1200 1950 50  0000 C CNN
F 2 "" H 1100 1950 60  0000 C CNN
F 3 "" H 1100 1950 60  0000 C CNN
	1    1100 1950
	-1   0    0    1   
$EndComp
Connection ~ 14900 3150
Wire Wire Line
	15150 3150 14900 3150
Connection ~ 14400 2850
Wire Wire Line
	14400 3000 14400 2850
Wire Wire Line
	15150 3000 14400 3000
Connection ~ 14900 2850
Wire Wire Line
	14900 2850 14900 3400
Wire Wire Line
	14800 2850 15150 2850
$Comp
L R R?
U 1 1 55BE1E65
P 14650 2850
F 0 "R?" V 14730 2850 50  0000 C CNN
F 1 "R" V 14650 2850 50  0000 C CNN
F 2 "" V 14580 2850 30  0000 C CNN
F 3 "" H 14650 2850 30  0000 C CNN
F 4 "1W, 1%" V 14550 2850 60  0000 C CNN "Note"
	1    14650 2850
	0    1    1    0   
$EndComp
Wire Wire Line
	14150 2850 14500 2850
Text HLabel 15150 3150 2    60   Output ~ 0
BB_VSENSE_BATT-
Text HLabel 15150 3000 2    60   Output ~ 0
BB_VSENSE_BATT+
Connection ~ 14900 2050
Wire Wire Line
	15150 2050 14900 2050
Connection ~ 14400 1750
Wire Wire Line
	14400 1900 14400 1750
Wire Wire Line
	15150 1900 14400 1900
Connection ~ 14900 1750
Wire Wire Line
	14900 1750 14900 2300
Wire Wire Line
	14800 1750 15150 1750
$Comp
L R R?
U 1 1 55BE4A9F
P 14650 1750
F 0 "R?" V 14730 1750 50  0000 C CNN
F 1 "R" V 14650 1750 50  0000 C CNN
F 2 "" V 14580 1750 30  0000 C CNN
F 3 "" H 14650 1750 30  0000 C CNN
F 4 "1W, 1%" V 14550 1750 60  0000 C CNN "Note"
	1    14650 1750
	0    1    1    0   
$EndComp
Wire Wire Line
	14150 1750 14500 1750
Text HLabel 15150 2050 2    60   Output ~ 0
BB_VSENSE_PV-
Text HLabel 15150 1900 2    60   Output ~ 0
BB_VSENSE_PV+
Text Notes 14500 4700 0    100  ~ 0
R_sense = 1/Imax**2\n1 A = 1 ohm\n3 A = 0.1 ohm\n5 A = 0.04 ohms\n10 A = 0.01 ohms
$Comp
L Q_NPN_BCE Q?
U 1 1 55C1857A
P 15250 8050
F 0 "Q?" H 15550 8100 50  0000 R CNN
F 1 "MMBT3904" H 15850 8000 50  0000 R CNN
F 2 "" H 15450 8150 29  0000 C CNN
F 3 "" H 15250 8050 60  0000 C CNN
	1    15250 8050
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 55C1A85C
P 14900 8350
F 0 "C?" H 14925 8450 50  0000 L CNN
F 1 "470p" H 14925 8250 50  0000 L CNN
F 2 "" H 14938 8200 30  0000 C CNN
F 3 "" H 14900 8350 60  0000 C CNN
	1    14900 8350
	1    0    0    -1  
$EndComp
Wire Wire Line
	14900 7700 14900 8200
Wire Wire Line
	14750 8050 15050 8050
Wire Wire Line
	14900 7700 15350 7700
Wire Wire Line
	15350 7700 15350 7850
Connection ~ 14900 8050
Wire Wire Line
	15350 8250 15350 8650
Wire Wire Line
	15350 8650 14900 8650
Wire Wire Line
	14900 8650 14900 8500
Text HLabel 14750 8050 0    60   Output ~ 0
BB_TEMP_BATT+
Wire Wire Line
	15500 8400 15350 8400
Connection ~ 15350 8400
Text HLabel 15500 8400 2    60   Output ~ 0
BB_TEMP_BATT-
Text Notes 15850 8850 2    60   ~ 0
Temperature Sensor, Main Battery
$Comp
L LT8490 U?
U 1 1 560CC4C9
P 6500 5100
F 0 "U?" H 6500 5000 60  0000 C CNN
F 1 "LT8490" H 6500 5150 60  0000 C CNN
F 2 "" H 6550 5200 60  0000 C CNN
F 3 "" H 6550 5200 60  0000 C CNN
	1    6500 5100
	1    0    0    -1  
$EndComp
$Comp
L BQ77PL900 U?
U 1 1 560CC0A7
P 9900 5100
F 0 "U?" H 9900 5050 60  0000 C CNN
F 1 "BQ77PL900" H 9900 5150 60  0000 C CNN
F 2 "" H 9900 5100 60  0000 C CNN
F 3 "" H 9900 5100 60  0000 C CNN
	1    9900 5100
	1    0    0    -1  
$EndComp
$EndSCHEMATC
