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
LIBS:Launch_Tower_Computer_III-cache
EELAYER 25 0
EELAYER END
$Descr B 17000 11000
encoding utf-8
Sheet 6 6
Title "LTC3 External Device Power"
Date "30 may 2015"
Rev "1"
Comp "Portland State Aerospace Society <http://psas.pdx.edu/>"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 1000 1200 0    80   ~ 0
TODO: Determine values for bleeder resistor\nand filter capacitor on each output connector.
$Comp
L R R701
U 1 1 557E02A5
P 4350 4350
F 0 "R701" V 4430 4350 40  0000 C CNN
F 1 "10 kΩ" V 4357 4351 40  0000 C CNN
F 2 "~" V 4280 4350 30  0000 C CNN
F 3 "~" H 4350 4350 30  0000 C CNN
	1    4350 4350
	1    0    0    -1  
$EndComp
Text HLabel 4150 4050 0    60   Input ~ 0
GPIO_EXT_PWR_1
$Comp
L GND #PWR701
U 1 1 557E02AD
P 4350 4700
F 0 "#PWR701" H 4350 4700 30  0001 C CNN
F 1 "GND" H 4350 4630 30  0001 C CNN
F 2 "" H 4350 4700 60  0000 C CNN
F 3 "" H 4350 4700 60  0000 C CNN
	1    4350 4700
	1    0    0    -1  
$EndComp
Text HLabel 5850 2550 1    60   Input ~ 0
VCC_12V
$Comp
L TLP3542 IC701
U 1 1 557E02B4
P 5300 3600
F 0 "IC701" H 5090 3830 40  0000 C CNN
F 1 "TLP3542" H 5440 3460 40  0000 C CNN
F 2 "DIP6" H 5090 3470 30  0000 C CIN
F 3 "~" H 5300 3650 60  0000 C CNN
	1    5300 3600
	1    0    0    -1  
$EndComp
$Comp
L THERMISTOR PTC701
U 1 1 557E02C8
P 5850 3000
F 0 "PTC701" V 5950 3050 50  0000 C CNN
F 1 "06R075B" V 5750 3000 50  0000 C CNN
F 2 "~" H 5850 3000 60  0000 C CNN
F 3 "~" H 5850 3000 60  0000 C CNN
	1    5850 3000
	1    0    0    -1  
$EndComp
$Comp
L R R705
U 1 1 557E02CF
P 5900 3950
F 0 "R705" V 5980 3950 40  0000 C CNN
F 1 "R" V 5907 3951 40  0000 C CNN
F 2 "~" V 5830 3950 30  0000 C CNN
F 3 "~" H 5900 3950 30  0000 C CNN
	1    5900 3950
	1    0    0    -1  
$EndComp
$Comp
L C C701
U 1 1 557E02D6
P 6250 3950
F 0 "C701" H 6250 4050 40  0000 L CNN
F 1 "C" H 6256 3865 40  0000 L CNN
F 2 "~" H 6288 3800 30  0000 C CNN
F 3 "~" H 6250 3950 60  0000 C CNN
	1    6250 3950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR703
U 1 1 557E02DD
P 6250 4350
F 0 "#PWR703" H 6250 4350 30  0001 C CNN
F 1 "GND" H 6250 4280 30  0001 C CNN
F 2 "" H 6250 4350 60  0000 C CNN
F 3 "" H 6250 4350 60  0000 C CNN
	1    6250 4350
	1    0    0    -1  
$EndComp
$Comp
L R R703
U 1 1 557E02E3
P 4800 3150
F 0 "R703" V 4880 3150 40  0000 C CNN
F 1 "270 Ω" V 4807 3151 40  0000 C CNN
F 2 "~" V 4730 3150 30  0000 C CNN
F 3 "~" H 4800 3150 30  0000 C CNN
	1    4800 3150
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P701
U 1 1 557E02F1
P 6800 3950
F 0 "P701" H 6800 4100 50  0000 C CNN
F 1 "CONN_01X02" V 6900 3950 50  0000 C CNN
F 2 "" H 6800 3950 60  0000 C CNN
F 3 "" H 6800 3950 60  0000 C CNN
	1    6800 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 3450 5850 3250
Wire Wire Line
	5650 3450 5850 3450
Connection ~ 4350 4600
Wire Wire Line
	4800 4600 4350 4600
Wire Wire Line
	4800 4200 4800 4600
Wire Wire Line
	4350 4700 4350 4500
Wire Wire Line
	6250 3800 6250 3650
Wire Wire Line
	6600 3650 6600 3900
Connection ~ 6250 4200
Wire Wire Line
	6600 4200 6250 4200
