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
LIBS:headers
LIBS:DIP_switches
LIBS:LTC299x
LIBS:memory_devices
LIBS:switches
LIBS:Toshiba
LIBS:LTC3_components
LIBS:Launch_Tower_Computer_III-cache
EELAYER 25 0
EELAYER END
$Descr B 17000 11000
encoding utf-8
Sheet 6 6
Title "LTC3 External Device Triggers"
Date "30 may 2015"
Rev "1"
Comp "Portland State Aerospace Society <http://psas.pdx.edu/>"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L R R601
U 1 1 553284D9
P 4550 4300
F 0 "R601" V 4630 4300 40  0000 C CNN
F 1 "10 kΩ" V 4557 4301 40  0000 C CNN
F 2 "~" V 4480 4300 30  0000 C CNN
F 3 "~" H 4550 4300 30  0000 C CNN
	1    4550 4300
	1    0    0    -1  
$EndComp
Text HLabel 4350 4000 0    60   Input ~ 0
GPIO_EXT_TRIG_1
$Comp
L GND #PWR601
U 1 1 553284E3
P 4550 4650
F 0 "#PWR601" H 4550 4650 30  0001 C CNN
F 1 "GND" H 4550 4580 30  0001 C CNN
F 2 "" H 4550 4650 60  0000 C CNN
F 3 "" H 4550 4650 60  0000 C CNN
	1    4550 4650
	1    0    0    -1  
$EndComp
Text HLabel 5600 2250 1    60   Input ~ 0
VCC_5V
$Comp
L TLP3542 IC601
U 1 1 553284F0
P 5500 3550
F 0 "IC601" H 5290 3780 40  0000 C CNN
F 1 "TLP3542" H 5640 3410 40  0000 C CNN
F 2 "DIP6" H 5290 3420 30  0000 C CIN
F 3 "~" H 5500 3600 60  0000 C CNN
	1    5500 3550
	1    0    0    -1  
$EndComp
$Comp
L JUMPER3 JP601
U 1 1 5532850E
P 6000 3150
F 0 "JP601" H 6050 3050 40  0000 L CNN
F 1 "JUMPER3" H 6000 3250 40  0000 C CNN
F 2 "~" H 6000 3150 60  0000 C CNN
F 3 "~" H 6000 3150 60  0000 C CNN
	1    6000 3150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR603
U 1 1 55328517
P 6350 3250
F 0 "#PWR603" H 6350 3250 30  0001 C CNN
F 1 "GND" H 6350 3180 30  0001 C CNN
F 2 "" H 6350 3250 60  0000 C CNN
F 3 "" H 6350 3250 60  0000 C CNN
	1    6350 3250
	1    0    0    -1  
$EndComp
$Comp
L THERMISTOR PTC601
U 1 1 5532861A
P 5600 2750
F 0 "PTC601" V 5700 2800 50  0000 C CNN
F 1 "06R075B" V 5500 2750 50  0000 C CNN
F 2 "~" H 5600 2750 60  0000 C CNN
F 3 "~" H 5600 2750 60  0000 C CNN
	1    5600 2750
	1    0    0    -1  
$EndComp
$Comp
L R R605
U 1 1 55321C83
P 6100 3900
F 0 "R605" V 6180 3900 40  0000 C CNN
F 1 "R" V 6107 3901 40  0000 C CNN
F 2 "~" V 6030 3900 30  0000 C CNN
F 3 "~" H 6100 3900 30  0000 C CNN
	1    6100 3900
	1    0    0    -1  
$EndComp
$Comp
L C C601
U 1 1 55321C89
P 6450 3900
F 0 "C601" H 6450 4000 40  0000 L CNN
F 1 "C" H 6456 3815 40  0000 L CNN
F 2 "~" H 6488 3750 30  0000 C CNN
F 3 "~" H 6450 3900 60  0000 C CNN
	1    6450 3900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR605
