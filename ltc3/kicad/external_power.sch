EESchema Schematic File Version 2
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
LIBS:Launch_Tower_Computer_III-cache
EELAYER 25 0
EELAYER END
$Descr B 17000 11000
encoding utf-8
Sheet 7 8
Title "LTC3 External Device Power"
Date "2016-03-11"
Rev "A"
Comp "Portland State Aerospace Society <http://psas.pdx.edu/>"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 700  10250 0    100  ~ 20
TODO:\n* Determine values for bleeder resistor\n  and filter capacitor on each power output.
$Comp
L R R709
U 1 1 557E02A5
P 1650 3750
F 0 "R709" V 1730 3750 40  0000 C CNN
F 1 "10k" V 1657 3751 40  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 1580 3750 30  0001 C CNN
F 3 "~" H 1650 3750 30  0000 C CNN
	1    1650 3750
	1    0    0    -1  
$EndComp
Text HLabel 1500 3450 0    60   Input ~ 0
EXT_PWR_EN_1
$Comp
L GND #PWR0155
U 1 1 557E02AD
P 1650 4100
F 0 "#PWR0155" H 1650 4100 30  0001 C CNN
F 1 "GND" H 1650 4030 30  0001 C CNN
F 2 "" H 1650 4100 60  0000 C CNN
F 3 "" H 1650 4100 60  0000 C CNN
	1    1650 4100
	1    0    0    -1  
$EndComp
$Comp
L R R705
U 1 1 557E02CF
P 3550 3350
F 0 "R705" V 3630 3350 40  0000 C CNN
F 1 "R" V 3557 3351 40  0000 C CNN
F 2 "" V 3480 3350 30  0001 C CNN
F 3 "~" H 3550 3350 30  0000 C CNN
	1    3550 3350
	1    0    0    -1  
$EndComp
$Comp
L C C701
U 1 1 557E02D6
P 3900 3350
F 0 "C701" H 3900 3450 40  0000 L CNN
F 1 "C" H 3906 3265 40  0000 L CNN
F 2 "" H 3938 3200 30  0001 C CNN
F 3 "~" H 3900 3350 60  0000 C CNN
	1    3900 3350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0156
U 1 1 557E02DD
P 3900 3800
F 0 "#PWR0156" H 3900 3800 30  0001 C CNN
F 1 "GND" H 3900 3730 30  0001 C CNN
F 2 "" H 3900 3800 60  0000 C CNN
F 3 "" H 3900 3800 60  0000 C CNN
	1    3900 3800
	1    0    0    -1  
$EndComp
$Comp
L R R701
U 1 1 557E02E3
P 2450 2550
F 0 "R701" V 2530 2550 40  0000 C CNN
F 1 "270" V 2457 2551 40  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 2380 2550 30  0001 C CNN
F 3 "~" H 2450 2550 30  0000 C CNN
	1    2450 2550
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P701
U 1 1 557E02F1
P 4450 3350
F 0 "P701" H 4450 3500 50  0000 C CNN
F 1 "CONN_EXT_PWR_1" V 4650 3350 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 4450 3350 60  0001 C CNN
F 3 "" H 4450 3350 60  0000 C CNN
	1    4450 3350
	1    0    0    -1  
$EndComp
$Comp
L PMV45EN Q701
U 1 1 557CB1FB
P 2000 3400
F 0 "Q701" H 1750 3600 50  0000 L CNN
F 1 "PMV45EN" H 1600 3500 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 2200 3325 50  0001 L CIN
F 3 "" H 2000 3400 50  0000 L CNN
	1    2000 3400
	1    0    0    -1  
