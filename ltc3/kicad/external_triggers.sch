EESchema Schematic File Version 2
LIBS:Launch_Tower_Computer_III-rescue
LIBS:BeagleBone_Black
LIBS:LT8490
LIBS:LTC299x
LIBS:PMV45EN
LIBS:PTN78020n
LIBS:EEPROMs
LIBS:TLP
LIBS:bq77PL900
LIBS:current_shunt
LIBS:741g08
LIBS:4n35
LIBS:SNx52x0
LIBS:switches
LIBS:CD74HC14
LIBS:power_nodes
LIBS:relay_1c
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
LIBS:SUM110P08-11
LIBS:NDS9407
LIBS:PI2127
LIBS:battery_single_cell
LIBS:breakers
EELAYER 25 0
EELAYER END
$Descr B 17000 11000
encoding utf-8
Sheet 8 8
Title "LTC3 External Device Triggers"
Date "2016-03-11"
Rev "A"
Comp "Portland State Aerospace Society <http://psas.pdx.edu/>"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L R R803
U 1 1 56E098D6
P 1650 3750
F 0 "R803" V 1730 3750 40  0000 C CNN
F 1 "10k" V 1657 3751 40  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 1580 3750 30  0001 C CNN
F 3 "~" H 1650 3750 30  0000 C CNN
	1    1650 3750
	1    0    0    -1  
$EndComp
Text HLabel 1500 3450 0    60   Input ~ 0
EXT_TRIG_EN_1
$Comp
L GND #PWR0174
U 1 1 56E098DE
P 1650 4100
F 0 "#PWR0174" H 1650 4100 30  0001 C CNN
F 1 "GND" H 1650 4030 30  0001 C CNN
F 2 "" H 1650 4100 60  0000 C CNN
F 3 "" H 1650 4100 60  0000 C CNN
	1    1650 4100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0175
U 1 1 56E098F2
P 3550 3600
F 0 "#PWR0175" H 3550 3600 30  0001 C CNN
F 1 "GND" H 3550 3530 30  0001 C CNN
F 2 "" H 3550 3600 60  0000 C CNN
F 3 "" H 3550 3600 60  0000 C CNN
	1    3550 3600
	1    0    0    -1  
$EndComp
$Comp
L R R801
U 1 1 56E098F8
P 2450 2550
F 0 "R801" V 2530 2550 40  0000 C CNN
F 1 "270" V 2457 2551 40  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 2380 2550 30  0001 C CNN
F 3 "~" H 2450 2550 30  0000 C CNN
	1    2450 2550
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P803
U 1 1 56E098FF
P 3750 3350
F 0 "P803" H 3750 3500 50  0000 C CNN
F 1 "CONN_EXT_PWR_1" V 3950 3350 50  0000 C CNN
F 2 "Valves:VALVE-OCTAL" H 3750 3350 60  0001 C CNN
F 3 "" H 3750 3350 60  0000 C CNN
	1    3750 3350
	1    0    0    -1  
$EndComp
$Comp
L PMV45EN Q801
U 1 1 56E09906
P 2000 3400
F 0 "Q801" H 1750 3600 50  0000 L CNN
F 1 "PMV45EN" H 1600 3500 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 2200 3325 50  0001 L CIN
F 3 "" H 2000 3400 50  0000 L CNN
	1    2000 3400
	1    0    0    -1  
$EndComp
$Comp
L TLP3542 IC801
U 1 1 56E0990D
P 2950 3000
F 0 "IC801" H 2740 3230 40  0000 C CNN
F 1 "TLP3542" H 3090 2860 40  0000 C CNN
F 2 "Housings_DIP:DIP-6_W7.62mm" H 2740 2870 30  0001 C CIN
F 3 "" H 2950 3050 60  0000 C CNN
	1    2950 3000
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR0176
U 1 1 56E09914
P 2450 2200
F 0 "#PWR0176" H 2450 2050 50  0001 C CNN
F 1 "+5V" H 2450 2340 50  0000 C CNN
F 2 "" H 2450 2200 60  0000 C CNN
F 3 "" H 2450 2200 60  0000 C CNN
	1    2450 2200
	1    0    0    -1  
$EndComp
$Comp
L R R804
U 1 1 56E0991A
P 6850 3750
F 0 "R804" V 6930 3750 40  0000 C CNN
F 1 "10k" V 6857 3751 40  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 6780 3750 30  0001 C CNN
F 3 "~" H 6850 3750 30  0000 C CNN
	1    6850 3750
	1    0    0    -1  