U 1 1 55321C96
P 6450 4300
F 0 "#PWR605" H 6450 4300 30  0001 C CNN
F 1 "GND" H 6450 4230 30  0001 C CNN
F 2 "" H 6450 4300 60  0000 C CNN
F 3 "" H 6450 4300 60  0000 C CNN
	1    6450 4300
	1    0    0    -1  
$EndComp
$Comp
L R R603
U 1 1 55321E6F
P 5000 3100
F 0 "R603" V 5080 3100 40  0000 C CNN
F 1 "270 Ω" V 5007 3101 40  0000 C CNN
F 2 "~" V 4930 3100 30  0000 C CNN
F 3 "~" H 5000 3100 30  0000 C CNN
	1    5000 3100
	1    0    0    -1  
$EndComp
Text Notes 1150 1750 0    80   ~ 0
TODO: Determine values for bleeder resistor\nand filter capacitor on each output connector.
$Comp
L CONN_01X02 P601
U 1 1 557D435E
P 7000 3900
F 0 "P601" H 7000 4050 50  0000 C CNN
F 1 "CONN_01X02" V 7100 3900 50  0000 C CNN
F 2 "" H 7000 3900 60  0000 C CNN
F 3 "" H 7000 3900 60  0000 C CNN
	1    7000 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 4150 4550 4000
Wire Wire Line
	5000 3250 5000 3400
Wire Wire Line
	5000 3400 5150 3400
Wire Wire Line
	6000 3400 5850 3400
Wire Wire Line
	5600 2250 5600 2500
Wire Wire Line
	5150 3600 5000 3600
Wire Wire Line
	5600 3000 5600 3150
Wire Wire Line
	5600 3150 5750 3150
Wire Wire Line
	6000 3250 6000 3400
Wire Wire Line
	5850 3600 6800 3600
Wire Wire Line
	6100 3600 6100 3750
Connection ~ 6100 3600
Connection ~ 6450 3600
Wire Wire Line
	5000 3600 5000 3750
Wire Wire Line
	4350 4000 4700 4000
Connection ~ 4550 4000
Wire Wire Line
	6450 4050 6450 4300
Wire Wire Line
	6100 4050 6100 4250
Wire Wire Line
	6100 4250 6450 4250
Connection ~ 6450 4250
Wire Wire Line
	6800 3950 6800 4150
Wire Wire Line
	6800 4150 6450 4150
Connection ~ 6450 4150
Wire Wire Line
	6800 3600 6800 3850
Wire Wire Line
	6450 3750 6450 3600
Wire Wire Line
	4550 4650 4550 4450
Wire Wire Line
	5000 4150 5000 4550
Wire Wire Line
	5000 4550 4550 4550
Connection ~ 4550 4550
Wire Wire Line
	6350 3250 6350 3150
Wire Wire Line
	6350 3150 6250 3150
Wire Wire Line
	5000 2950 5000 2400
Wire Wire Line
	5000 2400 5600 2400
Connection ~ 5600 2400
$Comp
L R R607
U 1 1 557DA4A4
P 10100 4300
F 0 "R607" V 10180 4300 40  0000 C CNN
F 1 "10 kΩ" V 10107 4301 40  0000 C CNN
F 2 "~" V 10030 4300 30  0000 C CNN
F 3 "~" H 10100 4300 30  0000 C CNN
	1    10100 4300
	1    0    0    -1  
$EndComp
Text HLabel 9900 4000 0    60   Input ~ 0
GPIO_EXT_TRIG_2
$Comp
L GND #PWR607
U 1 1 557DA4AC
P 10100 4650
F 0 "#PWR607" H 10100 4650 30  0001 C CNN
F 1 "GND" H 10100 4580 30  0001 C CNN
F 2 "" H 10100 4650 60  0000 C CNN
F 3 "" H 10100 4650 60  0000 C CNN
	1    10100 4650
	1    0    0    -1  
