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
LIBS:Launch_Tower_Computer_III-cache
EELAYER 25 0
EELAYER END
$Descr B 17000 11000
encoding utf-8
Sheet 7 7
Title "LTC3 BeagleBone Black Cape Interface"
Date "30 may 2015"
Rev "1"
Comp "Portland State Aerospace Society <http://psas.pdx.edu/>"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L HEADER_2x23 U5
U 1 1 550524C5
P 2700 2300
F 0 "U5" H 2700 2200 50  0000 C CNN
F 1 "header P8" H 2700 3650 50  0000 C CNN
F 2 "" H 2900 2300 50  0001 C CNN
F 3 "" H 2900 2300 50  0001 C CNN
	1    2700 2300
	1    0    0    -1  
$EndComp
$Comp
L HEADER_2x23 U7
U 1 1 550524D4
P 7950 2300
F 0 "U7" H 7950 2200 50  0000 C CNN
F 1 "header P9" H 7950 3650 50  0000 C CNN
F 2 "" H 8150 2300 50  0001 C CNN
F 3 "" H 8150 2300 50  0001 C CNN
	1    7950 2300
	1    0    0    -1  
$EndComp
Text Label 15000 2150 0    50   ~ 0
I2C2_SCL
Text Label 15000 2300 0    50   ~ 0
I2C2_SDA
$Comp
L C C5
U 1 1 55052668
P 12750 2150
AR Path="/55052668" Ref="C5"  Part="1" 
AR Path="/55051BA8/55052668" Ref="C5"  Part="1" 
F 0 "C5" H 12750 2250 40  0000 L CNN
F 1 "0.1μ" H 12756 2065 40  0000 L CNN
F 2 "~" H 12788 2000 30  0000 C CNN
F 3 "~" H 12750 2150 60  0000 C CNN
	1    12750 2150
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 55052963
P 13200 1850
F 0 "R5" V 13280 1850 40  0000 C CNN
F 1 "5.6k" V 13207 1851 40  0000 C CNN
F 2 "~" V 13130 1850 30  0000 C CNN
F 3 "~" H 13200 1850 30  0000 C CNN
	1    13200 1850
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 55052990
P 15200 1750
F 0 "R6" V 15280 1750 40  0000 C CNN
F 1 "5.6k" V 15207 1751 40  0000 C CNN
F 2 "~" V 15130 1750 30  0000 C CNN
F 3 "~" H 15200 1750 30  0000 C CNN
	1    15200 1750
	1    0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 55052CA3
P 15400 1900
F 0 "R7" V 15480 1900 40  0000 C CNN
F 1 "5.6k" V 15407 1901 40  0000 C CNN
F 2 "~" V 15330 1900 30  0000 C CNN
F 3 "~" H 15400 1900 30  0000 C CNN
	1    15400 1900
	1    0    0    -1  
$EndComp
$Comp
L R R8
U 1 1 55052CB2
P 15600 2050
F 0 "R8" V 15680 2050 40  0000 C CNN
F 1 "5.6k" V 15607 2051 40  0000 C CNN
F 2 "~" V 15530 2050 30  0000 C CNN
F 3 "~" H 15600 2050 30  0000 C CNN
	1    15600 2050
	1    0    0    -1  
$EndComp
Text Label 6900 3000 0    60   ~ 0
I2C2_SCL
Text Label 6900 3100 0    60   ~ 0
I2C2_SDA
Text Label 6900 1200 0    60   ~ 0
GND
Text Label 6900 1400 0    60   ~ 0
DC_3.3V
Text Label 6900 1600 0    60   ~ 0
VDD_5V
Text Label 6900 1800 0    60   ~ 0
SYS_5V
Text Label 8850 3100 0    60   ~ 0
GND
Text Label 1650 1200 0    60   ~ 0
GND
Text HLabel 6900 1600 0    60   Input ~ 0
VCC_5V
$Comp
L LTC2991 U6
U 1 1 5505DFCE
P 10750 6750
F 0 "U6" H 10750 6650 50  0000 C CNN
F 1 "LTC2991" H 10750 6850 50  0000 C CNN
F 2 "" H 10750 6750 50  0001 C CNN
F 3 "" H 10750 6750 50  0001 C CNN
	1    10750 6750
	1    0    0    -1  