$EndComp
Text HLabel 6700 3450 0    60   Input ~ 0
EXT_TRIG_EN_2
$Comp
L GND #PWR0177
U 1 1 56E09922
P 6850 4100
F 0 "#PWR0177" H 6850 4100 30  0001 C CNN
F 1 "GND" H 6850 4030 30  0001 C CNN
F 2 "" H 6850 4100 60  0000 C CNN
F 3 "" H 6850 4100 60  0000 C CNN
	1    6850 4100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0178
U 1 1 56E09936
P 8750 3600
F 0 "#PWR0178" H 8750 3600 30  0001 C CNN
F 1 "GND" H 8750 3530 30  0001 C CNN
F 2 "" H 8750 3600 60  0000 C CNN
F 3 "" H 8750 3600 60  0000 C CNN
	1    8750 3600
	1    0    0    -1  
$EndComp
$Comp
L R R802
U 1 1 56E0993C
P 7650 2550
F 0 "R802" V 7730 2550 40  0000 C CNN
F 1 "270" V 7657 2551 40  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 7580 2550 30  0001 C CNN
F 3 "~" H 7650 2550 30  0000 C CNN
	1    7650 2550
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P804
U 1 1 56E09943
P 8950 3350
F 0 "P804" H 8950 3500 50  0000 C CNN
F 1 "CONN_EXT_PWR_2" V 9150 3350 50  0000 C CNN
F 2 "Valves:VALVE-OCTAL" H 8950 3350 60  0001 C CNN
F 3 "" H 8950 3350 60  0000 C CNN
	1    8950 3350
	1    0    0    -1  
$EndComp
$Comp
L PMV45EN Q802
U 1 1 56E0994A
P 7200 3400
F 0 "Q802" H 6950 3600 50  0000 L CNN
F 1 "PMV45EN" H 6800 3500 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 7400 3325 50  0001 L CIN
F 3 "" H 7200 3400 50  0000 L CNN
	1    7200 3400
	1    0    0    -1  
$EndComp
$Comp
L TLP3542 IC802
U 1 1 56E09951
P 8150 3000
F 0 "IC802" H 7940 3230 40  0000 C CNN
F 1 "TLP3542" H 8290 2860 40  0000 C CNN
F 2 "Housings_DIP:DIP-6_W7.62mm" H 7940 2870 30  0001 C CIN
F 3 "" H 8150 3050 60  0000 C CNN
	1    8150 3000
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR0179
U 1 1 56E09958
P 7650 2200
F 0 "#PWR0179" H 7650 2050 50  0001 C CNN
F 1 "+5V" H 7650 2340 50  0000 C CNN
F 2 "" H 7650 2200 60  0000 C CNN
F 3 "" H 7650 2200 60  0000 C CNN
	1    7650 2200
	1    0    0    -1  
$EndComp
$Comp
L R R807
U 1 1 56E09964
P 1650 8600
F 0 "R807" V 1730 8600 40  0000 C CNN
F 1 "10k" V 1657 8601 40  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 1580 8600 30  0001 C CNN
F 3 "~" H 1650 8600 30  0000 C CNN
	1    1650 8600
	1    0    0    -1  
$EndComp
Text HLabel 1500 8300 0    60   Input ~ 0
EXT_TRIG_EN_3
$Comp
L GND #PWR0180
U 1 1 56E0996C
P 1650 8950
F 0 "#PWR0180" H 1650 8950 30  0001 C CNN
F 1 "GND" H 1650 8880 30  0001 C CNN
F 2 "" H 1650 8950 60  0000 C CNN
F 3 "" H 1650 8950 60  0000 C CNN
	1    1650 8950
	1    0    0    -1  
$EndComp
$Comp
L R R805
U 1 1 56E09980
P 2450 7400
F 0 "R805" V 2530 7400 40  0000 C CNN
F 1 "270" V 2457 7401 40  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 2380 7400 30  0001 C CNN
F 3 "~" H 2450 7400 30  0000 C CNN
	1    2450 7400
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P807
U 1 1 56E09987
P 4000 8200
F 0 "P807" H 4000 8350 50  0000 C CNN
F 1 "CONN_EXT_PWR_3" V 4200 8200 50  0000 C CNN
F 2 "Valves:VALVE-OCTAL" H 4000 8200 60  0001 C CNN
F 3 "" H 4000 8200 60  0000 C CNN
	1    4000 8200
	1    0    0    -1  