$EndComp
Text HLabel 11150 2250 1    60   Input ~ 0
VCC_5V
$Comp
L TLP3542 IC603
U 1 1 557DA4B3
P 11050 3550
F 0 "IC603" H 10840 3780 40  0000 C CNN
F 1 "TLP3542" H 11190 3410 40  0000 C CNN
F 2 "DIP6" H 10840 3420 30  0000 C CIN
F 3 "~" H 11050 3600 60  0000 C CNN
	1    11050 3550
	1    0    0    -1  
$EndComp
$Comp
L JUMPER3 JP603
U 1 1 557DA4BA
P 11550 3150
F 0 "JP603" H 11600 3050 40  0000 L CNN
F 1 "JUMPER3" H 11550 3250 40  0000 C CNN
F 2 "~" H 11550 3150 60  0000 C CNN
F 3 "~" H 11550 3150 60  0000 C CNN
	1    11550 3150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR609
U 1 1 557DA4C1
P 11900 3250
F 0 "#PWR609" H 11900 3250 30  0001 C CNN
F 1 "GND" H 11900 3180 30  0001 C CNN
F 2 "" H 11900 3250 60  0000 C CNN
F 3 "" H 11900 3250 60  0000 C CNN
	1    11900 3250
	1    0    0    -1  
$EndComp
$Comp
L THERMISTOR PTC603
U 1 1 557DA4C7
P 11150 2750
F 0 "PTC603" V 11250 2800 50  0000 C CNN
F 1 "06R075B" V 11050 2750 50  0000 C CNN
F 2 "~" H 11150 2750 60  0000 C CNN
F 3 "~" H 11150 2750 60  0000 C CNN
	1    11150 2750
	1    0    0    -1  
$EndComp
$Comp
L R R611
U 1 1 557DA4CE
P 11650 3900
F 0 "R611" V 11730 3900 40  0000 C CNN
F 1 "R" V 11657 3901 40  0000 C CNN
F 2 "~" V 11580 3900 30  0000 C CNN
F 3 "~" H 11650 3900 30  0000 C CNN
	1    11650 3900
	1    0    0    -1  
$EndComp
$Comp
L C C603
U 1 1 557DA4D5
P 12000 3900
F 0 "C603" H 12000 4000 40  0000 L CNN
F 1 "C" H 12006 3815 40  0000 L CNN
F 2 "~" H 12038 3750 30  0000 C CNN
F 3 "~" H 12000 3900 60  0000 C CNN
	1    12000 3900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR610
U 1 1 557DA4DC
P 12000 4300
F 0 "#PWR610" H 12000 4300 30  0001 C CNN
F 1 "GND" H 12000 4230 30  0001 C CNN
F 2 "" H 12000 4300 60  0000 C CNN
F 3 "" H 12000 4300 60  0000 C CNN
	1    12000 4300
	1    0    0    -1  
$EndComp
$Comp
L R R609
U 1 1 557DA4E2
P 10550 3100
F 0 "R609" V 10630 3100 40  0000 C CNN
F 1 "270 Ω" V 10557 3101 40  0000 C CNN
F 2 "~" V 10480 3100 30  0000 C CNN
F 3 "~" H 10550 3100 30  0000 C CNN
	1    10550 3100
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P603
U 1 1 557DA4F0
P 12550 3900
F 0 "P603" H 12550 4050 50  0000 C CNN
F 1 "CONN_01X02" V 12650 3900 50  0000 C CNN
F 2 "" H 12550 3900 60  0000 C CNN
F 3 "" H 12550 3900 60  0000 C CNN
	1    12550 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 4150 10100 4000
Wire Wire Line
	10550 3250 10550 3400
Wire Wire Line
	10550 3400 10700 3400
Wire Wire Line
	11550 3400 11400 3400
Wire Wire Line
	11150 2250 11150 2500
Wire Wire Line
	10700 3600 10550 3600