$EndComp
$Comp
L TLP3542 IC701
U 1 1 560CD084
P 2950 3000
F 0 "IC701" H 2740 3230 40  0000 C CNN
F 1 "TLP3542" H 3090 2860 40  0000 C CNN
F 2 "DIP6" H 2740 2870 30  0000 C CIN
F 3 "" H 2950 3050 60  0000 C CNN
	1    2950 3000
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR0157
U 1 1 56544A2B
P 2450 2200
F 0 "#PWR0157" H 2450 2050 50  0001 C CNN
F 1 "+5V" H 2450 2340 50  0000 C CNN
F 2 "" H 2450 2200 60  0000 C CNN
F 3 "" H 2450 2200 60  0000 C CNN
	1    2450 2200
	1    0    0    -1  
$EndComp
$Comp
L R R11
U 1 1 56CA75B4
P 6850 3750
F 0 "R11" V 6930 3750 40  0000 C CNN
F 1 "10k" V 6857 3751 40  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 6780 3750 30  0001 C CNN
F 3 "~" H 6850 3750 30  0000 C CNN
	1    6850 3750
	1    0    0    -1  
$EndComp
Text HLabel 6700 3450 0    60   Input ~ 0
EXT_PWR_EN_2
$Comp
L GND #PWR0158
U 1 1 56CA75BB
P 6850 4100
F 0 "#PWR0158" H 6850 4100 30  0001 C CNN
F 1 "GND" H 6850 4030 30  0001 C CNN
F 2 "" H 6850 4100 60  0000 C CNN
F 3 "" H 6850 4100 60  0000 C CNN
	1    6850 4100
	1    0    0    -1  
$EndComp
$Comp
L R R15
U 1 1 56CA75C1
P 8750 3350
F 0 "R15" V 8830 3350 40  0000 C CNN
F 1 "R" V 8757 3351 40  0000 C CNN
F 2 "" V 8680 3350 30  0001 C CNN
F 3 "~" H 8750 3350 30  0000 C CNN
	1    8750 3350
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 56CA75C7
P 9100 3350
F 0 "C3" H 9100 3450 40  0000 L CNN
F 1 "C" H 9106 3265 40  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 9138 3200 30  0000 C CNN
F 3 "~" H 9100 3350 60  0000 C CNN
	1    9100 3350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0159
U 1 1 56CA75CD
P 9100 3800
F 0 "#PWR0159" H 9100 3800 30  0001 C CNN
F 1 "GND" H 9100 3730 30  0001 C CNN
F 2 "" H 9100 3800 60  0000 C CNN
F 3 "" H 9100 3800 60  0000 C CNN
	1    9100 3800
	1    0    0    -1  
$EndComp
$Comp
L R R13
U 1 1 56CA75D3
P 7650 2550
F 0 "R13" V 7730 2550 40  0000 C CNN
F 1 "270" V 7657 2551 40  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 7580 2550 30  0001 C CNN
F 3 "~" H 7650 2550 30  0000 C CNN
	1    7650 2550
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P4
U 1 1 56CA75D9
P 9650 3350
F 0 "P4" H 9650 3500 50  0000 C CNN
F 1 "CONN_EXT_PWR_2" V 9850 3350 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 9650 3350 60  0001 C CNN
F 3 "" H 9650 3350 60  0000 C CNN
	1    9650 3350
	1    0    0    -1  
$EndComp
$Comp
L PMV45EN Q2
U 1 1 56CA7600
P 7200 3400
F 0 "Q2" H 6950 3600 50  0000 L CNN
F 1 "PMV45EN" H 6800 3500 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 7400 3325 50  0001 L CIN
F 3 "" H 7200 3400 50  0000 L CNN
	1    7200 3400
	1    0    0    -1  