$EndComp
$Comp
L PMV45EN Q803
U 1 1 56E0998E
P 2000 8250
F 0 "Q803" H 1750 8450 50  0000 L CNN
F 1 "PMV45EN" H 1600 8350 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 2200 8175 50  0001 L CIN
F 3 "" H 2000 8250 50  0000 L CNN
	1    2000 8250
	1    0    0    -1  
$EndComp
$Comp
L TLP3542 IC803
U 1 1 56E09995
P 2950 7850
F 0 "IC803" H 2740 8080 40  0000 C CNN
F 1 "TLP3542" H 3090 7710 40  0000 C CNN
F 2 "Housings_DIP:DIP-6_W7.62mm" H 2740 7720 30  0001 C CIN
F 3 "" H 2950 7900 60  0000 C CNN
	1    2950 7850
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR0181
U 1 1 56E0999C
P 2450 7050
F 0 "#PWR0181" H 2450 6900 50  0001 C CNN
F 1 "+5V" H 2450 7190 50  0000 C CNN
F 2 "" H 2450 7050 60  0000 C CNN
F 3 "" H 2450 7050 60  0000 C CNN
	1    2450 7050
	1    0    0    -1  
$EndComp
$Comp
L R R808
U 1 1 56E099A2
P 6850 8600
F 0 "R808" V 6930 8600 40  0000 C CNN
F 1 "10k" V 6857 8601 40  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 6780 8600 30  0001 C CNN
F 3 "~" H 6850 8600 30  0000 C CNN
	1    6850 8600
	1    0    0    -1  
$EndComp
Text HLabel 6700 8300 0    60   Input ~ 0
EXT_TRIG_EN_4
$Comp
L GND #PWR0182
U 1 1 56E099AA
P 6850 8950
F 0 "#PWR0182" H 6850 8950 30  0001 C CNN
F 1 "GND" H 6850 8880 30  0001 C CNN
F 2 "" H 6850 8950 60  0000 C CNN
F 3 "" H 6850 8950 60  0000 C CNN
	1    6850 8950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0183
U 1 1 56E099BE
P 9000 8450
F 0 "#PWR0183" H 9000 8450 30  0001 C CNN
F 1 "GND" H 9000 8380 30  0001 C CNN
F 2 "" H 9000 8450 60  0000 C CNN
F 3 "" H 9000 8450 60  0000 C CNN
	1    9000 8450
	1    0    0    -1  
$EndComp
$Comp
L R R806
U 1 1 56E099C4
P 7650 7400
F 0 "R806" V 7730 7400 40  0000 C CNN
F 1 "270" V 7657 7401 40  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 7580 7400 30  0001 C CNN
F 3 "~" H 7650 7400 30  0000 C CNN
	1    7650 7400
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P808
U 1 1 56E099CB
P 9200 8200
F 0 "P808" H 9200 8350 50  0000 C CNN
F 1 "CONN_EXT_PWR_4" V 9400 8200 50  0000 C CNN
F 2 "Valves:VALVE-OCTAL" H 9200 8200 60  0001 C CNN
F 3 "" H 9200 8200 60  0000 C CNN
	1    9200 8200
	1    0    0    -1  
$EndComp
$Comp
L PMV45EN Q804
U 1 1 56E099D2
P 7200 8250
F 0 "Q804" H 6950 8450 50  0000 L CNN
F 1 "PMV45EN" H 6800 8350 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 7400 8175 50  0001 L CIN
F 3 "" H 7200 8250 50  0000 L CNN
	1    7200 8250
	1    0    0    -1  