Wire Wire Line
	11150 3000 11150 3150
Wire Wire Line
	11150 3150 11300 3150
Wire Wire Line
	11550 3250 11550 3400
Wire Wire Line
	11400 3600 12350 3600
Wire Wire Line
	11650 3600 11650 3750
Connection ~ 11650 3600
Connection ~ 12000 3600
Wire Wire Line
	10550 3600 10550 3750
Wire Wire Line
	9900 4000 10250 4000
Connection ~ 10100 4000
Wire Wire Line
	12000 4050 12000 4300
Wire Wire Line
	11650 4050 11650 4250
Wire Wire Line
	11650 4250 12000 4250
Connection ~ 12000 4250
Wire Wire Line
	12350 3950 12350 4150
Wire Wire Line
	12350 4150 12000 4150
Connection ~ 12000 4150
Wire Wire Line
	12350 3600 12350 3850
Wire Wire Line
	12000 3750 12000 3600
Wire Wire Line
	10100 4650 10100 4450
Wire Wire Line
	10550 4150 10550 4550
Wire Wire Line
	10550 4550 10100 4550
Connection ~ 10100 4550
Wire Wire Line
	11900 3250 11900 3150
Wire Wire Line
	11900 3150 11800 3150
Wire Wire Line
	10550 2950 10550 2400
Wire Wire Line
	10550 2400 11150 2400
Connection ~ 11150 2400
$Comp
L R R602
U 1 1 557DAADD
P 4550 8300
F 0 "R602" V 4630 8300 40  0000 C CNN
F 1 "10 kΩ" V 4557 8301 40  0000 C CNN
F 2 "~" V 4480 8300 30  0000 C CNN
F 3 "~" H 4550 8300 30  0000 C CNN
	1    4550 8300
	1    0    0    -1  
$EndComp
Text HLabel 4350 8000 0    60   Input ~ 0
GPIO_EXT_TRIG_3
$Comp
L GND #PWR602
U 1 1 557DAAE5
P 4550 8650
F 0 "#PWR602" H 4550 8650 30  0001 C CNN
F 1 "GND" H 4550 8580 30  0001 C CNN
F 2 "" H 4550 8650 60  0000 C CNN
F 3 "" H 4550 8650 60  0000 C CNN
	1    4550 8650
	1    0    0    -1  
$EndComp
Text HLabel 5600 6250 1    60   Input ~ 0
VCC_5V
$Comp
L TLP3542 IC602
U 1 1 557DAAEC
P 5500 7550
F 0 "IC602" H 5290 7780 40  0000 C CNN
F 1 "TLP3542" H 5640 7410 40  0000 C CNN
F 2 "DIP6" H 5290 7420 30  0000 C CIN
F 3 "~" H 5500 7600 60  0000 C CNN
	1    5500 7550
	1    0    0    -1  
$EndComp
$Comp
L JUMPER3 JP602
U 1 1 557DAAF3
P 6000 7150
F 0 "JP602" H 6050 7050 40  0000 L CNN
F 1 "JUMPER3" H 6000 7250 40  0000 C CNN
F 2 "~" H 6000 7150 60  0000 C CNN
F 3 "~" H 6000 7150 60  0000 C CNN
	1    6000 7150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR604
U 1 1 557DAAFA
P 6350 7250
F 0 "#PWR604" H 6350 7250 30  0001 C CNN
F 1 "GND" H 6350 7180 30  0001 C CNN
F 2 "" H 6350 7250 60  0000 C CNN
F 3 "" H 6350 7250 60  0000 C CNN
	1    6350 7250
	1    0    0    -1  
$EndComp
$Comp
L THERMISTOR PTC602
U 1 1 557DAB00
P 5600 6750
F 0 "PTC602" V 5700 6800 50  0000 C CNN
F 1 "06R075B" V 5500 6750 50  0000 C CNN
F 2 "~" H 5600 6750 60  0000 C CNN
F 3 "~" H 5600 6750 60  0000 C CNN
	1    5600 6750
	1    0    0    -1  