$EndComp
$Comp
L TLP3542 IC3
U 1 1 56CA7606
P 8150 3000
F 0 "IC3" H 7940 3230 40  0000 C CNN
F 1 "TLP3542" H 8290 2860 40  0000 C CNN
F 2 "DIP6" H 7940 2870 30  0000 C CIN
F 3 "" H 8150 3050 60  0000 C CNN
	1    8150 3000
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR0160
U 1 1 56CA760C
P 7650 2200
F 0 "#PWR0160" H 7650 2050 50  0001 C CNN
F 1 "+5V" H 7650 2340 50  0000 C CNN
F 2 "" H 7650 2200 60  0000 C CNN
F 3 "" H 7650 2200 60  0000 C CNN
	1    7650 2200
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR0161
U 1 1 56CA7612
P 11800 5650
F 0 "#PWR0161" H 11800 5500 50  0001 C CNN
F 1 "+12V" H 11800 5790 50  0000 C CNN
F 2 "" H 11800 5650 60  0000 C CNN
F 3 "" H 11800 5650 60  0000 C CNN
	1    11800 5650
	1    0    0    -1  
$EndComp
$Comp
L R R8
U 1 1 56CA932F
P 1650 8600
F 0 "R8" V 1730 8600 40  0000 C CNN
F 1 "10k" V 1657 8601 40  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 1580 8600 30  0001 C CNN
F 3 "~" H 1650 8600 30  0000 C CNN
	1    1650 8600
	1    0    0    -1  
$EndComp
Text HLabel 1500 8300 0    60   Input ~ 0
EXT_PWR_EN_3
$Comp
L GND #PWR0162
U 1 1 56CA9336
P 1650 8950
F 0 "#PWR0162" H 1650 8950 30  0001 C CNN
F 1 "GND" H 1650 8880 30  0001 C CNN
F 2 "" H 1650 8950 60  0000 C CNN
F 3 "" H 1650 8950 60  0000 C CNN
	1    1650 8950
	1    0    0    -1  
$EndComp
$Comp
L R R10
U 1 1 56CA933C
P 3550 8200
F 0 "R10" V 3630 8200 40  0000 C CNN
F 1 "R" V 3557 8201 40  0000 C CNN
F 2 "" V 3480 8200 30  0001 C CNN
F 3 "~" H 3550 8200 30  0000 C CNN
	1    3550 8200
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 56CA9342
P 3900 8200
F 0 "C2" H 3900 8300 40  0000 L CNN
F 1 "C" H 3906 8115 40  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 3938 8050 30  0000 C CNN
F 3 "~" H 3900 8200 60  0000 C CNN
	1    3900 8200
	1    0    0    -1  
$EndComp
$Comp
L R R9
U 1 1 56CA934E
P 2450 7400
F 0 "R9" V 2530 7400 40  0000 C CNN
F 1 "270" V 2457 7401 40  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 2380 7400 30  0001 C CNN
F 3 "~" H 2450 7400 30  0000 C CNN
	1    2450 7400
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P3
U 1 1 56CA9354
P 4450 8200
F 0 "P3" H 4450 8350 50  0000 C CNN
F 1 "CONN_EXT_PWR_3" V 4650 8200 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 4450 8200 60  0001 C CNN
F 3 "" H 4450 8200 60  0000 C CNN
	1    4450 8200
	1    0    0    -1  
$EndComp
$Comp
L PMV45EN Q1
U 1 1 56CA937B
P 2000 8250
F 0 "Q1" H 1750 8450 50  0000 L CNN
F 1 "PMV45EN" H 1600 8350 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 2200 8175 50  0001 L CIN
F 3 "" H 2000 8250 50  0000 L CNN
	1    2000 8250
	1    0    0    -1  
$EndComp
$Comp
L TLP3542 IC2
U 1 1 56CA9381
P 2950 7850
F 0 "IC2" H 2740 8080 40  0000 C CNN
F 1 "TLP3542" H 3090 7710 40  0000 C CNN
F 2 "DIP6" H 2740 7720 30  0000 C CIN
F 3 "" H 2950 7900 60  0000 C CNN
	1    2950 7850
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR0163
U 1 1 56CA9387
P 2450 7050
F 0 "#PWR0163" H 2450 6900 50  0001 C CNN
F 1 "+5V" H 2450 7190 50  0000 C CNN
F 2 "" H 2450 7050 60  0000 C CNN
F 3 "" H 2450 7050 60  0000 C CNN
	1    2450 7050
	1    0    0    -1  