$EndComp
$Comp
L TLP3542 IC804
U 1 1 56E099D9
P 8150 7850
F 0 "IC804" H 7940 8080 40  0000 C CNN
F 1 "TLP3542" H 8290 7710 40  0000 C CNN
F 2 "Housings_DIP:DIP-6_W7.62mm" H 7940 7720 30  0001 C CIN
F 3 "" H 8150 7900 60  0000 C CNN
	1    8150 7850
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR0184
U 1 1 56E099E0
P 7650 7050
F 0 "#PWR0184" H 7650 6900 50  0001 C CNN
F 1 "+5V" H 7650 7190 50  0000 C CNN
F 2 "" H 7650 7050 60  0000 C CNN
F 3 "" H 7650 7050 60  0000 C CNN
	1    7650 7050
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X08 P805
U 1 1 56E099E6
P 12250 6450
F 0 "P805" H 12250 6950 50  0000 L CNN
F 1 "CONN_01X08" V 12400 6250 50  0000 L CNN
F 2 "Valves:VALVE-OCTAL" H 12250 6450 50  0001 C CNN
F 3 "" H 12250 6450 50  0000 C CNN
	1    12250 6450
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X08 P806
U 1 1 56E099ED
P 13000 6450
F 0 "P806" H 13000 6950 50  0000 L CNN
F 1 "CONN_01X08" V 13150 6250 50  0000 L CNN
F 2 "Valves:VALVE-OCTAL" H 13000 6450 50  0001 C CNN
F 3 "" H 13000 6450 50  0000 C CNN
	1    13000 6450
	-1   0    0    -1  
$EndComp
$Comp
L BREAKER_1P M801
U 1 1 56E09A02
P 13950 7100
F 0 "M801" H 13950 7225 50  0000 C CNN
F 1 "W28-XQ1A-0.25" H 13950 7025 50  0000 C CNN
F 2 "Oddities:Dummy_Empty" H 13950 7100 50  0001 C CNN
F 3 "" H 13950 7100 50  0000 C CNN
	1    13950 7100
	0    -1   1    0   
$EndComp
Text Notes 12700 8100 0    80   ~ 0
Circuit Breakers, 250mA x 4, Front Panel
Text Notes 12700 3900 0    80   ~ 0
Manual Override Switches, Front Panel
$Comp
L GND #PWR0185
U 1 1 56E09A12
P 11800 2800
F 0 "#PWR0185" H 11800 2550 50  0001 C CNN
F 1 "GND" H 11808 2626 50  0001 C CNN
F 2 "" H 11800 2800 50  0000 C CNN
F 3 "" H 11800 2800 50  0000 C CNN
	1    11800 2800
	1    0    0    -1  
$EndComp
$Comp
L SP3T SW801
U 1 1 56E09A18
P 13750 2800
F 0 "SW801" V 13704 2648 50  0000 R CNN
F 1 "SP3T" V 13796 2648 50  0000 R CNN
F 2 "Oddities:Dummy_Empty" H 13125 2975 50  0001 C CNN
F 3 "" H 13125 2975 50  0000 C CNN
	1    13750 2800
	0    -1   1    0   
$EndComp
$Comp
L CONN_01X10 P801
U 1 1 56E09A1F
P 12250 2100
F 0 "P801" H 12250 2650 50  0000 L CNN
F 1 "CONN_01X10" V 12400 1600 50  0000 L CNN
F 2 "Valves:VALVE-OCTAL" H 12250 2100 50  0001 C CNN
F 3 "" H 12250 2100 50  0000 C CNN
	1    12250 2100
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X10 P802
U 1 1 56E09A26
P 13000 2100
F 0 "P802" H 13000 2650 50  0000 L CNN
F 1 "CONN_01X10" V 13150 1600 50  0000 L CNN
F 2 "Valves:VALVE-OCTAL" H 13000 2100 50  0001 C CNN
F 3 "" H 13000 2100 50  0000 C CNN
	1    13000 2100
	-1   0    0    -1  
$EndComp
$Comp
L SP3T SW802
U 1 1 56E09A2D
P 14400 2800
F 0 "SW802" V 14446 2648 50  0000 R CNN
F 1 "SP3T" V 14354 2648 50  0000 R CNN
F 2 "Oddities:Dummy_Empty" H 13775 2975 50  0001 C CNN
F 3 "" H 13775 2975 50  0000 C CNN
	1    14400 2800
	0    -1   1    0   
$EndComp
$Comp
L SP3T SW803
U 1 1 56E09A34
P 15050 2800
F 0 "SW803" V 15096 2648 50  0000 R CNN
F 1 "SP3T" V 15004 2648 50  0000 R CNN
F 2 "Oddities:Dummy_Empty" H 14425 2975 50  0001 C CNN
F 3 "" H 14425 2975 50  0000 C CNN
	1    15050 2800
	0    -1   1    0   
$EndComp
$Comp
L SP3T SW804
U 1 1 56E09A3B
P 15700 2800
F 0 "SW804" V 15746 2648 50  0000 R CNN
F 1 "SP3T" V 15654 2648 50  0000 R CNN
F 2 "Oddities:Dummy_Empty" H 15075 2975 50  0001 C CNN
F 3 "" H 15075 2975 50  0000 C CNN
	1    15700 2800
	0    -1   1    0   