Wire Wire Line
	6600 4000 6600 4200
Connection ~ 6250 4300
Wire Wire Line
	5900 4300 6250 4300
Wire Wire Line
	5900 4100 5900 4300
Wire Wire Line
	6250 4100 6250 4350
Connection ~ 4350 4050
Wire Wire Line
	4150 4050 4500 4050
Wire Wire Line
	4800 3650 4800 3800
Connection ~ 6250 3650
Connection ~ 5900 3650
Wire Wire Line
	5900 3650 5900 3800
Wire Wire Line
	5650 3650 6600 3650
Wire Wire Line
	4950 3650 4800 3650
Wire Wire Line
	4800 3450 4950 3450
Wire Wire Line
	4800 3300 4800 3450
Wire Wire Line
	4350 4200 4350 4050
Text HLabel 4800 2800 1    60   Input ~ 0
VCC_5V
Wire Wire Line
	5850 2550 5850 2750
Wire Wire Line
	4800 2800 4800 3000
$Comp
L R R707
U 1 1 557E8AEC
P 10300 4350
F 0 "R707" V 10380 4350 40  0000 C CNN
F 1 "10 kΩ" V 10307 4351 40  0000 C CNN
F 2 "~" V 10230 4350 30  0000 C CNN
F 3 "~" H 10300 4350 30  0000 C CNN
	1    10300 4350
	1    0    0    -1  
$EndComp
Text HLabel 10100 4050 0    60   Input ~ 0
GPIO_EXT_PWR_2
$Comp
L GND #PWR705
U 1 1 557E8AF4
P 10300 4700
F 0 "#PWR705" H 10300 4700 30  0001 C CNN
F 1 "GND" H 10300 4630 30  0001 C CNN
F 2 "" H 10300 4700 60  0000 C CNN
F 3 "" H 10300 4700 60  0000 C CNN
	1    10300 4700
	1    0    0    -1  
$EndComp
Text HLabel 11800 2550 1    60   Input ~ 0
VCC_12V
$Comp
L TLP3542 IC703
U 1 1 557E8AFB
P 11250 3600
F 0 "IC703" H 11040 3830 40  0000 C CNN
F 1 "TLP3542" H 11390 3460 40  0000 C CNN
F 2 "DIP6" H 11040 3470 30  0000 C CIN
F 3 "~" H 11250 3650 60  0000 C CNN
	1    11250 3600
	1    0    0    -1  
$EndComp
$Comp
L THERMISTOR PTC703
U 1 1 557E8B02
P 11800 3000
F 0 "PTC703" V 11900 3050 50  0000 C CNN
F 1 "06R075B" V 11700 3000 50  0000 C CNN
F 2 "~" H 11800 3000 60  0000 C CNN
F 3 "~" H 11800 3000 60  0000 C CNN
	1    11800 3000
	1    0    0    -1  
$EndComp
$Comp
L R R711
U 1 1 557E8B09
P 11850 3950
F 0 "R711" V 11930 3950 40  0000 C CNN
F 1 "R" V 11857 3951 40  0000 C CNN
F 2 "~" V 11780 3950 30  0000 C CNN
F 3 "~" H 11850 3950 30  0000 C CNN
	1    11850 3950
	1    0    0    -1  
$EndComp
$Comp
L C C703
U 1 1 557E8B10
P 12200 3950
F 0 "C703" H 12200 4050 40  0000 L CNN
F 1 "C" H 12206 3865 40  0000 L CNN
F 2 "~" H 12238 3800 30  0000 C CNN
F 3 "~" H 12200 3950 60  0000 C CNN
	1    12200 3950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR707
U 1 1 557E8B17
P 12200 4350
F 0 "#PWR707" H 12200 4350 30  0001 C CNN
F 1 "GND" H 12200 4280 30  0001 C CNN
F 2 "" H 12200 4350 60  0000 C CNN
F 3 "" H 12200 4350 60  0000 C CNN
	1    12200 4350
	1    0    0    -1  
$EndComp
$Comp
L R R709
U 1 1 557E8B1D
P 10750 3150
F 0 "R709" V 10830 3150 40  0000 C CNN
F 1 "270 Ω" V 10757 3151 40  0000 C CNN
F 2 "~" V 10680 3150 30  0000 C CNN
F 3 "~" H 10750 3150 30  0000 C CNN
	1    10750 3150
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P703
U 1 1 557E8B2B
P 12750 3950
F 0 "P703" H 12750 4100 50  0000 C CNN
F 1 "CONN_01X02" V 12850 3950 50  0000 C CNN
F 2 "" H 12750 3950 60  0000 C CNN
F 3 "" H 12750 3950 60  0000 C CNN
	1    12750 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	11800 3450 11800 3250