$EndComp
$Comp
L R R12
U 1 1 56CA93A6
P 6850 8600
F 0 "R12" V 6930 8600 40  0000 C CNN
F 1 "10k" V 6857 8601 40  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 6780 8600 30  0001 C CNN
F 3 "~" H 6850 8600 30  0000 C CNN
	1    6850 8600
	1    0    0    -1  
$EndComp
Text HLabel 6700 8300 0    60   Input ~ 0
EXT_PWR_EN_4
$Comp
L GND #PWR0164
U 1 1 56CA93AD
P 6850 8950
F 0 "#PWR0164" H 6850 8950 30  0001 C CNN
F 1 "GND" H 6850 8880 30  0001 C CNN
F 2 "" H 6850 8950 60  0000 C CNN
F 3 "" H 6850 8950 60  0000 C CNN
	1    6850 8950
	1    0    0    -1  
$EndComp
$Comp
L R R16
U 1 1 56CA93B3
P 8750 8200
F 0 "R16" V 8830 8200 40  0000 C CNN
F 1 "R" V 8757 8201 40  0000 C CNN
F 2 "" V 8680 8200 30  0001 C CNN
F 3 "~" H 8750 8200 30  0000 C CNN
	1    8750 8200
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 56CA93B9
P 9100 8200
F 0 "C4" H 9100 8300 40  0000 L CNN
F 1 "C" H 9106 8115 40  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 9138 8050 30  0000 C CNN
F 3 "~" H 9100 8200 60  0000 C CNN
	1    9100 8200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0165
U 1 1 56CA93BF
P 9100 8650
F 0 "#PWR0165" H 9100 8650 30  0001 C CNN
F 1 "GND" H 9100 8580 30  0001 C CNN
F 2 "" H 9100 8650 60  0000 C CNN
F 3 "" H 9100 8650 60  0000 C CNN
	1    9100 8650
	1    0    0    -1  
$EndComp
$Comp
L R R14
U 1 1 56CA93C5
P 7650 7400
F 0 "R14" V 7730 7400 40  0000 C CNN
F 1 "270" V 7657 7401 40  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 7580 7400 30  0001 C CNN
F 3 "~" H 7650 7400 30  0000 C CNN
	1    7650 7400
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P5
U 1 1 56CA93CB
P 9650 8200
F 0 "P5" H 9650 8350 50  0000 C CNN
F 1 "CONN_EXT_PWR_4" V 9850 8200 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 9650 8200 60  0001 C CNN
F 3 "" H 9650 8200 60  0000 C CNN
	1    9650 8200
	1    0    0    -1  
$EndComp
$Comp
L PMV45EN Q3
U 1 1 56CA93F2
P 7200 8250
F 0 "Q3" H 6950 8450 50  0000 L CNN
F 1 "PMV45EN" H 6800 8350 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 7400 8175 50  0001 L CIN
F 3 "" H 7200 8250 50  0000 L CNN
	1    7200 8250
	1    0    0    -1  
$EndComp
$Comp
L TLP3542 IC4
U 1 1 56CA93F8
P 8150 7850
F 0 "IC4" H 7940 8080 40  0000 C CNN
F 1 "TLP3542" H 8290 7710 40  0000 C CNN
F 2 "DIP6" H 7940 7720 30  0000 C CIN
F 3 "" H 8150 7900 60  0000 C CNN
	1    8150 7850
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR0166
U 1 1 56CA93FE
P 7650 7050
F 0 "#PWR0166" H 7650 6900 50  0001 C CNN
F 1 "+5V" H 7650 7190 50  0000 C CNN
F 2 "" H 7650 7050 60  0000 C CNN
F 3 "" H 7650 7050 60  0000 C CNN
	1    7650 7050
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X08 P7
U 1 1 56DA75D8
P 12250 6450
F 0 "P7" H 12250 6950 50  0000 L CNN
F 1 "CONN_01X08" V 12400 6250 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x08" H 12250 6450 50  0001 C CNN
F 3 "" H 12250 6450 50  0000 C CNN
	1    12250 6450
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X08 P9
U 1 1 56DA764C
P 13000 6450
F 0 "P9" H 13000 6950 50  0000 L CNN
F 1 "CONN_01X08" V 13150 6250 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x08" H 13000 6450 50  0001 C CNN
F 3 "" H 13000 6450 50  0000 C CNN
	1    13000 6450
	-1   0    0    -1  