$EndComp
Connection ~ 1650 4000
Wire Wire Line
	1650 4000 2100 4000
Wire Wire Line
	2100 4000 2100 3600
Wire Wire Line
	1650 3900 1650 4100
Wire Wire Line
	3550 3050 3550 3300
Wire Wire Line
	3550 3400 3550 3600
Wire Wire Line
	2250 3050 2600 3050
Wire Wire Line
	2450 2850 2600 2850
Wire Wire Line
	2450 2700 2450 2850
Wire Wire Line
	1650 3600 1650 3450
Wire Wire Line
	2450 2200 2450 2400
Wire Wire Line
	1500 3450 1800 3450
Connection ~ 1650 3450
Connection ~ 6850 4000
Wire Wire Line
	6850 4000 7300 4000
Wire Wire Line
	7300 4000 7300 3600
Wire Wire Line
	6850 3900 6850 4100
Wire Wire Line
	8750 3050 8750 3300
Wire Wire Line
	8750 3400 8750 3600
Wire Wire Line
	7450 3050 7800 3050
Wire Wire Line
	7650 2850 7800 2850
Wire Wire Line
	7650 2700 7650 2850
Wire Wire Line
	6850 3600 6850 3450
Wire Wire Line
	7650 2200 7650 2400
Wire Wire Line
	6700 3450 7000 3450
Connection ~ 6850 3450
Connection ~ 1650 8850
Wire Wire Line
	1650 8850 2100 8850
Wire Wire Line
	2100 8850 2100 8450
Wire Wire Line
	1650 8750 1650 8950
Wire Wire Line
	3800 7900 3800 8150
Wire Wire Line
	3800 8250 3800 8450
Wire Wire Line
	2100 4600 2100 8050
Wire Wire Line
	2450 7700 2600 7700
Wire Wire Line
	2450 7550 2450 7700
Wire Wire Line
	1650 8450 1650 8300
Wire Wire Line
	2450 7050 2450 7250
Wire Wire Line
	1500 8300 1800 8300
Connection ~ 1650 8300
Connection ~ 6850 8850
Wire Wire Line
	6850 8850 7300 8850
Wire Wire Line
	7300 8850 7300 8450
Wire Wire Line
	6850 8750 6850 8950
Wire Wire Line
	9000 7900 9000 8150
Wire Wire Line
	9000 8250 9000 8450
Wire Wire Line
	7300 4900 7300 8050
Wire Wire Line
	8500 7900 9000 7900
Wire Wire Line
	7650 7700 7800 7700
Wire Wire Line
	7650 7550 7650 7700
Wire Wire Line
	6850 8450 6850 8300
Wire Wire Line
	7650 7050 7650 7250
Wire Wire Line
	6700 8300 7000 8300
Connection ~ 6850 8300
Wire Wire Line
	9500 6300 12050 6300
Wire Wire Line
	4550 6500 12050 6500
Wire Wire Line
	9750 6700 12050 6700
Wire Wire Line
	13200 6100 13950 6100
Wire Wire Line
	13950 6100 13950 6850
Wire Wire Line
	13200 6300 14350 6300
Wire Wire Line
	14350 6300 14350 6850
Wire Wire Line
	13200 6500 14750 6500
Wire Wire Line
	14750 6500 14750 6850
Wire Wire Line
	13200 6700 15150 6700
Wire Wire Line
	15150 6700 15150 6850
Wire Wire Line
	13200 6200 13750 6200
Wire Wire Line
	13750 6200 13750 7500
Wire Wire Line
	13750 7500 13950 7500
Wire Wire Line
	13950 7500 13950 7350
Wire Wire Line
	13200 6400 13650 6400
Wire Wire Line
	13650 6400 13650 7600
Wire Wire Line
	13650 7600 14350 7600
Wire Wire Line
	14350 7600 14350 7350
Wire Wire Line
	13200 6600 13550 6600
Wire Wire Line
	13550 6600 13550 7700
Wire Wire Line
	13550 7700 14750 7700
Wire Wire Line
	14750 7700 14750 7350
Wire Wire Line
	13200 6800 13450 6800
Wire Wire Line
	13450 6800 13450 7800
Wire Wire Line
	13450 7800 15150 7800
