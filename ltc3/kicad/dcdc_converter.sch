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
LIBS:Launch_Tower_Computer_III-cache
EELAYER 25 0
EELAYER END
$Descr B 17000 11000
encoding utf-8
Sheet 4 7
Title "LTC3 DC-DC Converters"
Date "2015-11-25"
Rev "A"
Comp "Portland State Aerospace Society <http://psas.pdx.edu/>"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L GND #PWR404
U 1 1 5557F6A3
P 3250 2350
F 0 "#PWR404" H 3250 2350 30  0001 C CNN
F 1 "GND" H 3250 2280 30  0001 C CNN
F 2 "" H 3250 2350 60  0000 C CNN
F 3 "" H 3250 2350 60  0000 C CNN
	1    3250 2350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR405
U 1 1 5557F6B2
P 5650 2350
F 0 "#PWR405" H 5650 2350 30  0001 C CNN
F 1 "GND" H 5650 2280 30  0001 C CNN
F 2 "" H 5650 2350 60  0000 C CNN
F 3 "" H 5650 2350 60  0000 C CNN
	1    5650 2350
	1    0    0    -1  
$EndComp
$Comp
L CP1 C402
U 1 1 5557F6DE
P 6000 2200
F 0 "C402" H 6050 2300 50  0000 L CNN
F 1 "330μ" H 6050 2100 50  0000 L CNN
F 2 "~" H 6000 2200 60  0000 C CNN
F 3 "~" H 6000 2200 60  0000 C CNN
	1    6000 2200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR407
U 1 1 5557F6ED
P 6000 2550
F 0 "#PWR407" H 6000 2550 30  0001 C CNN
F 1 "GND" H 6000 2480 30  0001 C CNN
F 2 "" H 6000 2550 60  0000 C CNN
F 3 "" H 6000 2550 60  0000 C CNN
	1    6000 2550
	1    0    0    -1  
$EndComp
$Comp
L C C401
U 1 1 5557F70C
P 2750 2200
F 0 "C401" H 2750 2300 40  0000 L CNN
F 1 "2μ2" H 2756 2115 40  0000 L CNN
F 2 "~" H 2788 2050 30  0000 C CNN
F 3 "~" H 2750 2200 60  0000 C CNN
F 4 "ceramic, X[57]R" V 2600 2200 50  0000 C CNN "Note"
	1    2750 2200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR406
U 1 1 5557F71B
P 2750 2500
F 0 "#PWR406" H 2750 2500 30  0001 C CNN
F 1 "GND" H 2750 2430 30  0001 C CNN
F 2 "" H 2750 2500 60  0000 C CNN
F 3 "" H 2750 2500 60  0000 C CNN
	1    2750 2500
	1    0    0    -1  
$EndComp
$Comp
L R R403
U 1 1 555D0B08
P 4450 3050
F 0 "R403" V 4530 3050 50  0000 C CNN
F 1 "21k" V 4450 3050 50  0000 C CNN
F 2 "" V 4380 3050 30  0000 C CNN
F 3 "" H 4450 3050 30  0000 C CNN
F 4 "1%, 50mW" V 4350 3050 50  0000 C CNN "Note"
	1    4450 3050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR409
U 1 1 555D0B2F
P 4450 3300
F 0 "#PWR409" H 4450 3050 50  0001 C CNN
F 1 "GND" H 4450 3150 50  0000 C CNN
F 2 "" H 4450 3300 60  0000 C CNN
F 3 "" H 4450 3300 60  0000 C CNN
	1    4450 3300
	1    0    0    -1  
$EndComp
Text HLabel 2900 3300 0    60   Input ~ 0
5V_EN
$Comp
L GND #PWR412
U 1 1 55945CE3
P 3250 5350
F 0 "#PWR412" H 3250 5350 30  0001 C CNN
F 1 "GND" H 3250 5280 30  0001 C CNN
F 2 "" H 3250 5350 60  0000 C CNN
F 3 "" H 3250 5350 60  0000 C CNN
	1    3250 5350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR413