Wire Wire Line
	11600 3450 11800 3450
Connection ~ 10300 4600
Wire Wire Line
	10750 4600 10300 4600
Wire Wire Line
	10750 4200 10750 4600
Wire Wire Line
	10300 4700 10300 4500
Wire Wire Line
	12200 3800 12200 3650
Wire Wire Line
	12550 3650 12550 3900
Connection ~ 12200 4200
Wire Wire Line
	12550 4200 12200 4200
Wire Wire Line
	12550 4000 12550 4200
Connection ~ 12200 4300
Wire Wire Line
	11850 4300 12200 4300
Wire Wire Line
	11850 4100 11850 4300
Wire Wire Line
	12200 4100 12200 4350
Connection ~ 10300 4050
Wire Wire Line
	10100 4050 10450 4050
Wire Wire Line
	10750 3650 10750 3800
Connection ~ 12200 3650
Connection ~ 11850 3650
Wire Wire Line
	11850 3650 11850 3800
Wire Wire Line
	11600 3650 12550 3650
Wire Wire Line
	10900 3650 10750 3650
Wire Wire Line
	10750 3450 10900 3450
Wire Wire Line
	10750 3300 10750 3450
Wire Wire Line
	10300 4200 10300 4050
Text HLabel 10750 2800 1    60   Input ~ 0
VCC_5V
Wire Wire Line
	11800 2550 11800 2750
Wire Wire Line
	10750 2800 10750 3000
$Comp
L R R702
U 1 1 557E8E0F
P 4350 8300
F 0 "R702" V 4430 8300 40  0000 C CNN
F 1 "10 kΩ" V 4357 8301 40  0000 C CNN
F 2 "~" V 4280 8300 30  0000 C CNN
F 3 "~" H 4350 8300 30  0000 C CNN
	1    4350 8300
	1    0    0    -1  
$EndComp
Text HLabel 4150 8000 0    60   Input ~ 0
GPIO_EXT_PWR_3
$Comp
L GND #PWR702
U 1 1 557E8E17
P 4350 8650
F 0 "#PWR702" H 4350 8650 30  0001 C CNN
F 1 "GND" H 4350 8580 30  0001 C CNN
F 2 "" H 4350 8650 60  0000 C CNN
F 3 "" H 4350 8650 60  0000 C CNN
	1    4350 8650
	1    0    0    -1  
$EndComp
Text HLabel 5850 6500 1    60   Input ~ 0
VCC_12V
$Comp
L TLP3542 IC702
U 1 1 557E8E1E
P 5300 7550
F 0 "IC702" H 5090 7780 40  0000 C CNN
F 1 "TLP3542" H 5440 7410 40  0000 C CNN
F 2 "DIP6" H 5090 7420 30  0000 C CIN
F 3 "~" H 5300 7600 60  0000 C CNN
	1    5300 7550
	1    0    0    -1  
$EndComp
$Comp
L THERMISTOR PTC702
U 1 1 557E8E25
P 5850 6950
F 0 "PTC702" V 5950 7000 50  0000 C CNN
F 1 "06R075B" V 5750 6950 50  0000 C CNN
F 2 "~" H 5850 6950 60  0000 C CNN
F 3 "~" H 5850 6950 60  0000 C CNN
	1    5850 6950
	1    0    0    -1  
$EndComp
$Comp
L R R706
U 1 1 557E8E2C
P 5900 7900
F 0 "R706" V 5980 7900 40  0000 C CNN
F 1 "R" V 5907 7901 40  0000 C CNN
F 2 "~" V 5830 7900 30  0000 C CNN
F 3 "~" H 5900 7900 30  0000 C CNN
	1    5900 7900
	1    0    0    -1  
$EndComp
$Comp
L C C702
U 1 1 557E8E33
P 6250 7900
F 0 "C702" H 6250 8000 40  0000 L CNN
F 1 "C" H 6256 7815 40  0000 L CNN
F 2 "~" H 6288 7750 30  0000 C CNN
F 3 "~" H 6250 7900 60  0000 C CNN
	1    6250 7900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR704
U 1 1 557E8E3A
P 6250 8300
F 0 "#PWR704" H 6250 8300 30  0001 C CNN
F 1 "GND" H 6250 8230 30  0001 C CNN
F 2 "" H 6250 8300 60  0000 C CNN
F 3 "" H 6250 8300 60  0000 C CNN
	1    6250 8300
	1    0    0    -1  