Wire Wire Line
	15150 7800 15150 7350
Wire Notes Line
	12700 5750 15500 5750
Wire Notes Line
	15500 5750 15500 7950
Wire Notes Line
	15500 7950 12700 7950
Wire Notes Line
	12700 7950 12700 5750
Wire Notes Line
	12700 1400 16200 1400
Wire Notes Line
	16200 1400 16200 3750
Wire Notes Line
	16200 3750 12700 3750
Wire Notes Line
	12700 3750 12700 1400
Wire Wire Line
	11800 2450 11800 2800
Wire Wire Line
	11800 2550 12050 2550
Wire Wire Line
	2100 4600 11300 4600
Wire Wire Line
	11300 4600 11300 2050
Wire Wire Line
	11500 4900 11500 2250
Connection ~ 11800 2550
Wire Wire Line
	11800 2450 12050 2450
Wire Wire Line
	13750 2500 13750 1650
Wire Wire Line
	13750 1650 13200 1650
Wire Wire Line
	14400 2500 14400 1850
Wire Wire Line
	14400 1850 13200 1850
Wire Wire Line
	15050 2500 15050 2050
Wire Wire Line
	15050 2050 13200 2050
Wire Wire Line
	15700 2500 15700 2250
Wire Wire Line
	15700 2250 13200 2250
Wire Wire Line
	13650 3100 13650 3250
Wire Wire Line
	13650 3250 13500 3250
Wire Wire Line
	13500 3250 13500 1750
Wire Wire Line
	13500 1750 13200 1750
Wire Wire Line
	14150 1950 14150 3250
Wire Wire Line
	14150 1950 13200 1950
Wire Wire Line
	14150 3250 14300 3250
Wire Wire Line
	14300 3250 14300 3100
Wire Wire Line
	14950 3100 14950 3250
Wire Wire Line
	14950 3250 14800 3250
Wire Wire Line
	14800 3250 14800 2150
Wire Wire Line
	14800 2150 13200 2150
Wire Wire Line
	15600 3100 15600 3250
Wire Wire Line
	15600 3250 15450 3250
Wire Wire Line
	15450 3250 15450 2350
Wire Wire Line
	15450 2350 13200 2350
Wire Wire Line
	13850 3100 13850 3400
Wire Wire Line
	13350 3400 15800 3400
Wire Wire Line
	13350 2450 13350 3400
Wire Wire Line
	13350 2550 13200 2550
Wire Wire Line
	13350 2450 13200 2450
Connection ~ 13350 2550
Wire Wire Line
	14500 3400 14500 3100
Connection ~ 13850 3400
Wire Wire Line
	15150 3400 15150 3100
Connection ~ 14500 3400
Wire Wire Line
	15800 3400 15800 3100
Connection ~ 15150 3400
Text Notes 12700 4150 0    60   Italic 0
Toggle each optoisolator's LED between the FET, disconnected,\nor ground.  Use SP3T or SPDT w/ center-NC feature.
Wire Wire Line
	7450 1950 7450 3050
Wire Wire Line
	7300 1850 7300 3200
Wire Wire Line
	2250 1750 2250 3050
Wire Wire Line
	2100 3200 2100 1650
Wire Wire Line
	2100 1650 12050 1650
Wire Wire Line
	12050 1750 2250 1750
Wire Wire Line
	7450 1950 12050 1950
Wire Wire Line
	12050 1850 7300 1850
Text Label 11900 1850 2    50   ~ 0
EXT_TRIG_2_FET_D
Text Label 11900 1950 2    50   ~ 0
EXT_TRIG_2_LED_CATH
Text Label 11900 1650 2    50   ~ 0
EXT_TRIG_1_FET_D
Text Label 11900 1750 2    50   ~ 0
EXT_TRIG_1_LED_CATH
Wire Wire Line
	2600 7900 2250 7900
Wire Wire Line
	2250 7900 2250 4700
Wire Wire Line
	7800 7900 7450 7900
Wire Wire Line
	7450 7900 7450 5000
Wire Wire Line
	7450 5000 11600 5000
Text Label 11900 2050 2    50   ~ 0
EXT_TRIG_3_FET_D
Text Label 11900 2150 2    50   ~ 0
EXT_TRIG_3_LED_CATH
Text Label 11900 2250 2    50   ~ 0
EXT_TRIG_4_FET_D
Text Label 11900 2350 2    50   ~ 0
EXT_TRIG_4_LED_CATH
Wire Wire Line
	11300 2050 12050 2050