$EndComp
$Comp
L R R606
U 1 1 557DAB07
P 6100 7900
F 0 "R606" V 6180 7900 40  0000 C CNN
F 1 "R" V 6107 7901 40  0000 C CNN
F 2 "~" V 6030 7900 30  0000 C CNN
F 3 "~" H 6100 7900 30  0000 C CNN
	1    6100 7900
	1    0    0    -1  
$EndComp
$Comp
L C C602
U 1 1 557DAB0E
P 6450 7900
F 0 "C602" H 6450 8000 40  0000 L CNN
F 1 "C" H 6456 7815 40  0000 L CNN
F 2 "~" H 6488 7750 30  0000 C CNN
F 3 "~" H 6450 7900 60  0000 C CNN
	1    6450 7900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR606
U 1 1 557DAB15
P 6450 8300
F 0 "#PWR606" H 6450 8300 30  0001 C CNN
F 1 "GND" H 6450 8230 30  0001 C CNN
F 2 "" H 6450 8300 60  0000 C CNN
F 3 "" H 6450 8300 60  0000 C CNN
	1    6450 8300
	1    0    0    -1  
$EndComp
$Comp
L R R604
U 1 1 557DAB1B
P 5000 7100
F 0 "R604" V 5080 7100 40  0000 C CNN
F 1 "270 Ω" V 5007 7101 40  0000 C CNN
F 2 "~" V 4930 7100 30  0000 C CNN
F 3 "~" H 5000 7100 30  0000 C CNN
	1    5000 7100
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P602
U 1 1 557DAB29
P 7000 7900
F 0 "P602" H 7000 8050 50  0000 C CNN
F 1 "CONN_01X02" V 7100 7900 50  0000 C CNN
F 2 "" H 7000 7900 60  0000 C CNN
F 3 "" H 7000 7900 60  0000 C CNN
	1    7000 7900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 8150 4550 8000
Wire Wire Line
	5000 7250 5000 7400
Wire Wire Line
	5000 7400 5150 7400
Wire Wire Line
	6000 7400 5850 7400
Wire Wire Line
	5600 6250 5600 6500
Wire Wire Line
	5150 7600 5000 7600
Wire Wire Line
	5600 7000 5600 7150
Wire Wire Line
	5600 7150 5750 7150
Wire Wire Line
	6000 7250 6000 7400
Wire Wire Line
	5850 7600 6800 7600
Wire Wire Line
	6100 7600 6100 7750
Connection ~ 6100 7600
Connection ~ 6450 7600
Wire Wire Line
	5000 7600 5000 7750
Wire Wire Line
	4350 8000 4700 8000
Connection ~ 4550 8000
Wire Wire Line
	6450 8050 6450 8300
Wire Wire Line
	6100 8050 6100 8250
Wire Wire Line
	6100 8250 6450 8250
Connection ~ 6450 8250
Wire Wire Line
	6800 7950 6800 8150
Wire Wire Line
	6800 8150 6450 8150
Connection ~ 6450 8150
Wire Wire Line
	6800 7600 6800 7850
Wire Wire Line
	6450 7750 6450 7600
Wire Wire Line
	4550 8650 4550 8450
Wire Wire Line
	5000 8150 5000 8550
Wire Wire Line
	5000 8550 4550 8550
Connection ~ 4550 8550
Wire Wire Line
	6350 7250 6350 7150
Wire Wire Line
	6350 7150 6250 7150
Wire Wire Line
	5000 6950 5000 6400
Wire Wire Line
	5000 6400 5600 6400
Connection ~ 5600 6400
$Comp
L R R608
U 1 1 557DB143
P 10350 8250
F 0 "R608" V 10430 8250 40  0000 C CNN
F 1 "10 kΩ" V 10357 8251 40  0000 C CNN
F 2 "~" V 10280 8250 30  0000 C CNN
F 3 "~" H 10350 8250 30  0000 C CNN
	1    10350 8250
	1    0    0    -1  