$EndComp
$Comp
L R R704
U 1 1 557E8E40
P 4800 7100
F 0 "R704" V 4880 7100 40  0000 C CNN
F 1 "270 Ω" V 4807 7101 40  0000 C CNN
F 2 "~" V 4730 7100 30  0000 C CNN
F 3 "~" H 4800 7100 30  0000 C CNN
	1    4800 7100
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P702
U 1 1 557E8E4E
P 6800 7900
F 0 "P702" H 6800 8050 50  0000 C CNN
F 1 "CONN_01X02" V 6900 7900 50  0000 C CNN
F 2 "" H 6800 7900 60  0000 C CNN
F 3 "" H 6800 7900 60  0000 C CNN
	1    6800 7900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 7400 5850 7200
Wire Wire Line
	5650 7400 5850 7400
Connection ~ 4350 8550
Wire Wire Line
	4800 8550 4350 8550
Wire Wire Line
	4800 8150 4800 8550
Wire Wire Line
	4350 8650 4350 8450
Wire Wire Line
	6250 7750 6250 7600
Wire Wire Line
	6600 7600 6600 7850
Connection ~ 6250 8150
Wire Wire Line
	6600 8150 6250 8150
Wire Wire Line
	6600 7950 6600 8150
Connection ~ 6250 8250
Wire Wire Line
	5900 8250 6250 8250
Wire Wire Line
	5900 8050 5900 8250
Wire Wire Line
	6250 8050 6250 8300
Connection ~ 4350 8000
Wire Wire Line
	4150 8000 4500 8000
Wire Wire Line
	4800 7600 4800 7750
Connection ~ 6250 7600
Connection ~ 5900 7600
Wire Wire Line
	5900 7600 5900 7750
Wire Wire Line
	5650 7600 6600 7600
Wire Wire Line
	4950 7600 4800 7600
Wire Wire Line
	4800 7400 4950 7400
Wire Wire Line
	4800 7250 4800 7400
Wire Wire Line
	4350 8150 4350 8000
Text HLabel 4800 6750 1    60   Input ~ 0
VCC_5V
Wire Wire Line
	5850 6500 5850 6700
Wire Wire Line
	4800 6750 4800 6950
$Comp
L R R708
U 1 1 557E924A
P 10300 8100
F 0 "R708" V 10380 8100 40  0000 C CNN
F 1 "10 kΩ" V 10307 8101 40  0000 C CNN
F 2 "~" V 10230 8100 30  0000 C CNN
F 3 "~" H 10300 8100 30  0000 C CNN
	1    10300 8100
	1    0    0    -1  
$EndComp
Text HLabel 10100 7800 0    60   Input ~ 0
GPIO_EXT_PWR_4
$Comp
L GND #PWR706
U 1 1 557E9252
P 10300 8450
F 0 "#PWR706" H 10300 8450 30  0001 C CNN
F 1 "GND" H 10300 8380 30  0001 C CNN
F 2 "" H 10300 8450 60  0000 C CNN
F 3 "" H 10300 8450 60  0000 C CNN
	1    10300 8450
	1    0    0    -1  
$EndComp
Text HLabel 11800 6300 1    60   Input ~ 0
VCC_12V
$Comp
L TLP3542 IC704
U 1 1 557E9259
P 11250 7350
F 0 "IC704" H 11040 7580 40  0000 C CNN
F 1 "TLP3542" H 11390 7210 40  0000 C CNN
F 2 "DIP6" H 11040 7220 30  0000 C CIN
F 3 "~" H 11250 7400 60  0000 C CNN
	1    11250 7350
	1    0    0    -1  
$EndComp
$Comp
L THERMISTOR PTC704
U 1 1 557E9260
P 11800 6750
F 0 "PTC704" V 11900 6800 50  0000 C CNN
F 1 "06R075B" V 11700 6750 50  0000 C CNN
F 2 "~" H 11800 6750 60  0000 C CNN
F 3 "~" H 11800 6750 60  0000 C CNN
	1    11800 6750
	1    0    0    -1  
$EndComp
$Comp
L R R712
U 1 1 557E9267
P 11850 7700
F 0 "R712" V 11930 7700 40  0000 C CNN
F 1 "R" V 11857 7701 40  0000 C CNN
F 2 "~" V 11780 7700 30  0000 C CNN
F 3 "~" H 11850 7700 30  0000 C CNN
	1    11850 7700
	1    0    0    -1  