U 1 1 55945CE9
P 5650 5350
F 0 "#PWR413" H 5650 5350 30  0001 C CNN
F 1 "GND" H 5650 5280 30  0001 C CNN
F 2 "" H 5650 5350 60  0000 C CNN
F 3 "" H 5650 5350 60  0000 C CNN
	1    5650 5350
	1    0    0    -1  
$EndComp
$Comp
L CP1 C404
U 1 1 55945CF8
P 6000 5200
F 0 "C404" H 6050 5300 50  0000 L CNN
F 1 "330μ" H 6050 5100 50  0000 L CNN
F 2 "~" H 6000 5200 60  0000 C CNN
F 3 "~" H 6000 5200 60  0000 C CNN
	1    6000 5200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR414
U 1 1 55945CFE
P 6000 5550
F 0 "#PWR414" H 6000 5550 30  0001 C CNN
F 1 "GND" H 6000 5480 30  0001 C CNN
F 2 "" H 6000 5550 60  0000 C CNN
F 3 "" H 6000 5550 60  0000 C CNN
	1    6000 5550
	1    0    0    -1  
$EndComp
$Comp
L C C406
U 1 1 55945D07
P 2100 5400
F 0 "C406" H 2100 5500 40  0000 L CNN
F 1 "4μ7" H 2106 5315 40  0000 L CNN
F 2 "~" H 2138 5250 30  0000 C CNN
F 3 "~" H 2100 5400 60  0000 C CNN
F 4 "ceramic, X[57]R" V 1950 5400 50  0001 C CNN "Note"
	1    2100 5400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR415
U 1 1 55945D0D
P 2750 5800
F 0 "#PWR415" H 2750 5800 30  0001 C CNN
F 1 "GND" H 2750 5730 30  0001 C CNN
F 2 "" H 2750 5800 60  0000 C CNN
F 3 "" H 2750 5800 60  0000 C CNN
	1    2750 5800
	1    0    0    -1  
$EndComp
$Comp
L R R405
U 1 1 55945D17
P 4450 6050
F 0 "R405" V 4530 6050 50  0000 C CNN
F 1 "383k" V 4450 6050 50  0000 C CNN
F 2 "" V 4380 6050 30  0000 C CNN
F 3 "" H 4450 6050 30  0000 C CNN
F 4 "1%, 50mW" V 4350 6050 50  0000 C CNN "Note"
	1    4450 6050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR416
U 1 1 55945D1D
P 4450 6300
F 0 "#PWR416" H 4450 6050 50  0001 C CNN
F 1 "GND" H 4450 6150 50  0000 C CNN
F 2 "" H 4450 6300 60  0000 C CNN
F 3 "" H 4450 6300 60  0000 C CNN
	1    4450 6300
	1    0    0    -1  
$EndComp
Text HLabel 2900 6300 0    60   Input ~ 0
12V_EN
$Comp
L GND #PWR419
U 1 1 55946855
P 3250 8350
F 0 "#PWR419" H 3250 8350 30  0001 C CNN
F 1 "GND" H 3250 8280 30  0001 C CNN
F 2 "" H 3250 8350 60  0000 C CNN
F 3 "" H 3250 8350 60  0000 C CNN
	1    3250 8350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR420
U 1 1 5594685B
P 5650 8350
F 0 "#PWR420" H 5650 8350 30  0001 C CNN
F 1 "GND" H 5650 8280 30  0001 C CNN
F 2 "" H 5650 8350 60  0000 C CNN
F 3 "" H 5650 8350 60  0000 C CNN
	1    5650 8350
	1    0    0    -1  
$EndComp
$Comp
L CP1 C409
U 1 1 55946867
P 6000 8200
F 0 "C409" H 6050 8300 50  0000 L CNN
F 1 "330μ" H 6050 8100 50  0000 L CNN
F 2 "~" H 6000 8200 60  0000 C CNN
F 3 "~" H 6000 8200 60  0000 C CNN
	1    6000 8200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR421
U 1 1 5594686D
P 6000 8550
F 0 "#PWR421" H 6000 8550 30  0001 C CNN
F 1 "GND" H 6000 8480 30  0001 C CNN
F 2 "" H 6000 8550 60  0000 C CNN
F 3 "" H 6000 8550 60  0000 C CNN
	1    6000 8550
	1    0    0    -1  