$EndComp
Text Notes 13800 3550 0    60   ~ 0
Cape EEPROM\nI2C addr 0x54
Text Notes 10000 7650 0    60   ~ 0
Voltage, Current & Temp Sensor, Sinks\nI2C addr 0x91
$Comp
L 24C256 U8
U 1 1 5505E066
P 14250 2150
F 0 "U8" H 14250 2100 50  0000 C CNN
F 1 "24C256" H 14250 2200 50  0000 C CNN
F 2 "~" H 14250 2450 50  0001 C CNN
F 3 "~" H 14250 1850 50  0001 C CNN
	1    14250 2150
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR12
U 1 1 5505E4DB
P 11650 6050
F 0 "#PWR12" H 11650 6150 30  0001 C CNN
F 1 "VDD" H 11650 6200 30  0000 C CNN
F 2 "" H 11650 6050 60  0000 C CNN
F 3 "" H 11650 6050 60  0000 C CNN
	1    11650 6050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR13
U 1 1 5505E52D
P 11650 7250
F 0 "#PWR13" H 11650 7250 30  0001 C CNN
F 1 "GND" H 11650 7180 30  0001 C CNN
F 2 "" H 11650 7250 60  0000 C CNN
F 3 "" H 11650 7250 60  0000 C CNN
	1    11650 7250
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 5505E60F
P 12100 6650
F 0 "R3" V 12180 6650 40  0000 C CNN
F 1 "5.6k" V 12107 6651 40  0000 C CNN
F 2 "~" V 12030 6650 30  0000 C CNN
F 3 "~" H 12100 6650 30  0000 C CNN
	1    12100 6650
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 5505E61E
P 12350 6650
F 0 "R4" V 12430 6650 40  0000 C CNN
F 1 "5.6k" V 12357 6651 40  0000 C CNN
F 2 "~" V 12280 6650 30  0000 C CNN
F 3 "~" H 12350 6650 30  0000 C CNN
	1    12350 6650
	1    0    0    -1  
$EndComp
Text Label 12650 7000 0    60   ~ 0
I2C2_SDA
Text Label 12650 6900 0    60   ~ 0
I2C2_SCL
$Comp
L GND #PWR11
U 1 1 5505EAAD
P 1650 1350
F 0 "#PWR11" H 1650 1350 30  0001 C CNN
F 1 "GND" H 1650 1280 30  0001 C CNN
F 2 "" H 1650 1350 60  0000 C CNN
F 3 "" H 1650 1350 60  0000 C CNN
	1    1650 1350
	1    0    0    -1  
$EndComp
Text Label 6900 2800 0    60   ~ 0
I2C1_SCL
Text Label 6900 2900 0    60   ~ 0
I2C1_SDA
Text Label 3750 1900 2    60   ~ 0
GPIO_10
Text Label 3750 2000 2    60   ~ 0
GPIO_11
Text Label 3750 2300 2    60   ~ 0
GPIO_8
Text Label 3750 2100 2    60   ~ 0
GPIO_9
Text HLabel 3750 2300 2    60   Output ~ 0
GPIO_EXT_TRIG_1
Text HLabel 3750 2100 2    60   Output ~ 0
GPIO_EXT_TRIG_2
Text HLabel 3750 1900 2    60   Output ~ 0
GPIO_EXT_TRIG_3
Text HLabel 3750 2000 2    60   Output ~ 0
GPIO_EXT_TRIG_4
Text HLabel 3750 2550 2    60   Output ~ 0
GPIO_EXT_PWR_1
Text HLabel 3750 2650 2    60   Output ~ 0
GPIO_EXT_PWR_2
Text HLabel 3750 2750 2    60   Output ~ 0
GPIO_EXT_PWR_3
Text HLabel 3750 2850 2    60   Output ~ 0
GPIO_EXT_PWR_4
Text Notes 5000 3600 2    60   ~ 0
TODO: connect these labels\nto BBB GPIO pins.
$Comp
L GND #PWR?
U 1 1 557C941A
P 14250 2900
F 0 "#PWR?" H 14250 2650 50  0001 C CNN
F 1 "GND" H 14250 2750 50  0000 C CNN
F 2 "" H 14250 2900 60  0000 C CNN
F 3 "" H 14250 2900 60  0000 C CNN
	1    14250 2900
	1    0    0    -1  
$EndComp
$Comp
L Jumper_NO_Small JP?
U 1 1 557CBDCC
P 15200 2650
F 0 "JP?" H 15200 2730 50  0000 C CNN
F 1 "WR_ENABLE" H 15210 2590 50  0000 C CNN
F 2 "" H 15200 2650 60  0000 C CNN
F 3 "" H 15200 2650 60  0000 C CNN
	1    15200 2650
	0    1    1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 557CCCE2
P 15200 2900
F 0 "#PWR?" H 15200 2650 50  0001 C CNN
F 1 "GND" H 15200 2750 50  0000 C CNN
F 2 "" H 15200 2900 60  0000 C CNN
F 3 "" H 15200 2900 60  0000 C CNN
	1    15200 2900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 557CCE7C