$EndComp
$Comp
L C C704
U 1 1 557E926E
P 12200 7700
F 0 "C704" H 12200 7800 40  0000 L CNN
F 1 "C" H 12206 7615 40  0000 L CNN
F 2 "~" H 12238 7550 30  0000 C CNN
F 3 "~" H 12200 7700 60  0000 C CNN
	1    12200 7700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR708
U 1 1 557E9275
P 12200 8100
F 0 "#PWR708" H 12200 8100 30  0001 C CNN
F 1 "GND" H 12200 8030 30  0001 C CNN
F 2 "" H 12200 8100 60  0000 C CNN
F 3 "" H 12200 8100 60  0000 C CNN
	1    12200 8100
	1    0    0    -1  
$EndComp
$Comp
L R R710
U 1 1 557E927B
P 10750 6900
F 0 "R710" V 10830 6900 40  0000 C CNN
F 1 "270 Ω" V 10757 6901 40  0000 C CNN
F 2 "~" V 10680 6900 30  0000 C CNN
F 3 "~" H 10750 6900 30  0000 C CNN
	1    10750 6900
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P704
U 1 1 557E9289
P 12750 7700
F 0 "P704" H 12750 7850 50  0000 C CNN
F 1 "CONN_01X02" V 12850 7700 50  0000 C CNN
F 2 "" H 12750 7700 60  0000 C CNN
F 3 "" H 12750 7700 60  0000 C CNN
	1    12750 7700
	1    0    0    -1  
$EndComp
Wire Wire Line
	11800 7200 11800 7000
Wire Wire Line
	11600 7200 11800 7200
Connection ~ 10300 8350
Wire Wire Line
	10750 8350 10300 8350
Wire Wire Line
	10750 7950 10750 8350
Wire Wire Line
	10300 8450 10300 8250
Wire Wire Line
	12200 7550 12200 7400
Wire Wire Line
	12550 7400 12550 7650
Connection ~ 12200 7950
Wire Wire Line
	12550 7950 12200 7950
Wire Wire Line
	12550 7750 12550 7950
Connection ~ 12200 8050
Wire Wire Line
	11850 8050 12200 8050
Wire Wire Line
	11850 7850 11850 8050
Wire Wire Line
	12200 7850 12200 8100
Connection ~ 10300 7800
Wire Wire Line
	10100 7800 10450 7800
Wire Wire Line
	10750 7400 10750 7550
Connection ~ 12200 7400
Connection ~ 11850 7400
Wire Wire Line
	11850 7400 11850 7550
Wire Wire Line
	11600 7400 12550 7400
Wire Wire Line
	10900 7400 10750 7400
Wire Wire Line
	10750 7200 10900 7200
Wire Wire Line
	10750 7050 10750 7200
Wire Wire Line
	10300 7950 10300 7800
Text HLabel 10750 6550 1    60   Input ~ 0
VCC_5V
Wire Wire Line
	11800 6300 11800 6500
Wire Wire Line
	10750 6550 10750 6750
$Comp
L PMV45EN Q701
U 1 1 557CB1FB
P 4700 4000
F 0 "Q701" H 4900 4075 50  0000 L CNN
F 1 "PMV45EN" H 4900 4000 50  0000 L CNN
F 2 "SOT-23" H 4900 3925 50  0000 L CIN
F 3 "" H 4700 4000 50  0000 L CNN
	1    4700 4000
	1    0    0    -1  
$EndComp
$Comp
L PMV45EN Q703
U 1 1 557CBA75
P 10650 4000
F 0 "Q703" H 10850 4075 50  0000 L CNN
F 1 "PMV45EN" H 10850 4000 50  0000 L CNN
F 2 "SOT-23" H 10850 3925 50  0000 L CIN
F 3 "" H 10650 4000 50  0000 L CNN
	1    10650 4000
	1    0    0    -1  
$EndComp
$Comp
L PMV45EN Q704
U 1 1 557CC844
P 10650 7750
F 0 "Q704" H 10850 7825 50  0000 L CNN
F 1 "PMV45EN" H 10850 7750 50  0000 L CNN
F 2 "SOT-23" H 10850 7675 50  0000 L CIN
F 3 "" H 10650 7750 50  0000 L CNN
	1    10650 7750
	1    0    0    -1  
$EndComp
$Comp
L PMV45EN Q702
U 1 1 557CD0AF
P 4700 7950
F 0 "Q702" H 4900 8025 50  0000 L CNN
F 1 "PMV45EN" H 4900 7950 50  0000 L CNN
F 2 "SOT-23" H 4900 7875 50  0000 L CIN
F 3 "" H 4700 7950 50  0000 L CNN
	1    4700 7950
	1    0    0    -1  
$EndComp
$EndSCHEMATC