$EndComp
$Comp
L R R407
U 1 1 55946886
P 4450 9050
F 0 "R407" V 4530 9050 50  0000 C CNN
F 1 "2k91" V 4450 9050 50  0000 C CNN
F 2 "" V 4380 9050 30  0000 C CNN
F 3 "" H 4450 9050 30  0000 C CNN
F 4 "1%, 50mW" V 4350 9050 50  0000 C CNN "Note"
	1    4450 9050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR423
U 1 1 5594688C
P 4450 9300
F 0 "#PWR423" H 4450 9050 50  0001 C CNN
F 1 "GND" H 4450 9150 50  0000 C CNN
F 2 "" H 4450 9300 60  0000 C CNN
F 3 "" H 4450 9300 60  0000 C CNN
	1    4450 9300
	1    0    0    -1  
$EndComp
Text HLabel 2900 9300 0    60   Input ~ 0
19V_EN
Text Notes 12250 7650 0    100  ~ 0
NB:\n1. V_sense should connect as close as possible\nto the largest load on the given power rail.\n2. Place Rset resistors as close to package pins\n   as possible.\n3. Ceramic (Cin) capacitors should be located\n   within 0.5 in of the input pins.\n4. We may need heat sinks on the converters.\n   The datasheet indicates a range of 2W to 5W\n   of power dissipation given our specs.\n5. Pay attention to the datasheet's recommendations\n   regarding capacitor selection.
$Comp
L C C407
U 1 1 55949753
P 2450 5400
F 0 "C407" H 2450 5500 40  0000 L CNN
F 1 "4μ7" H 2456 5315 40  0000 L CNN
F 2 "~" H 2488 5250 30  0000 C CNN
F 3 "~" H 2450 5400 60  0000 C CNN
F 4 "ceramic, X[57]R" V 2300 5400 50  0001 C CNN "Note"
	1    2450 5400
	1    0    0    -1  
$EndComp
$Comp
L C C405
U 1 1 559497A5
P 1800 5400
F 0 "C405" H 1800 5500 40  0000 L CNN
F 1 "4μ7" H 1806 5315 40  0000 L CNN
F 2 "~" H 1838 5250 30  0000 C CNN
F 3 "~" H 1800 5400 60  0000 C CNN
F 4 "ceramic, X[57]R" V 1650 5400 50  0000 C CNN "Note"
	1    1800 5400
	1    0    0    -1  
$EndComp
$Comp
L C C408
U 1 1 559497EF
P 2750 5400
F 0 "C408" H 2750 5500 40  0000 L CNN
F 1 "4μ7" H 2756 5315 40  0000 L CNN
F 2 "~" H 2788 5250 30  0000 C CNN
F 3 "~" H 2750 5400 60  0000 C CNN
F 4 "ceramic, X[57]R" V 2600 5400 50  0001 C CNN "Note"
	1    2750 5400
	1    0    0    -1  
$EndComp
$Comp
L C C411
U 1 1 5594B45E
P 2100 8400
F 0 "C411" H 2100 8500 40  0000 L CNN
F 1 "4μ7" H 2106 8315 40  0000 L CNN
F 2 "~" H 2138 8250 30  0000 C CNN
F 3 "~" H 2100 8400 60  0000 C CNN
F 4 "ceramic, X[57]R" V 1950 8400 50  0001 C CNN "Note"
	1    2100 8400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR422
U 1 1 5594B465
P 2750 8800
F 0 "#PWR422" H 2750 8800 30  0001 C CNN
F 1 "GND" H 2750 8730 30  0001 C CNN
F 2 "" H 2750 8800 60  0000 C CNN
F 3 "" H 2750 8800 60  0000 C CNN
	1    2750 8800
	1    0    0    -1  
$EndComp
$Comp
L C C412
U 1 1 5594B46E
P 2450 8400
F 0 "C412" H 2450 8500 40  0000 L CNN
F 1 "4μ7" H 2456 8315 40  0000 L CNN
F 2 "~" H 2488 8250 30  0000 C CNN
F 3 "~" H 2450 8400 60  0000 C CNN
F 4 "ceramic, X[57]R" V 2300 8400 50  0001 C CNN "Note"
	1    2450 8400
	1    0    0    -1  