Wire Wire Line
	11600 5000 11600 2350
Wire Wire Line
	12050 2150 11400 2150
Wire Wire Line
	11400 2150 11400 4700
Wire Wire Line
	11600 2350 12050 2350
Wire Wire Line
	11500 2250 12050 2250
Text Label 11650 6200 2    50   ~ 0
EXT_TRIG_1_OPTO_RELAY_P
Text Label 11650 6400 2    50   ~ 0
EXT_TRIG_2_OPTO_RELAY_P
Text Label 11650 6600 2    50   ~ 0
EXT_TRIG_3_OPTO_RELAY_P
Text Label 11650 6800 2    50   ~ 0
EXT_TRIG_4_OPTO_RELAY_P
Wire Wire Line
	11500 4900 7300 4900
Wire Wire Line
	11400 4700 2250 4700
$Comp
L BREAKER_1P M802
U 1 1 56E253A3
P 14350 7100
F 0 "M802" H 14350 7225 50  0000 C CNN
F 1 "W28-XQ1A-0.25" H 14350 7025 50  0000 C CNN
F 2 "Oddities:Dummy_Empty" H 14350 7100 50  0001 C CNN
F 3 "" H 14350 7100 50  0000 C CNN
	1    14350 7100
	0    -1   1    0   
$EndComp
$Comp
L BREAKER_1P M803
U 1 1 56E25491
P 14750 7100
F 0 "M803" H 14750 7225 50  0000 C CNN
F 1 "W28-XQ1A-0.25" H 14750 7025 50  0000 C CNN
F 2 "Oddities:Dummy_Empty" H 14750 7100 50  0001 C CNN
F 3 "" H 14750 7100 50  0000 C CNN
	1    14750 7100
	0    -1   1    0   
$EndComp
$Comp
L BREAKER_1P M804
U 1 1 56E25582
P 15150 7100
F 0 "M804" H 15150 7225 50  0000 C CNN
F 1 "W28-XQ1A-0.25" H 15150 7025 50  0000 C CNN
F 2 "Oddities:Dummy_Empty" H 15150 7100 50  0001 C CNN
F 3 "" H 15150 7100 50  0000 C CNN
	1    15150 7100
	0    -1   1    0   
$EndComp
$Comp
L GND #PWR0186
U 1 1 56E38916
P 3800 8450
F 0 "#PWR0186" H 3800 8200 50  0001 C CNN
F 1 "GND" H 3808 8276 50  0001 C CNN
F 2 "" H 3800 8450 50  0000 C CNN
F 3 "" H 3800 8450 50  0000 C CNN
	1    3800 8450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 7900 3800 7900
Wire Wire Line
	3300 3050 3550 3050
Wire Wire Line
	8500 3050 8750 3050
$Comp
L JUMPER3 JP801
U 1 1 56E49258
P 4650 2850
F 0 "JP801" H 4700 2750 40  0000 L CNN
F 1 "Trigger Level" H 4650 2950 40  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 4650 2850 60  0001 C CNN
F 3 "~" H 4650 2850 60  0000 C CNN
	1    4650 2850
	0    1    1    0   
$EndComp
$Comp
L GND #PWR0187
U 1 1 56E4925E
P 4650 3350
F 0 "#PWR0187" H 4650 3350 30  0001 C CNN
F 1 "GND" H 4650 3280 30  0001 C CNN
F 2 "" H 4650 3350 60  0000 C CNN
F 3 "" H 4650 3350 60  0000 C CNN
	1    4650 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 3350 4650 3100
Wire Wire Line
	4650 2350 4650 2600
$Comp
L JUMPER3 JP802
U 1 1 56E59F3B
P 9850 2850
F 0 "JP802" H 9900 2750 40  0000 L CNN
F 1 "Trigger Level" H 9850 2950 40  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 9850 2850 60  0001 C CNN
F 3 "~" H 9850 2850 60  0000 C CNN
	1    9850 2850
	0    1    1    0   
$EndComp
$Comp
L GND #PWR0188
U 1 1 56E59F41
P 9850 3350
F 0 "#PWR0188" H 9850 3350 30  0001 C CNN
F 1 "GND" H 9850 3280 30  0001 C CNN
F 2 "" H 9850 3350 60  0000 C CNN
F 3 "" H 9850 3350 60  0000 C CNN
	1    9850 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 3350 9850 3100