$EndComp
$Comp
L BREAKER_1P M3
U 1 1 56DA4DF6
P 14750 7100
F 0 "M3" H 14750 7225 50  0000 C CNN
F 1 "W28-XQ1A-1" H 14750 7025 50  0000 C CNN
F 2 "" H 14750 7100 50  0001 C CNN
F 3 "" H 14750 7100 50  0000 C CNN
	1    14750 7100
	0    -1   1    0   
$EndComp
$Comp
L BREAKER_1P M4
U 1 1 56DA5EF5
P 15150 7100
F 0 "M4" H 15150 7225 50  0000 C CNN
F 1 "W28-XQ1A-1" H 15150 7025 50  0000 C CNN
F 2 "" H 15150 7100 50  0001 C CNN
F 3 "" H 15150 7100 50  0000 C CNN
	1    15150 7100
	0    -1   1    0   
$EndComp
$Comp
L BREAKER_1P M1
U 1 1 56DA6069
P 13950 7100
F 0 "M1" H 13950 7225 50  0000 C CNN
F 1 "W28-XQ1A-1" H 13950 7025 50  0000 C CNN
F 2 "" H 13950 7100 50  0001 C CNN
F 3 "" H 13950 7100 50  0000 C CNN
	1    13950 7100
	0    -1   1    0   
$EndComp
$Comp
L BREAKER_1P M2
U 1 1 56DA606F
P 14350 7100
F 0 "M2" H 14350 7225 50  0000 C CNN
F 1 "W28-XQ1A-1" H 14350 7025 50  0000 C CNN
F 2 "" H 14350 7100 50  0001 C CNN
F 3 "" H 14350 7100 50  0000 C CNN
	1    14350 7100
	0    -1   1    0   
$EndComp
Text Notes 12700 8100 0    80   ~ 0
Circuit Breakers, 1A x 4, Front Panel
Text Notes 12700 3900 0    80   ~ 0
Manual Override Switches, Front Panel
$Comp
L GND #PWR0167
U 1 1 56DB5084
P 11800 2800
F 0 "#PWR0167" H 11800 2550 50  0001 C CNN
F 1 "GND" H 11808 2626 50  0001 C CNN
F 2 "" H 11800 2800 50  0000 C CNN
F 3 "" H 11800 2800 50  0000 C CNN
	1    11800 2800
	1    0    0    -1  
$EndComp
$Comp
L SP3T SW4
U 1 1 56DB7B23
P 13750 2800
F 0 "SW4" V 13704 2648 50  0000 R CNN
F 1 "SP3T" V 13796 2648 50  0000 R CNN
F 2 "" H 13125 2975 50  0001 C CNN
F 3 "" H 13125 2975 50  0000 C CNN
	1    13750 2800
	0    -1   1    0   
$EndComp
$Comp
L CONN_01X10 P6
U 1 1 56DB9640
P 12250 2100
F 0 "P6" H 12250 2650 50  0000 L CNN
F 1 "CONN_01X10" V 12400 1600 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x10" H 12250 2100 50  0001 C CNN
F 3 "" H 12250 2100 50  0000 C CNN
	1    12250 2100
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X10 P8
U 1 1 56DBA449
P 13000 2100
F 0 "P8" H 13000 2650 50  0000 L CNN
F 1 "CONN_01X10" V 13150 1600 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x10" H 13000 2100 50  0001 C CNN
F 3 "" H 13000 2100 50  0000 C CNN
	1    13000 2100
	-1   0    0    -1  