$EndComp
$Comp
L C C410
U 1 1 5594B476
P 1800 8400
F 0 "C410" H 1800 8500 40  0000 L CNN
F 1 "4μ7" H 1806 8315 40  0000 L CNN
F 2 "~" H 1838 8250 30  0000 C CNN
F 3 "~" H 1800 8400 60  0000 C CNN
F 4 "ceramic, X[57]R" V 1650 8400 50  0000 C CNN "Note"
	1    1800 8400
	1    0    0    -1  
$EndComp
$Comp
L C C413
U 1 1 5594B47E
P 2750 8400
F 0 "C413" H 2750 8500 40  0000 L CNN
F 1 "4μ7" H 2756 8315 40  0000 L CNN
F 2 "~" H 2788 8250 30  0000 C CNN
F 3 "~" H 2750 8400 60  0000 C CNN
F 4 "ceramic, X[57]R" V 2600 8400 50  0001 C CNN "Note"
	1    2750 8400
	1    0    0    -1  
$EndComp
Text Notes 12300 9150 0    100  ~ 0
TODO:\n* Capacitor values are minimums.  Consider\n  increasing these.  Consult datasheet for more info.
Text Notes 12700 5000 0    100  ~ 0
Current Sense Resistors\nfull-scale voltage = 0.300 V\nR_sense_max = 0.300/Imax\n1 A = 300mΩ\n3 A = 100mΩ\n5 A = 60mΩ\n10 A = 30mΩ
$Comp
L PTN78020W U401
U 1 1 560CCDB6
P 4450 2000
F 0 "U401" H 4450 2300 80  0000 C CNN
F 1 "PTN78020W" H 4450 2150 80  0000 C CNN
F 2 "" H 4450 2050 60  0000 C CNN
F 3 "" H 4450 2050 60  0000 C CNN
	1    4450 2000
	1    0    0    -1  
$EndComp
$Comp
L PTN78020H U404
U 1 1 560CD122
P 4450 8000
F 0 "U404" H 4450 8300 80  0000 C CNN
F 1 "PTN78020H" H 4450 8150 80  0000 C CNN
F 2 "" H 4450 8050 60  0000 C CNN
F 3 "" H 4450 8050 60  0000 C CNN
	1    4450 8000
	1    0    0    -1  
$EndComp
$Comp
L PTN78020H U403
U 1 1 560CD17B
P 4450 5000
F 0 "U403" H 4450 5300 80  0000 C CNN
F 1 "PTN78020H" H 4450 5150 80  0000 C CNN
F 2 "" H 4450 5050 60  0000 C CNN
F 3 "" H 4450 5050 60  0000 C CNN
	1    4450 5000
	1    0    0    -1  
$EndComp
$Comp
L R4T R401
U 1 1 563558F1
P 6750 1800
F 0 "R401" V 6700 1650 50  0000 C CNN
F 1 "0.1" V 6750 1800 50  0000 C CNN
F 2 "" V 6680 1800 30  0000 C CNN
F 3 "" H 6750 1800 30  0000 C CNN
F 4 "1W 1%" V 6650 1900 60  0000 C CNN "Note"
	1    6750 1800
	0    1    1    0   
$EndComp
$Comp
L R4T R404
U 1 1 563597A8
P 6750 4800
F 0 "R404" V 6700 4650 50  0000 C CNN
F 1 "60m" V 6750 4800 50  0000 C CNN
F 2 "" V 6680 4800 30  0000 C CNN
F 3 "" H 6750 4800 30  0000 C CNN
F 4 "1W 1%" V 6650 4900 60  0000 C CNN "Note"
	1    6750 4800
	0    1    1    0   