$EndComp
Text HLabel 10150 7950 0    60   Input ~ 0
GPIO_EXT_TRIG_4
$Comp
L GND #PWR608
U 1 1 557DB14B
P 10350 8600
F 0 "#PWR608" H 10350 8600 30  0001 C CNN
F 1 "GND" H 10350 8530 30  0001 C CNN
F 2 "" H 10350 8600 60  0000 C CNN
F 3 "" H 10350 8600 60  0000 C CNN
	1    10350 8600
	1    0    0    -1  
$EndComp
Text HLabel 11400 6200 1    60   Input ~ 0
VCC_5V
$Comp
L TLP3542 IC604
U 1 1 557DB152
P 11300 7500
F 0 "IC604" H 11090 7730 40  0000 C CNN
F 1 "TLP3542" H 11440 7360 40  0000 C CNN
F 2 "DIP6" H 11090 7370 30  0000 C CIN
F 3 "~" H 11300 7550 60  0000 C CNN
	1    11300 7500
	1    0    0    -1  
$EndComp
$Comp
L JUMPER3 JP604
U 1 1 557DB159
P 11800 7100
F 0 "JP604" H 11850 7000 40  0000 L CNN
F 1 "JUMPER3" H 11800 7200 40  0000 C CNN
F 2 "~" H 11800 7100 60  0000 C CNN
F 3 "~" H 11800 7100 60  0000 C CNN
	1    11800 7100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR611
U 1 1 557DB160
P 12150 7200
F 0 "#PWR611" H 12150 7200 30  0001 C CNN
F 1 "GND" H 12150 7130 30  0001 C CNN
F 2 "" H 12150 7200 60  0000 C CNN
F 3 "" H 12150 7200 60  0000 C CNN
	1    12150 7200
	1    0    0    -1  
$EndComp
$Comp
L THERMISTOR PTC604
U 1 1 557DB166
P 11400 6700
F 0 "PTC604" V 11500 6750 50  0000 C CNN
F 1 "06R075B" V 11300 6700 50  0000 C CNN
F 2 "~" H 11400 6700 60  0000 C CNN
F 3 "~" H 11400 6700 60  0000 C CNN
	1    11400 6700
	1    0    0    -1  
$EndComp
$Comp
L R R612
U 1 1 557DB16D
P 11900 7850
F 0 "R612" V 11980 7850 40  0000 C CNN
F 1 "R" V 11907 7851 40  0000 C CNN
F 2 "~" V 11830 7850 30  0000 C CNN
F 3 "~" H 11900 7850 30  0000 C CNN
	1    11900 7850
	1    0    0    -1  
$EndComp
$Comp
L C C604
U 1 1 557DB174
P 12250 7850
F 0 "C604" H 12250 7950 40  0000 L CNN
F 1 "C" H 12256 7765 40  0000 L CNN
F 2 "~" H 12288 7700 30  0000 C CNN
F 3 "~" H 12250 7850 60  0000 C CNN
	1    12250 7850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR612
U 1 1 557DB17B
P 12250 8250
F 0 "#PWR612" H 12250 8250 30  0001 C CNN
F 1 "GND" H 12250 8180 30  0001 C CNN
F 2 "" H 12250 8250 60  0000 C CNN
F 3 "" H 12250 8250 60  0000 C CNN
	1    12250 8250
	1    0    0    -1  