P 13350 2900
F 0 "#PWR?" H 13350 2650 50  0001 C CNN
F 1 "GND" H 13350 2750 50  0000 C CNN
F 2 "" H 13350 2900 60  0000 C CNN
F 3 "" H 13350 2900 60  0000 C CNN
	1    13350 2900
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR?
U 1 1 557CCEC0
P 13200 1400
F 0 "#PWR?" H 13200 1250 50  0001 C CNN
F 1 "VDD" H 13200 1550 50  0000 C CNN
F 2 "" H 13200 1400 60  0000 C CNN
F 3 "" H 13200 1400 60  0000 C CNN
	1    13200 1400
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR?
U 1 1 557CCF10
P 15400 1400
F 0 "#PWR?" H 15400 1250 50  0001 C CNN
F 1 "VDD" H 15400 1550 50  0000 C CNN
F 2 "" H 15400 1400 60  0000 C CNN
F 3 "" H 15400 1400 60  0000 C CNN
	1    15400 1400
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR?
U 1 1 557CCFD9
P 14250 1400
F 0 "#PWR?" H 14250 1250 50  0001 C CNN
F 1 "VDD" H 14250 1550 50  0000 C CNN
F 2 "" H 14250 1400 60  0000 C CNN
F 3 "" H 14250 1400 60  0000 C CNN
	1    14250 1400
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR?
U 1 1 557CE58D
P 12750 1400
F 0 "#PWR?" H 12750 1250 50  0001 C CNN
F 1 "VDD" H 12750 1550 50  0000 C CNN
F 2 "" H 12750 1400 60  0000 C CNN
F 3 "" H 12750 1400 60  0000 C CNN
	1    12750 1400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 557CE60A
P 12750 2900
F 0 "#PWR?" H 12750 2650 50  0001 C CNN
F 1 "GND" H 12750 2750 50  0000 C CNN
F 2 "" H 12750 2900 60  0000 C CNN
F 3 "" H 12750 2900 60  0000 C CNN
	1    12750 2900
	1    0    0    -1  
$EndComp
Text HLabel 9750 6400 0    60   Input ~ 0
BB_VSENSE_5V+
Text HLabel 9750 6500 0    60   Input ~ 0
BB_VSENSE_5V-
Text HLabel 9750 6600 0    60   Input ~ 0
BB_VSENSE_12V+
Text HLabel 9750 6700 0    60   Input ~ 0
BB_VSENSE_12V-
Text HLabel 9750 6800 0    60   Input ~ 0
BB_VSENSE_19V+
Text HLabel 9750 6900 0    60   Input ~ 0
BB_VSENSE_19V-
Text Notes 1100 6200 0    100  ~ 0
R_sense = 1/Imax**2\n1 A = 1 ohm\n3 A = 0.1 ohm\n5 A = 0.04 ohms\n10 A = 0.01 ohms
Text Notes 900  10000 0    100  ~ 0
From the Requirements doc...\nThe LTC must provide sensors\nto support the following:\n\n* Voltage on each power rail\n\n* Current consumption\n** PV panels\n** Main battery\n** Rocket shore power\n\n* Temperature\n** Main board\n** Main battery pack\n** Enclosure interior\n\n* Rocket-ready status\n\n* Umbilical connection state\n\n* Ignition fuse state\n
$Comp
L LTC2991 U?
U 1 1 55BA770A
P 5800 6750
F 0 "U?" H 5800 6650 50  0000 C CNN
F 1 "LTC2991" H 5800 6850 50  0000 C CNN
F 2 "" H 5800 6750 50  0001 C CNN
F 3 "" H 5800 6750 50  0001 C CNN
	1    5800 6750
	1    0    0    -1  
$EndComp
Text Notes 5050 7650 0    60   ~ 0
Voltage, Current & Temp Sensors, Sources\nI2C addr 0x90
$Comp
L VDD #PWR?
U 1 1 55BA7711
P 6700 6250
F 0 "#PWR?" H 6700 6350 30  0001 C CNN
F 1 "VDD" H 6700 6400 30  0000 C CNN
F 2 "" H 6700 6250 60  0000 C CNN
F 3 "" H 6700 6250 60  0000 C CNN
	1    6700 6250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 55BA7717