$EndComp
$Comp
L R4T R406
U 1 1 56359B18
P 6750 7800
F 0 "R406" V 6700 7650 50  0000 C CNN
F 1 "60m" V 6750 7800 50  0000 C CNN
F 2 "" V 6680 7800 30  0000 C CNN
F 3 "" H 6750 7800 30  0000 C CNN
F 4 "1W 1%" V 6650 7900 60  0000 C CNN "Note"
	1    6750 7800
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR402
U 1 1 56538996
P 7250 1550
F 0 "#PWR402" H 7250 1400 50  0001 C CNN
F 1 "+5V" H 7250 1690 50  0000 C CNN
F 2 "" H 7250 1550 60  0000 C CNN
F 3 "" H 7250 1550 60  0000 C CNN
	1    7250 1550
	1    0    0    -1  
$EndComp
$Comp
L VBATT #PWR401
U 1 1 565394B2
P 2400 1550
F 0 "#PWR401" H 2400 1400 50  0001 C CNN
F 1 "VBATT" H 2400 1700 50  0000 C CNN
F 2 "" H 2400 1550 60  0000 C CNN
F 3 "" H 2400 1550 60  0000 C CNN
	1    2400 1550
	1    0    0    -1  
$EndComp
$Comp
L VBATT #PWR410
U 1 1 5653A057
P 2400 4550
F 0 "#PWR410" H 2400 4400 50  0001 C CNN
F 1 "VBATT" H 2400 4700 50  0000 C CNN
F 2 "" H 2400 4550 60  0000 C CNN
F 3 "" H 2400 4550 60  0000 C CNN
	1    2400 4550
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR411
U 1 1 5653A6FD
P 7250 4550
F 0 "#PWR411" H 7250 4400 50  0001 C CNN
F 1 "+12V" H 7250 4690 50  0000 C CNN
F 2 "" H 7250 4550 60  0000 C CNN
F 3 "" H 7250 4550 60  0000 C CNN
	1    7250 4550
	1    0    0    -1  
$EndComp
$Comp
L VBATT #PWR417
U 1 1 5653ADB9
P 2400 7550
F 0 "#PWR417" H 2400 7400 50  0001 C CNN
F 1 "VBATT" H 2400 7700 50  0000 C CNN
F 2 "" H 2400 7550 60  0000 C CNN
F 3 "" H 2400 7550 60  0000 C CNN
	1    2400 7550
	1    0    0    -1  
$EndComp
$Comp
L +19V #PWR418
U 1 1 5653B5C8
P 7250 7550
F 0 "#PWR418" H 7250 7400 50  0001 C CNN
F 1 "+19V" H 7250 7690 50  0000 C CNN
F 2 "" H 7250 7550 60  0000 C CNN
F 3 "" H 7250 7550 60  0000 C CNN
	1    7250 7550
	1    0    0    -1  
$EndComp
Text Notes 12700 3800 0    100  ~ 0
Voltage, Current, & Temp Sense
$Comp
L C C403
U 1 1 56588D41
P 14500 1800
F 0 "C403" H 14525 1900 50  0000 L CNN
F 1 "0.1μ" H 14525 1700 50  0000 L CNN
F 2 "" H 14538 1650 30  0000 C CNN
F 3 "" H 14500 1800 60  0000 C CNN
	1    14500 1800
	1    0    0    -1  
$EndComp
$Comp
L LTC2991 U402
U 1 1 56588D69
P 13600 2350
F 0 "U402" H 13600 2250 50  0000 C CNN
F 1 "LTC2991" H 13600 2450 50  0000 C CNN
F 2 "" H 13600 2350 50  0001 C CNN
F 3 "" H 13600 2350 50  0001 C CNN
	1    13600 2350
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR403
U 1 1 56588D70
P 13600 1400
F 0 "#PWR403" H 13600 1250 50  0001 C CNN
F 1 "+5V" H 13600 1540 50  0000 C CNN
F 2 "" H 13600 1400 60  0000 C CNN
F 3 "" H 13600 1400 60  0000 C CNN
	1    13600 1400
	1    0    0    -1  