$EndComp
$Comp
L SP3T SW5
U 1 1 56DBA680
P 14400 2800
F 0 "SW5" V 14446 2648 50  0000 R CNN
F 1 "SP3T" V 14354 2648 50  0000 R CNN
F 2 "" H 13775 2975 50  0001 C CNN
F 3 "" H 13775 2975 50  0000 C CNN
	1    14400 2800
	0    -1   1    0   
$EndComp
$Comp
L SP3T SW6
U 1 1 56DBA712
P 15050 2800
F 0 "SW6" V 15096 2648 50  0000 R CNN
F 1 "SP3T" V 15004 2648 50  0000 R CNN
F 2 "" H 14425 2975 50  0001 C CNN
F 3 "" H 14425 2975 50  0000 C CNN
	1    15050 2800
	0    -1   1    0   
$EndComp
$Comp
L SP3T SW7
U 1 1 56DBA7A7
P 15700 2800
F 0 "SW7" V 15746 2648 50  0000 R CNN
F 1 "SP3T" V 15654 2648 50  0000 R CNN
F 2 "" H 15075 2975 50  0001 C CNN
F 3 "" H 15075 2975 50  0000 C CNN
	1    15700 2800
	0    -1   1    0   
$EndComp
Wire Wire Line
	3300 2850 4950 2850
Connection ~ 1650 4000
Wire Wire Line
	1650 4000 2100 4000
Wire Wire Line
	2100 4000 2100 3600
Wire Wire Line
	1650 3900 1650 4100
Wire Wire Line
	3900 3050 3900 3200
Wire Wire Line
	4250 3050 4250 3300
Connection ~ 3900 3600
Wire Wire Line
	4250 3600 3900 3600
Wire Wire Line
	4250 3400 4250 3600
Connection ~ 3900 3700
Wire Wire Line
	3900 3700 3550 3700
Wire Wire Line
	3550 3700 3550 3500
Wire Wire Line
	3900 3500 3900 3800
Connection ~ 3900 3050
Connection ~ 3550 3050
Wire Wire Line
	3550 3050 3550 3200
Wire Wire Line
	3300 3050 4250 3050
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
Wire Wire Line
	8500 2850 10150 2850
Connection ~ 6850 4000
Wire Wire Line
	6850 4000 7300 4000
Wire Wire Line
	7300 4000 7300 3600
Wire Wire Line
	6850 3900 6850 4100
Wire Wire Line
	9100 3050 9100 3200
Wire Wire Line
	9450 3050 9450 3300
Connection ~ 9100 3600
Wire Wire Line
	9450 3600 9100 3600
Wire Wire Line
	9450 3400 9450 3600
Connection ~ 9100 3700
Wire Wire Line
	9100 3700 8750 3700
Wire Wire Line
	8750 3700 8750 3500
Wire Wire Line
	9100 3500 9100 3800
Connection ~ 9100 3050
Connection ~ 8750 3050
Wire Wire Line
	8750 3050 8750 3200
Wire Wire Line
	8500 3050 9450 3050
Wire Wire Line
	7450 3050 7800 3050
Wire Wire Line
	7650 2850 7800 2850
Wire Wire Line
	7650 2700 7650 2850
Wire Wire Line
	6850 3600 6850 3450
Wire Wire Line
	11800 5650 11800 6700
Wire Wire Line
	7650 2200 7650 2400
Wire Wire Line
	6700 3450 7000 3450
Connection ~ 6850 3450
Wire Wire Line
	4950 6600 4950 7700
Wire Wire Line
	4950 7700 3300 7700
Connection ~ 1650 8850
Wire Wire Line
	1650 8850 2100 8850
Wire Wire Line
	2100 8850 2100 8450
Wire Wire Line
	1650 8750 1650 8950