P 6700 7200
F 0 "#PWR?" H 6700 7200 30  0001 C CNN
F 1 "GND" H 6700 7130 30  0001 C CNN
F 2 "" H 6700 7200 60  0000 C CNN
F 3 "" H 6700 7200 60  0000 C CNN
	1    6700 7200
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 55BA771D
P 6900 6650
F 0 "R?" V 6980 6650 40  0000 C CNN
F 1 "5.6k" V 6907 6651 40  0000 C CNN
F 2 "~" V 6830 6650 30  0000 C CNN
F 3 "~" H 6900 6650 30  0000 C CNN
	1    6900 6650
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 55BA7723
P 7150 6650
F 0 "R?" V 7230 6650 40  0000 C CNN
F 1 "5.6k" V 7157 6651 40  0000 C CNN
F 2 "~" V 7080 6650 30  0000 C CNN
F 3 "~" H 7150 6650 30  0000 C CNN
	1    7150 6650
	1    0    0    -1  
$EndComp
Text Label 7450 7000 0    60   ~ 0
I2C2_SDA
Text Label 7450 6900 0    60   ~ 0
I2C2_SCL
Text HLabel 4800 6600 0    60   Input ~ 0
BB_VSENSE_BATT+
Text HLabel 4800 6700 0    60   Input ~ 0
BB_VSENSE_BATT-
Text HLabel 4800 6400 0    60   Input ~ 0
BB_VSENSE_PV+
Text HLabel 4800 6500 0    60   Input ~ 0
BB_VSENSE_PV-
$Comp
L R R?
U 1 1 55BDCE98
P 11850 6450
F 0 "R?" V 11930 6450 40  0000 C CNN
F 1 "5.6k" V 11857 6451 40  0000 C CNN
F 2 "~" V 11780 6450 30  0000 C CNN
F 3 "~" H 11850 6450 30  0000 C CNN
	1    11850 6450
	1    0    0    -1  
$EndComp
Text HLabel 3750 3050 2    60   Output ~ 0
VCC_5V_INHIB
Text HLabel 3750 3150 2    60   Output ~ 0
VCC_12V_INHIB
Text HLabel 3750 3250 2    60   Output ~ 0
VCC_19V_INHIB
Text HLabel 4750 7000 0    60   Input ~ 0
BB_TEMP_BATT+
Text HLabel 4750 7100 0    60   Input ~ 0
BB_TEMP_BATT-
$Comp
L C C?
U 1 1 55C1B1B3
P 8100 6700
F 0 "C?" H 8125 6800 50  0000 L CNN
F 1 "0.1μ" H 8125 6600 50  0000 L CNN
F 2 "" H 8138 6550 30  0000 C CNN
F 3 "" H 8100 6700 60  0000 C CNN
	1    8100 6700
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 55C1B7C8
P 13300 6700
F 0 "C?" H 13325 6800 50  0000 L CNN
F 1 "0.1μ" H 13325 6600 50  0000 L CNN
F 2 "" H 13338 6550 30  0000 C CNN
F 3 "" H 13300 6700 60  0000 C CNN
	1    13300 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 7000 4750 7000
Wire Wire Line
	4750 7100 5050 7100
Wire Wire Line
	6700 6500 6700 7200
Wire Wire Line
	12100 6800 12100 6900
Connection ~ 12350 6900
Wire Wire Line
	12350 6800 12350 6900
Connection ~ 11650 6200
Connection ~ 11850 6200
Wire Wire Line
	11850 6300 11850 6200
Connection ~ 11650 6600
Connection ~ 11650 7100
Wire Wire Line
	11650 6050 11650 6400
Wire Wire Line
	11650 6400 11500 6400
Wire Wire Line
	11500 7100 13300 7100
Wire Wire Line
	11650 6500 11650 7250
Connection ~ 6700 7100
Wire Wire Line
	6550 7100 8100 7100
Wire Wire Line
	11850 6700 11500 6700
Wire Wire Line
	11850 6600 11850 6700
Wire Wire Line
	5050 6500 4800 6500
Wire Wire Line
	4800 6400 5050 6400
Wire Wire Line
	4800 6700 5050 6700
Wire Wire Line
	4800 6600 5050 6600
Wire Wire Line
	10000 6900 9750 6900
Wire Wire Line
	9750 6800 10000 6800
Wire Wire Line
	10000 6700 9750 6700
Wire Wire Line
	9750 6600 10000 6600
Wire Wire Line
	10000 6500 9750 6500
Wire Wire Line
	9750 6400 10000 6400
Connection ~ 6700 6600
Connection ~ 6700 6700
Connection ~ 6900 6400
Wire Wire Line
	7150 6400 7150 6500
Connection ~ 6700 6400
Wire Wire Line
	6900 6400 6900 6500
Wire Wire Line
	7150 6800 7150 7000
Wire Wire Line
	6900 6800 6900 6900
Connection ~ 6900 6900
Wire Wire Line
	6700 6250 6700 6400