$EndComp
Text HLabel 14900 2500 2    50   BiDi ~ 0
I2C_CLOCK
Text HLabel 14900 2600 2    50   BiDi ~ 0
I2C_DATA
Text Notes 12750 3550 0    50   Italic 0
I2C addr 0x90
Text Notes 1500 3800 0    100  ~ 0
+5V DC Rail
Text Notes 1500 6800 0    100  ~ 0
+12V DC Rail
Text Notes 1500 9800 0    100  ~ 0
+19V DC Rail
$Comp
L GND #PWR?
U 1 1 565F268D
P 13600 3300
F 0 "#PWR?" H 13600 3050 50  0001 C CNN
F 1 "GND" H 13600 3150 50  0000 C CNN
F 2 "" H 13600 3300 60  0000 C CNN
F 3 "" H 13600 3300 60  0000 C CNN
	1    13600 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 2200 3250 2200
Wire Wire Line
	3250 2200 3250 2350
Wire Wire Line
	5500 2200 5650 2200
Wire Wire Line
	5650 2200 5650 2350
Wire Wire Line
	2400 1800 3400 1800
Wire Wire Line
	6000 2050 6000 1800
Connection ~ 6000 1800
Wire Wire Line
	6000 2350 6000 2550
Wire Wire Line
	2750 2500 2750 2350
Wire Wire Line
	2750 2050 2750 1800
Connection ~ 2750 1800
Wire Wire Line
	4450 3300 4450 3200
Wire Wire Line
	4450 2900 4450 2800
Wire Wire Line
	4150 2800 4150 3300
Wire Wire Line
	4150 3300 2900 3300
Wire Wire Line
	4750 2800 4750 3300
Wire Wire Line
	4750 3300 7000 3300
Wire Wire Line
	3400 5200 3250 5200
Wire Wire Line
	3250 5200 3250 5350
Wire Wire Line
	5500 5200 5650 5200
Wire Wire Line
	5650 5200 5650 5350
Wire Wire Line
	2400 4800 3400 4800
Wire Wire Line
	6000 5050 6000 4800
Connection ~ 6000 4800
Wire Wire Line
	6000 5350 6000 5550
Wire Wire Line
	2750 5550 2750 5800
Wire Wire Line
	2750 4800 2750 5250
Connection ~ 2750 4800
Wire Wire Line
	4450 6300 4450 6200
Wire Wire Line
	4450 5900 4450 5800
Wire Wire Line
	4150 5800 4150 6300
Wire Wire Line
	4150 6300 2900 6300
Wire Wire Line
	4750 5800 4750 6300
Wire Wire Line
	4750 6300 7000 6300
Wire Wire Line
	3400 8200 3250 8200
Wire Wire Line
	3250 8200 3250 8350
Wire Wire Line
	5500 8200 5650 8200
Wire Wire Line
	5650 8200 5650 8350
Wire Wire Line
	2400 7800 3400 7800
Wire Wire Line
	6000 8050 6000 7800
Connection ~ 6000 7800
Wire Wire Line
	6000 8350 6000 8550
Connection ~ 2750 7800
Wire Wire Line
	4450 9300 4450 9200
Wire Wire Line
	4450 8900 4450 8800
Wire Wire Line
	4150 8800 4150 9300
Wire Wire Line
	4150 9300 2900 9300
Wire Wire Line
	4750 8800 4750 9300
Wire Wire Line
	4750 9300 7000 9300
Wire Wire Line
	2450 5150 2450 5250
Wire Wire Line
	1800 5150 2750 5150
Connection ~ 2750 5150
Wire Wire Line
	2100 5250 2100 5150
Connection ~ 2450 5150
Wire Wire Line
	1800 5250 1800 5150
Connection ~ 2100 5150
Wire Wire Line
	2450 5650 2450 5550
Wire Wire Line
	1800 5650 2750 5650
Connection ~ 2750 5650
Wire Wire Line
	2100 5550 2100 5650
Connection ~ 2450 5650
Wire Wire Line
	1800 5550 1800 5650
Connection ~ 2100 5650
Wire Wire Line
	2750 8550 2750 8800
Wire Wire Line
	2750 7800 2750 8250
Wire Wire Line
	2450 8150 2450 8250
Wire Wire Line
	1800 8150 2750 8150
Connection ~ 2750 8150
Wire Wire Line
	2100 8250 2100 8150
Connection ~ 2450 8150
Wire Wire Line
	1800 8250 1800 8150