Wire Wire Line
	9850 2350 9850 2600
$Comp
L JUMPER3 JP803
U 1 1 56E5B102
P 4900 7700
F 0 "JP803" H 4950 7600 40  0000 L CNN
F 1 "Trigger Level" H 4900 7800 40  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 4900 7700 60  0001 C CNN
F 3 "~" H 4900 7700 60  0000 C CNN
	1    4900 7700
	0    1    1    0   
$EndComp
$Comp
L GND #PWR0189
U 1 1 56E5B108
P 4900 8200
F 0 "#PWR0189" H 4900 8200 30  0001 C CNN
F 1 "GND" H 4900 8130 30  0001 C CNN
F 2 "" H 4900 8200 60  0000 C CNN
F 3 "" H 4900 8200 60  0000 C CNN
	1    4900 8200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 8200 4900 7950
$Comp
L JUMPER3 JP804
U 1 1 56E5BBEA
P 10100 7700
F 0 "JP804" H 10150 7600 40  0000 L CNN
F 1 "Trigger Level" H 10100 7800 40  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 10100 7700 60  0001 C CNN
F 3 "~" H 10100 7700 60  0000 C CNN
	1    10100 7700
	0    1    1    0   
$EndComp
$Comp
L GND #PWR0190
U 1 1 56E5BBF0
P 10100 8200
F 0 "#PWR0190" H 10100 8200 30  0001 C CNN
F 1 "GND" H 10100 8130 30  0001 C CNN
F 2 "" H 10100 8200 60  0000 C CNN
F 3 "" H 10100 8200 60  0000 C CNN
	1    10100 8200
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 8200 10100 7950
$Comp
L +5V #PWR0191
U 1 1 56E5FD25
P 9850 2350
F 0 "#PWR0191" H 9850 2200 50  0001 C CNN
F 1 "+5V" H 9868 2524 50  0000 C CNN
F 2 "" H 9850 2350 50  0000 C CNN
F 3 "" H 9850 2350 50  0000 C CNN
	1    9850 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 2850 9400 2850
Wire Wire Line
	9400 2850 9400 6400
Wire Wire Line
	9750 2850 9500 2850
Wire Wire Line
	9500 2850 9500 6300
Wire Wire Line
	9400 6400 12050 6400
$Comp
L +5V #PWR0192
U 1 1 56E716C4
P 4650 2350
F 0 "#PWR0192" H 4650 2200 50  0001 C CNN
F 1 "+5V" H 4668 2524 50  0000 C CNN
F 2 "" H 4650 2350 50  0000 C CNN
F 3 "" H 4650 2350 50  0000 C CNN
	1    4650 2350
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR0193
U 1 1 56E72140
P 4900 7200
F 0 "#PWR0193" H 4900 7050 50  0001 C CNN
F 1 "+5V" H 4918 7374 50  0000 C CNN
F 2 "" H 4900 7200 50  0000 C CNN
F 3 "" H 4900 7200 50  0000 C CNN
	1    4900 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 7200 4900 7450
$Comp
L +5V #PWR0194
U 1 1 56E727AE
P 10100 7200
F 0 "#PWR0194" H 10100 7050 50  0001 C CNN
F 1 "+5V" H 10118 7374 50  0000 C CNN
F 2 "" H 10100 7200 50  0000 C CNN
F 3 "" H 10100 7200 50  0000 C CNN
	1    10100 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 7200 10100 7450
Wire Wire Line
	4550 2850 4300 2850
Wire Wire Line
	4300 2850 4300 6100
Wire Wire Line
	3300 2850 4200 2850
Wire Wire Line
	4200 2850 4200 6200
Wire Wire Line
	4300 6100 12050 6100
Wire Wire Line
	4200 6200 12050 6200
Wire Wire Line
	4550 7700 4800 7700
Wire Wire Line
	4550 6500 4550 7700
Wire Wire Line
	3300 7700 4450 7700
Wire Wire Line
	4450 7700 4450 6600
Wire Wire Line
	10000 7700 9750 7700
Wire Wire Line
	9750 7700 9750 6700
Wire Wire Line
	8500 7700 9650 7700
Wire Wire Line
	9650 7700 9650 6800
Wire Wire Line
	9650 6800 12050 6800
Wire Wire Line
	4450 6600 12050 6600
$EndSCHEMATC