Wire Wire Line
	6550 6500 6700 6500
Wire Wire Line
	6550 6600 6700 6600
Wire Wire Line
	6550 6400 8100 6400
Connection ~ 7150 7000
Wire Wire Line
	6700 6700 6550 6700
Wire Wire Line
	6550 6900 7450 6900
Wire Wire Line
	6550 7000 7450 7000
Wire Notes Line
	12450 3300 12450 1000
Wire Notes Line
	15850 3300 12450 3300
Wire Notes Line
	15850 1000 15850 3300
Wire Notes Line
	12450 1000 15850 1000
Wire Wire Line
	12750 2300 12750 2900
Wire Wire Line
	12750 1400 12750 2000
Connection ~ 15200 2000
Connection ~ 15400 1550
Wire Wire Line
	15600 1550 15400 1550
Wire Wire Line
	15600 1900 15600 1550
Connection ~ 15400 1450
Wire Wire Line
	15200 1450 15400 1450
Wire Wire Line
	15200 1600 15200 1450
Wire Wire Line
	15400 1400 15400 1750
Wire Wire Line
	15600 2300 15600 2200
Wire Wire Line
	15000 2300 15600 2300
Wire Wire Line
	15400 2150 15400 2050
Wire Wire Line
	15000 2150 15400 2150
Wire Wire Line
	15200 1900 15200 2550
Wire Wire Line
	15000 2000 15200 2000
Wire Wire Line
	15200 2750 15200 2900
Wire Wire Line
	14250 2900 14250 2800
Wire Wire Line
	14250 1400 14250 1500
Wire Wire Line
	13200 1700 13200 1400
Wire Wire Line
	13200 2300 13500 2300
Wire Wire Line
	13200 2000 13200 2300
Connection ~ 13350 2150
Wire Wire Line
	13500 2150 13350 2150
Wire Wire Line
	13350 2000 13350 2900
Wire Wire Line
	13500 2000 13350 2000
Connection ~ 12100 6200
Wire Wire Line
	12350 6200 12350 6500
Wire Wire Line
	12100 6200 12100 6500
Connection ~ 12100 6900
Wire Wire Line
	7400 3000 6900 3000
Wire Wire Line
	7400 3100 6900 3100
Wire Wire Line
	6900 1200 7400 1200
Wire Wire Line
	7400 1300 7300 1300
Wire Wire Line
	7300 1300 7300 1200
Connection ~ 7300 1200
Wire Wire Line
	6900 1400 7400 1400
Wire Wire Line
	7400 1500 7300 1500
Wire Wire Line
	7300 1500 7300 1400
Connection ~ 7300 1400
Wire Wire Line
	6900 1600 7400 1600
Wire Wire Line
	7400 1700 7300 1700
Wire Wire Line
	7300 1700 7300 1600
Connection ~ 7300 1600
Wire Wire Line
	6900 1800 7400 1800
Wire Wire Line
	7400 1900 7300 1900
Wire Wire Line
	7300 1900 7300 1800
Connection ~ 7300 1800
Wire Wire Line
	8500 3200 8600 3200
Wire Wire Line
	8600 3100 8600 3400
Connection ~ 8600 3100
Wire Wire Line
	8600 3300 8500 3300
Connection ~ 8600 3200
Wire Wire Line
	8600 3400 8500 3400
Connection ~ 8600 3300
Wire Wire Line
	1650 1200 2150 1200
Wire Wire Line
	2150 1300 2050 1300
Wire Wire Line
	2050 1300 2050 1200
Connection ~ 2050 1200
Wire Wire Line
	11500 6500 11650 6500
Wire Wire Line
	11500 6600 11650 6600
Wire Wire Line
	11650 6200 13300 6200
Connection ~ 12350 7000
Wire Wire Line
	8500 3100 9000 3100
Wire Wire Line
	1650 1350 1650 1200
Wire Wire Line
	7400 2800 6900 2800
Wire Wire Line
	7400 2900 6900 2900
Wire Wire Line
	11500 6900 12650 6900
Wire Wire Line
	11500 7000 12650 7000
Wire Wire Line
	3250 1900 3750 1900
Wire Wire Line
	3250 2000 3750 2000
Wire Wire Line
	3250 2300 3750 2300
Wire Wire Line
	3250 2100 3750 2100
Wire Wire Line
	8100 6400 8100 6550
Connection ~ 7150 6400
Wire Wire Line
	8100 7100 8100 6850
Wire Wire Line
	13300 7100 13300 6850
Wire Wire Line
	13300 6200 13300 6550
Connection ~ 12350 6200
$EndSCHEMATC