Wire Wire Line
	3900 7900 3900 8050
Wire Wire Line
	4250 7900 4250 8150
Connection ~ 3900 8450
Wire Wire Line
	4250 8450 3900 8450
Wire Wire Line
	4250 8250 4250 8450
Connection ~ 3900 8550
Wire Wire Line
	3900 8550 3550 8550
Wire Wire Line
	3550 8550 3550 8350
Wire Wire Line
	3900 8350 3900 8650
Wire Wire Line
	2100 4600 2100 8050
Connection ~ 3900 7900
Connection ~ 3550 7900
Wire Wire Line
	3550 7900 3550 8050
Wire Wire Line
	3300 7900 4250 7900
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
Wire Wire Line
	10150 6800 10150 7700
Wire Wire Line
	10150 7700 8500 7700
Connection ~ 6850 8850
Wire Wire Line
	6850 8850 7300 8850
Wire Wire Line
	7300 8850 7300 8450
Wire Wire Line
	6850 8750 6850 8950
Wire Wire Line
	9100 7900 9100 8050
Wire Wire Line
	9450 7900 9450 8150
Connection ~ 9100 8450
Wire Wire Line
	9450 8450 9100 8450
Wire Wire Line
	9450 8250 9450 8450
Connection ~ 9100 8550
Wire Wire Line
	9100 8550 8750 8550
Wire Wire Line
	8750 8550 8750 8350
Wire Wire Line
	9100 8350 9100 8650
Wire Wire Line
	7300 4900 7300 8050
Connection ~ 9100 7900
Connection ~ 8750 7900
Wire Wire Line
	8750 7900 8750 8050
Wire Wire Line
	8500 7900 9450 7900
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
	11800 6100 12050 6100
Wire Wire Line
	11800 6300 12050 6300
Connection ~ 11800 6100
Wire Wire Line
	11800 6500 12050 6500
Connection ~ 11800 6300
Wire Wire Line
	11800 6700 12050 6700
Connection ~ 11800 6500
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
Wire Wire Line
	4950 2850 4950 6200
Wire Wire Line
	10150 6800 12050 6800
Wire Wire Line
	4950 6600 12050 6600
Wire Wire Line
	10150 2850 10150 6400
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
	11300 4600 11300 2250
Wire Wire Line
	11500 4900 11500 2450
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
EXT_POW_2_FET_D
Text Label 11900 1950 2    50   ~ 0
EXT_POW_2_LED_CATH
Text Label 11900 1650 2    50   ~ 0
EXT_POW_1_FET_D
Text Label 11900 1750 2    50   ~ 0
EXT_POW_1_LED_CATH
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
EXT_POW_3_FET_D
Text Label 11900 2150 2    50   ~ 0
EXT_POW_3_LED_CATH
Text Label 11900 2250 2    50   ~ 0
EXT_POW_4_FET_D
Text Label 11900 2350 2    50   ~ 0
EXT_POW_4_LED_CATH
Wire Wire Line
	11300 2050 12050 2050
Wire Wire Line
	11600 5000 11600 2550
Wire Wire Line
	12050 2150 11400 2150
Wire Wire Line
	11400 2350 11400 4700
Wire Wire Line
	11600 2350 12050 2350
Wire Wire Line
	11500 2250 12050 2250
Text Label 11650 6200 2    50   ~ 0
EXT_POW_1_OPTO_RELAY_P
Text Label 11650 6400 2    50   ~ 0
EXT_POW_2_OPTO_RELAY_P
Text Label 11650 6600 2    50   ~ 0
EXT_POW_3_OPTO_RELAY_P
Text Label 11650 6800 2    50   ~ 0
EXT_POW_4_OPTO_RELAY_P
Wire Wire Line
	11500 4900 7300 4900
Wire Wire Line
	11400 4700 2250 4700
Wire Wire Line
	10150 6400 12050 6400
Wire Wire Line
	4950 6200 12050 6200
$EndSCHEMATC