Connection ~ 2100 8150
Wire Wire Line
	2450 8650 2450 8550
Wire Wire Line
	1800 8650 2750 8650
Connection ~ 2750 8650
Wire Wire Line
	2100 8550 2100 8650
Connection ~ 2450 8650
Wire Wire Line
	1800 8550 1800 8650
Connection ~ 2100 8650
Wire Wire Line
	5500 4800 6600 4800
Wire Wire Line
	6900 4800 7250 4800
Wire Wire Line
	7000 6300 7000 4800
Connection ~ 7000 4800
Wire Wire Line
	5500 1800 6600 1800
Connection ~ 7000 1800
Wire Wire Line
	7000 3300 7000 1800
Wire Wire Line
	6900 1800 7250 1800
Wire Wire Line
	5500 7800 6600 7800
Wire Wire Line
	6900 7800 7250 7800
Wire Wire Line
	7000 9300 7000 7800
Connection ~ 7000 7800
Wire Wire Line
	6700 1900 6700 2000
Wire Wire Line
	6700 2000 12850 2000
Wire Wire Line
	6800 2100 12850 2100
Wire Wire Line
	6800 2100 6800 1900
Wire Wire Line
	6700 5000 7750 5000
Wire Wire Line
	6700 5000 6700 4900
Wire Wire Line
	6800 4900 6800 5100
Wire Wire Line
	6800 5100 7850 5100
Wire Wire Line
	6700 7900 6700 8000
Wire Wire Line
	6700 8000 7950 8000
Wire Wire Line
	6800 7900 6800 8100
Wire Wire Line
	6800 8100 8050 8100
Wire Wire Line
	7250 1800 7250 1550
Wire Wire Line
	2400 1550 2400 1800
Wire Wire Line
	2400 4550 2400 4800
Wire Wire Line
	7250 4800 7250 4550
Wire Wire Line
	2400 7550 2400 7800
Wire Wire Line
	7250 7800 7250 7550
Connection ~ 14500 2200
Wire Wire Line
	14500 1950 14500 3200
Wire Wire Line
	14350 2100 14500 2100
Wire Wire Line
	14350 2200 14500 2200
Wire Wire Line
	14350 2500 14900 2500
Wire Wire Line
	14350 2600 14900 2600
Wire Wire Line
	12850 2200 7750 2200
Wire Wire Line
	7750 2200 7750 5000
Wire Wire Line
	7850 5100 7850 2300
Wire Wire Line
	7850 2300 12850 2300
Wire Wire Line
	12850 2400 7950 2400
Wire Wire Line
	7950 2400 7950 8000
Wire Wire Line
	8050 8100 8050 2500
Wire Wire Line
	8050 2500 12850 2500
Wire Notes Line
	1500 4200 7450 4200
Wire Notes Line
	7450 4200 7450 6600
Wire Notes Line
	7450 6600 1500 6600
Wire Notes Line
	1500 6600 1500 4200
Wire Notes Line
	1500 7200 7450 7200
Wire Notes Line
	7450 7200 7450 9600
Wire Notes Line
	7450 9600 1500 9600
Wire Notes Line
	1500 9600 1500 7250
Wire Notes Line
	1500 1200 7450 1200
Wire Notes Line
	7450 1200 7450 3600
Wire Notes Line
	7450 3600 1500 3600
Wire Notes Line
	1500 3600 1500 1200
Wire Notes Line
	12700 1200 15500 1200
Wire Notes Line
	15500 1200 15500 3600
Wire Notes Line
	15500 3600 12700 3600
Wire Notes Line
	12700 3600 12700 1200
Wire Wire Line
	14350 2300 14500 2300
Connection ~ 14500 2300
Wire Wire Line
	13600 1400 13600 1600
Wire Wire Line
	14500 1500 13600 1500
Connection ~ 13600 1500
Wire Wire Line
	13600 3100 13600 3300
Wire Wire Line
	14500 3200 13600 3200
Connection ~ 13600 3200
Wire Wire Line
	14500 1500 14500 1650
Connection ~ 14500 2100
$EndSCHEMATC