$EndComp
$Comp
L R R610
U 1 1 557DB181
P 10800 7050
F 0 "R610" V 10880 7050 40  0000 C CNN
F 1 "270 Ω" V 10807 7051 40  0000 C CNN
F 2 "~" V 10730 7050 30  0000 C CNN
F 3 "~" H 10800 7050 30  0000 C CNN
	1    10800 7050
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P604
U 1 1 557DB18F
P 12800 7850
F 0 "P604" H 12800 8000 50  0000 C CNN
F 1 "CONN_01X02" V 12900 7850 50  0000 C CNN
F 2 "" H 12800 7850 60  0000 C CNN
F 3 "" H 12800 7850 60  0000 C CNN
	1    12800 7850
	1    0    0    -1  
$EndComp
Wire Wire Line
	10350 8100 10350 7950
Wire Wire Line
	10800 7200 10800 7350
Wire Wire Line
	10800 7350 10950 7350
Wire Wire Line
	11800 7350 11650 7350
Wire Wire Line
	11400 6200 11400 6450
Wire Wire Line
	10950 7550 10800 7550
Wire Wire Line
	11400 6950 11400 7100
Wire Wire Line
	11400 7100 11550 7100
Wire Wire Line
	11800 7200 11800 7350
Wire Wire Line
	11650 7550 12600 7550
Wire Wire Line
	11900 7550 11900 7700
Connection ~ 11900 7550
Connection ~ 12250 7550
Wire Wire Line
	10800 7550 10800 7700
Wire Wire Line
	10150 7950 10500 7950
Connection ~ 10350 7950
Wire Wire Line
	12250 8000 12250 8250
Wire Wire Line
	11900 8000 11900 8200
Wire Wire Line
	11900 8200 12250 8200
Connection ~ 12250 8200
Wire Wire Line
	12600 7900 12600 8100
Wire Wire Line
	12600 8100 12250 8100
Connection ~ 12250 8100
Wire Wire Line
	12600 7550 12600 7800
Wire Wire Line
	12250 7700 12250 7550
Wire Wire Line
	10350 8600 10350 8400
Wire Wire Line
	10800 8100 10800 8500
Wire Wire Line
	10800 8500 10350 8500
Connection ~ 10350 8500
Wire Wire Line
	12150 7200 12150 7100
Wire Wire Line
	12150 7100 12050 7100
Wire Wire Line
	10800 6900 10800 6350
Wire Wire Line
	10800 6350 11400 6350
Connection ~ 11400 6350
$Comp
L PMV45EN Q601
U 1 1 557CD45C
P 4900 3950
F 0 "Q601" H 5100 4025 50  0000 L CNN
F 1 "PMV45EN" H 5100 3950 50  0000 L CNN
F 2 "SOT-23" H 5100 3875 50  0000 L CIN
F 3 "" H 4900 3950 50  0000 L CNN
	1    4900 3950
	1    0    0    -1  
$EndComp
$Comp
L PMV45EN Q603
U 1 1 557CE373
P 10450 3950
F 0 "Q603" H 10650 4025 50  0000 L CNN
F 1 "PMV45EN" H 10650 3950 50  0000 L CNN
F 2 "SOT-23" H 10650 3875 50  0000 L CIN
F 3 "" H 10450 3950 50  0000 L CNN
	1    10450 3950
	1    0    0    -1  
$EndComp
$Comp
L PMV45EN Q604
U 1 1 557CEECE
P 10700 7900
F 0 "Q604" H 10900 7975 50  0000 L CNN
F 1 "PMV45EN" H 10900 7900 50  0000 L CNN
F 2 "SOT-23" H 10900 7825 50  0000 L CIN
F 3 "" H 10700 7900 50  0000 L CNN
	1    10700 7900
	1    0    0    -1  
$EndComp
$Comp
L PMV45EN Q602
U 1 1 557CFBDB
P 4900 7950
F 0 "Q602" H 5100 8025 50  0000 L CNN
F 1 "PMV45EN" H 5100 7950 50  0000 L CNN
F 2 "SOT-23" H 5100 7875 50  0000 L CIN
F 3 "" H 4900 7950 50  0000 L CNN
	1    4900 7950
	1    0    0    -1  
$EndComp
$EndSCHEMATC
