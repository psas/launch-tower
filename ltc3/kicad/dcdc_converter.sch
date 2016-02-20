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
LIBS:Launch_Tower_Computer_III-cache
EELAYER 25 0
EELAYER END
$Descr B 17000 11000
encoding utf-8
Sheet 4 7
Title "LTC3 DC-DC Converters"
Date "2016-02-06"
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
L CP1 C404
U 1 1 5557F6DE
P 5850 2200
F 0 "C404" H 5900 2300 50  0000 L CNN
F 1 "330μ" H 5900 2100 50  0000 L CNN
F 2 "~" H 5850 2200 60  0000 C CNN
F 3 "~" H 5850 2200 60  0000 C CNN
	1    5850 2200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR406
U 1 1 5557F6ED
P 5850 2550
F 0 "#PWR406" H 5850 2550 30  0001 C CNN
F 1 "GND" H 5850 2480 30  0001 C CNN
F 2 "" H 5850 2550 60  0000 C CNN
F 3 "" H 5850 2550 60  0000 C CNN
	1    5850 2550
	1    0    0    -1  
$EndComp
$Comp
L C C402
U 1 1 5557F70C
P 3000 2150
AR Path="/5557F70C" Ref="C402"  Part="1" 
AR Path="/550535FB/5557F70C" Ref="C403"  Part="1" 
F 0 "C403" H 3000 2250 40  0000 L CNN
F 1 "2μ2" H 3006 2065 40  0000 L CNN
F 2 "~" H 3038 2000 30  0000 C CNN
F 3 "~" H 3000 2150 60  0000 C CNN
F 4 "ceramic, X[57]R" V 2850 2150 50  0000 C CNN "Note"
	1    3000 2150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR407
U 1 1 5557F71B
P 3000 2650
F 0 "#PWR407" H 3000 2650 30  0001 C CNN
F 1 "GND" H 3000 2580 30  0001 C CNN
F 2 "" H 3000 2650 60  0000 C CNN
F 3 "" H 3000 2650 60  0000 C CNN
	1    3000 2650
	1    0    0    -1  
$EndComp
$Comp
L R R402
U 1 1 555D0B08
P 4450 3200
F 0 "R402" V 4530 3200 50  0000 C CNN
F 1 "21k" V 4450 3200 50  0000 C CNN
F 2 "" V 4380 3200 30  0000 C CNN
F 3 "" H 4450 3200 30  0000 C CNN
F 4 "1%, 50mW" V 4350 3200 50  0000 C CNN "Note"
	1    4450 3200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR409
U 1 1 555D0B2F
P 4450 3450
F 0 "#PWR409" H 4450 3200 50  0001 C CNN
F 1 "GND" H 4450 3300 50  0000 C CNN
F 2 "" H 4450 3450 60  0000 C CNN
F 3 "" H 4450 3450 60  0000 C CNN
	1    4450 3450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR412
U 1 1 55945CE3
P 5150 5300
F 0 "#PWR412" H 5150 5300 30  0001 C CNN
F 1 "GND" H 5150 5230 30  0001 C CNN
F 2 "" H 5150 5300 60  0000 C CNN
F 3 "" H 5150 5300 60  0000 C CNN
	1    5150 5300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR413
U 1 1 55945CE9
P 7550 5300
F 0 "#PWR413" H 7550 5300 30  0001 C CNN
F 1 "GND" H 7550 5230 30  0001 C CNN
F 2 "" H 7550 5300 60  0000 C CNN
F 3 "" H 7550 5300 60  0000 C CNN
	1    7550 5300
	1    0    0    -1  
$EndComp
$Comp
L CP1 C406
U 1 1 55945CF8
P 7750 5150
F 0 "C406" H 7800 5250 50  0000 L CNN
F 1 "330μ" H 7800 5050 50  0000 L CNN
F 2 "~" H 7750 5150 60  0000 C CNN
F 3 "~" H 7750 5150 60  0000 C CNN
	1    7750 5150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR414
U 1 1 55945CFE
P 7750 5500
F 0 "#PWR414" H 7750 5500 30  0001 C CNN
F 1 "GND" H 7750 5430 30  0001 C CNN
F 2 "" H 7750 5500 60  0000 C CNN
F 3 "" H 7750 5500 60  0000 C CNN
	1    7750 5500
	1    0    0    -1  
$EndComp
$Comp
L C C406
U 1 1 55945D07
P 4000 5350
AR Path="/55945D07" Ref="C406"  Part="1" 
AR Path="/550535FB/55945D07" Ref="C409"  Part="1" 
F 0 "C409" H 4000 5450 40  0000 L CNN
F 1 "4μ7" H 4006 5265 40  0000 L CNN
F 2 "~" H 4038 5200 30  0000 C CNN
F 3 "~" H 4000 5350 60  0000 C CNN
F 4 "ceramic, X[57]R" V 3850 5350 50  0001 C CNN "Note"
	1    4000 5350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR415
U 1 1 55945D0D
P 4650 5750
F 0 "#PWR415" H 4650 5750 30  0001 C CNN
F 1 "GND" H 4650 5680 30  0001 C CNN
F 2 "" H 4650 5750 60  0000 C CNN
F 3 "" H 4650 5750 60  0000 C CNN
	1    4650 5750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR419
U 1 1 55946855
P 5150 8300
F 0 "#PWR419" H 5150 8300 30  0001 C CNN
F 1 "GND" H 5150 8230 30  0001 C CNN
F 2 "" H 5150 8300 60  0000 C CNN
F 3 "" H 5150 8300 60  0000 C CNN
	1    5150 8300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR420
U 1 1 5594685B
P 7550 8300
F 0 "#PWR420" H 7550 8300 30  0001 C CNN
F 1 "GND" H 7550 8230 30  0001 C CNN
F 2 "" H 7550 8300 60  0000 C CNN
F 3 "" H 7550 8300 60  0000 C CNN
	1    7550 8300
	1    0    0    -1  
$EndComp
$Comp
L CP1 C412
U 1 1 55946867
P 7750 8100
F 0 "C412" H 7800 8200 50  0000 L CNN
F 1 "330μ" H 7800 8000 50  0000 L CNN
F 2 "~" H 7750 8100 60  0000 C CNN
F 3 "~" H 7750 8100 60  0000 C CNN
	1    7750 8100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR421
U 1 1 5594686D
P 7750 8450
F 0 "#PWR421" H 7750 8450 30  0001 C CNN
F 1 "GND" H 7750 8380 30  0001 C CNN
F 2 "" H 7750 8450 60  0000 C CNN
F 3 "" H 7750 8450 60  0000 C CNN
	1    7750 8450
	1    0    0    -1  
$EndComp
$Comp
L R R408
U 1 1 55946886
P 6350 9150
F 0 "R408" V 6450 9150 50  0000 C CNN
F 1 "2k91" V 6350 9150 50  0000 C CNN
F 2 "" V 6280 9150 30  0000 C CNN
F 3 "" H 6350 9150 30  0000 C CNN
F 4 "1%, 50mW" V 6250 9150 50  0000 C CNN "Note"
	1    6350 9150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR423
U 1 1 5594688C
P 6350 9450
F 0 "#PWR423" H 6350 9200 50  0001 C CNN
F 1 "GND" H 6350 9300 50  0000 C CNN
F 2 "" H 6350 9450 60  0000 C CNN
F 3 "" H 6350 9450 60  0000 C CNN
	1    6350 9450
	1    0    0    -1  
$EndComp
Text HLabel 1700 6200 1    60   Input ~ 0
19V_EN
Text Notes 12250 7650 0    100  ~ 0
NB:\n1. V_sense should connect as close as possible\nto the largest load on the given power rail.\n2. Place Rset resistors as close to package pins\n   as possible.\n3. Ceramic (Cin) capacitors should be located\n   within 0.5 in of the input pins.\n4. We may need heat sinks on the converters.\n   The datasheet indicates a range of 2W to 5W\n   of power dissipation given our specs.\n5. Pay attention to the datasheet's recommendations\n   regarding capacitor selection.
$Comp
L C C407
U 1 1 55949753
P 4350 5350
AR Path="/55949753" Ref="C407"  Part="1" 
AR Path="/550535FB/55949753" Ref="C410"  Part="1" 
F 0 "C410" H 4350 5450 40  0000 L CNN
F 1 "4μ7" H 4356 5265 40  0000 L CNN
F 2 "~" H 4388 5200 30  0000 C CNN
F 3 "~" H 4350 5350 60  0000 C CNN
F 4 "ceramic, X[57]R" V 4200 5350 50  0001 C CNN "Note"
	1    4350 5350
	1    0    0    -1  
$EndComp
$Comp
L C C405
U 1 1 559497A5
P 3700 5350
AR Path="/559497A5" Ref="C405"  Part="1" 
AR Path="/550535FB/559497A5" Ref="C408"  Part="1" 
F 0 "C408" H 3700 5450 40  0000 L CNN
F 1 "4μ7" H 3706 5265 40  0000 L CNN
F 2 "~" H 3738 5200 30  0000 C CNN
F 3 "~" H 3700 5350 60  0000 C CNN
F 4 "ceramic, X[57]R" V 3550 5350 50  0000 C CNN "Note"
	1    3700 5350
	1    0    0    -1  
$EndComp
$Comp
L C C408
U 1 1 559497EF
P 4650 5350
AR Path="/559497EF" Ref="C408"  Part="1" 
AR Path="/550535FB/559497EF" Ref="C411"  Part="1" 
F 0 "C411" H 4650 5450 40  0000 L CNN
F 1 "4μ7" H 4656 5265 40  0000 L CNN
F 2 "~" H 4688 5200 30  0000 C CNN
F 3 "~" H 4650 5350 60  0000 C CNN
F 4 "ceramic, X[57]R" V 4500 5350 50  0001 C CNN "Note"
	1    4650 5350
	1    0    0    -1  
$EndComp
$Comp
L C C411
U 1 1 5594B45E
P 4000 8350
AR Path="/5594B45E" Ref="C411"  Part="1" 
AR Path="/550535FB/5594B45E" Ref="C415"  Part="1" 
F 0 "C415" H 4000 8450 40  0000 L CNN
F 1 "4μ7" H 4006 8265 40  0000 L CNN
F 2 "~" H 4038 8200 30  0000 C CNN
F 3 "~" H 4000 8350 60  0000 C CNN
F 4 "ceramic, X[57]R" V 3850 8350 50  0001 C CNN "Note"
	1    4000 8350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR422
U 1 1 5594B465
P 4650 8700
F 0 "#PWR422" H 4650 8700 30  0001 C CNN
F 1 "GND" H 4650 8630 30  0001 C CNN
F 2 "" H 4650 8700 60  0000 C CNN
F 3 "" H 4650 8700 60  0000 C CNN
	1    4650 8700
	1    0    0    -1  
$EndComp
$Comp
L C C412
U 1 1 5594B46E
P 4350 8350
AR Path="/5594B46E" Ref="C412"  Part="1" 
AR Path="/550535FB/5594B46E" Ref="C416"  Part="1" 
F 0 "C416" H 4350 8450 40  0000 L CNN
F 1 "4μ7" H 4356 8265 40  0000 L CNN
F 2 "~" H 4388 8200 30  0000 C CNN
F 3 "~" H 4350 8350 60  0000 C CNN
F 4 "ceramic, X[57]R" V 4200 8350 50  0001 C CNN "Note"
	1    4350 8350
	1    0    0    -1  
$EndComp
$Comp
L C C410
U 1 1 5594B476
P 3700 8350
AR Path="/5594B476" Ref="C410"  Part="1" 
AR Path="/550535FB/5594B476" Ref="C414"  Part="1" 
F 0 "C414" H 3700 8450 40  0000 L CNN
F 1 "4μ7" H 3706 8265 40  0000 L CNN
F 2 "~" H 3738 8200 30  0000 C CNN
F 3 "~" H 3700 8350 60  0000 C CNN
F 4 "ceramic, X[57]R" V 3550 8350 50  0000 C CNN "Note"
	1    3700 8350
	1    0    0    -1  
$EndComp
$Comp
L C C413
U 1 1 5594B47E
P 4650 8350
AR Path="/5594B47E" Ref="C413"  Part="1" 
AR Path="/550535FB/5594B47E" Ref="C417"  Part="1" 
F 0 "C417" H 4650 8450 40  0000 L CNN
F 1 "4μ7" H 4656 8265 40  0000 L CNN
F 2 "~" H 4688 8200 30  0000 C CNN
F 3 "~" H 4650 8350 60  0000 C CNN
F 4 "ceramic, X[57]R" V 4500 8350 50  0001 C CNN "Note"
	1    4650 8350
	1    0    0    -1  
$EndComp
Text Notes 12300 9150 0    100  ~ 0
TODO:\n* jumpers on all INHIBIT pins\n* Values for converter enable pull-down resistors.\n  Don't exceed the BB's low source max.!\n* Capacitor values are minimums.  Consider\n  increasing these.  Consult datasheet for more info.
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
P 6350 7950
F 0 "U404" H 6350 8250 80  0000 C CNN
F 1 "PTN78020H" H 6350 8100 80  0000 C CNN
F 2 "" H 6350 8000 60  0000 C CNN
F 3 "" H 6350 8000 60  0000 C CNN
	1    6350 7950
	1    0    0    -1  
$EndComp
$Comp
L PTN78020H U403
U 1 1 560CD17B
P 6350 4950
F 0 "U403" H 6350 5250 80  0000 C CNN
F 1 "PTN78020H" H 6350 5100 80  0000 C CNN
F 2 "" H 6350 5000 60  0000 C CNN
F 3 "" H 6350 5000 60  0000 C CNN
	1    6350 4950
	1    0    0    -1  
$EndComp
$Comp
L R4T R401
U 1 1 563558F1
P 6750 1800
F 0 "R401" V 6550 1800 50  0000 C CNN
F 1 "0.1" V 6750 1800 50  0000 C CNN
F 2 "" V 6680 1800 30  0000 C CNN
F 3 "" H 6750 1800 30  0000 C CNN
F 4 "1W 1%" V 6650 1800 50  0000 C CNN "Note"
	1    6750 1800
	0    1    1    0   
$EndComp
$Comp
L R4T R403
U 1 1 563597A8
P 8650 4750
F 0 "R403" V 8450 4750 50  0000 C CNN
F 1 "60m" V 8650 4750 50  0000 C CNN
F 2 "" V 8580 4750 30  0000 C CNN
F 3 "" H 8650 4750 30  0000 C CNN
F 4 "1W 1%" V 8550 4750 50  0000 C CNN "Note"
	1    8650 4750
	0    1    1    0   
$EndComp
$Comp
L R4T R406
U 1 1 56359B18
P 8650 7750
F 0 "R406" V 8450 7750 50  0000 C CNN
F 1 "60m" V 8650 7750 50  0000 C CNN
F 2 "" V 8580 7750 30  0000 C CNN
F 3 "" H 8650 7750 30  0000 C CNN
F 4 "1W 1%" V 8550 7750 50  0000 C CNN "Note"
	1    8650 7750
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR403
U 1 1 56538996
P 7250 1400
F 0 "#PWR403" H 7250 1250 50  0001 C CNN
F 1 "+5V" H 7250 1540 50  0000 C CNN
F 2 "" H 7250 1400 60  0000 C CNN
F 3 "" H 7250 1400 60  0000 C CNN
	1    7250 1400
	1    0    0    -1  
$EndComp
$Comp
L VBATT #PWR402
U 1 1 565394B2
P 2400 1550
F 0 "#PWR402" H 2400 1400 50  0001 C CNN
F 1 "VBATT" H 2400 1700 50  0000 C CNN
F 2 "" H 2400 1550 60  0000 C CNN
F 3 "" H 2400 1550 60  0000 C CNN
	1    2400 1550
	1    0    0    -1  
$EndComp
$Comp
L VBATT #PWR410
U 1 1 5653A057
P 4300 4500
F 0 "#PWR410" H 4300 4350 50  0001 C CNN
F 1 "VBATT" H 4300 4650 50  0000 C CNN
F 2 "" H 4300 4500 60  0000 C CNN
F 3 "" H 4300 4500 60  0000 C CNN
	1    4300 4500
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR411
U 1 1 5653A6FD
P 9150 4350
F 0 "#PWR411" H 9150 4200 50  0001 C CNN
F 1 "+12V" H 9150 4490 50  0000 C CNN
F 2 "" H 9150 4350 60  0000 C CNN
F 3 "" H 9150 4350 60  0000 C CNN
	1    9150 4350
	1    0    0    -1  
$EndComp
$Comp
L VBATT #PWR417
U 1 1 5653ADB9
P 4300 7500
F 0 "#PWR417" H 4300 7350 50  0001 C CNN
F 1 "VBATT" H 4300 7650 50  0000 C CNN
F 2 "" H 4300 7500 60  0000 C CNN
F 3 "" H 4300 7500 60  0000 C CNN
	1    4300 7500
	1    0    0    -1  
$EndComp
$Comp
L +19V #PWR418
U 1 1 5653B5C8
P 9150 7350
F 0 "#PWR418" H 9150 7200 50  0001 C CNN
F 1 "+19V" H 9150 7490 50  0000 C CNN
F 2 "" H 9150 7350 60  0000 C CNN
F 3 "" H 9150 7350 60  0000 C CNN
	1    9150 7350
	1    0    0    -1  
$EndComp
Text Notes 12700 3800 0    100  ~ 0
Voltage, Current, & Temp Sense
$Comp
L C C401
U 1 1 56588D41
P 14500 1800
AR Path="/56588D41" Ref="C401"  Part="1" 
AR Path="/550535FB/56588D41" Ref="C401"  Part="1" 
F 0 "C401" H 14525 1900 50  0000 L CNN
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
L +5V #PWR401
U 1 1 56588D70
P 13600 1400
F 0 "#PWR401" H 13600 1250 50  0001 C CNN
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
Text Notes 1500 3950 0    80   ~ 0
+5V DC Rail
Text Notes 3400 6950 0    80   ~ 0
+12V DC Rail
Text Notes 3400 9950 0    80   ~ 0
+19V DC Rail
$Comp
L GND #PWR408
U 1 1 565F268D
P 13600 3300
F 0 "#PWR408" H 13600 3050 50  0001 C CNN
F 1 "GND" H 13600 3150 50  0000 C CNN
F 2 "" H 13600 3300 60  0000 C CNN
F 3 "" H 13600 3300 60  0000 C CNN
	1    13600 3300
	1    0    0    -1  
$EndComp
$Comp
L C C402
U 1 1 569BEE50
P 2500 2150
F 0 "C402" H 2525 2250 50  0000 L CNN
F 1 "1μ" H 2525 2050 40  0000 L CNN
F 2 "" H 2538 2000 30  0000 C CNN
F 3 "" H 2500 2150 60  0000 C CNN
	1    2500 2150
	1    0    0    -1  
$EndComp
$Comp
L C C405
U 1 1 569BFDC0
P 6250 2200
F 0 "C405" H 6275 2300 50  0000 L CNN
F 1 "1μ" H 6275 2100 40  0000 L CNN
F 2 "" H 6288 2050 30  0000 C CNN
F 3 "" H 6250 2200 60  0000 C CNN
	1    6250 2200
	1    0    0    -1  
$EndComp
$Comp
L C C413
U 1 1 569C0DA7
P 8200 8100
F 0 "C413" H 8225 8200 50  0000 L CNN
F 1 "1μ" H 8225 8000 40  0000 L CNN
F 2 "" H 8238 7950 30  0000 C CNN
F 3 "" H 8200 8100 60  0000 C CNN
	1    8200 8100
	1    0    0    -1  
$EndComp
$Comp
L C C407
U 1 1 569C1C22
P 8150 5150
F 0 "C407" H 8175 5250 50  0000 L CNN
F 1 "1μ" H 8175 5050 40  0000 L CNN
F 2 "" H 8188 5000 30  0000 C CNN
F 3 "" H 8150 5150 60  0000 C CNN
	1    8150 5150
	1    0    0    -1  
$EndComp
$Comp
L R R405
U 1 1 569C4776
P 6350 6150
F 0 "R405" V 6450 6150 50  0000 C CNN
F 1 "2k91" V 6350 6150 50  0000 C CNN
F 2 "" V 6280 6150 30  0000 C CNN
F 3 "" H 6350 6150 30  0000 C CNN
F 4 "1%, 50mW" V 6250 6150 50  0000 C CNN "Note"
	1    6350 6150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR416
U 1 1 569C477C
P 6350 6450
F 0 "#PWR416" H 6350 6200 50  0001 C CNN
F 1 "GND" H 6350 6300 50  0000 C CNN
F 2 "" H 6350 6450 60  0000 C CNN
F 3 "" H 6350 6450 60  0000 C CNN
	1    6350 6450
	1    0    0    -1  
$EndComp
Text HLabel 1800 6200 1    60   Input ~ 0
12V_EN
$Comp
L R R404
U 1 1 569C4786
P 6050 6250
F 0 "R404" V 5950 6250 50  0000 C CNN
F 1 "10k" V 6050 6250 50  0000 C CNN
F 2 "" V 5980 6250 30  0000 C CNN
F 3 "" H 6050 6250 30  0000 C CNN
	1    6050 6250
	1    0    0    -1  
$EndComp
$Comp
L TEST W?
U 1 1 56C96DDD
P 5650 6150
F 0 "W?" H 5650 6210 50  0000 C CNN
F 1 "TEST" H 5650 6080 50  0000 C CNN
F 2 "" H 5650 6150 50  0000 C CNN
F 3 "" H 5650 6150 50  0000 C CNN
	1    5650 6150
	0    1    1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 56C97005
P 5650 6400
F 0 "#PWR?" H 5650 6150 50  0001 C CNN
F 1 "GND" H 5650 6250 50  0000 C CNN
F 2 "" H 5650 6400 50  0000 C CNN
F 3 "" H 5650 6400 50  0000 C CNN
	1    5650 6400
	1    0    0    -1  
$EndComp
$Comp
L TEST W?
U 1 1 56C972FA
P 5700 9150
F 0 "W?" H 5700 9210 50  0000 C CNN
F 1 "TEST" H 5700 9080 50  0000 C CNN
F 2 "" H 5700 9150 50  0000 C CNN
F 3 "" H 5700 9150 50  0000 C CNN
	1    5700 9150
	0    1    1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 56C97644
P 5700 9400
F 0 "#PWR?" H 5700 9150 50  0001 C CNN
F 1 "GND" H 5700 9250 50  0000 C CNN
F 2 "" H 5700 9400 50  0000 C CNN
F 3 "" H 5700 9400 50  0000 C CNN
	1    5700 9400
	1    0    0    -1  
$EndComp
$Comp
L TEST W?
U 1 1 56C97829
P 9350 7400
F 0 "W?" H 9350 7460 50  0000 C CNN
F 1 "TEST" H 9350 7330 50  0000 C CNN
F 2 "" H 9350 7400 50  0000 C CNN
F 3 "" H 9350 7400 50  0000 C CNN
	1    9350 7400
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR?
U 1 1 56C97D65
P 9550 7500
F 0 "#PWR?" H 9550 7250 50  0001 C CNN
F 1 "GND" H 9550 7350 50  0000 C CNN
F 2 "" H 9550 7500 50  0000 C CNN
F 3 "" H 9550 7500 50  0000 C CNN
	1    9550 7500
	1    0    0    -1  
$EndComp
$Comp
L TEST W?
U 1 1 56C98343
P 9350 4450
F 0 "W?" H 9350 4510 50  0000 C CNN
F 1 "TEST" H 9350 4380 50  0000 C CNN
F 2 "" H 9350 4450 50  0000 C CNN
F 3 "" H 9350 4450 50  0000 C CNN
	1    9350 4450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 56C983B8
P 9550 4550
F 0 "#PWR?" H 9550 4300 50  0001 C CNN
F 1 "GND" H 9550 4400 50  0000 C CNN
F 2 "" H 9550 4550 50  0000 C CNN
F 3 "" H 9550 4550 50  0000 C CNN
	1    9550 4550
	1    0    0    -1  
$EndComp
$Comp
L TEST W?
U 1 1 56C98932
P 7450 1500
F 0 "W?" H 7450 1560 50  0000 C CNN
F 1 "TEST" H 7450 1430 50  0000 C CNN
F 2 "" H 7450 1500 50  0000 C CNN
F 3 "" H 7450 1500 50  0000 C CNN
	1    7450 1500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 56C98C65
P 7650 1550
F 0 "#PWR?" H 7650 1300 50  0001 C CNN
F 1 "GND" H 7650 1400 50  0000 C CNN
F 2 "" H 7650 1550 50  0000 C CNN
F 3 "" H 7650 1550 50  0000 C CNN
	1    7650 1550
	1    0    0    -1  
$EndComp
$Comp
L TEST W?
U 1 1 56C98FBF
P 3900 3100
F 0 "W?" H 3900 3160 50  0000 C CNN
F 1 "TEST" H 3900 3030 50  0000 C CNN
F 2 "" H 3900 3100 50  0000 C CNN
F 3 "" H 3900 3100 50  0000 C CNN
	1    3900 3100
	0    -1   -1   0   
$EndComp
$Comp
L R R407
U 1 1 56793A2F
P 6050 9150
F 0 "R407" V 5950 9150 50  0000 C CNN
F 1 "10k" V 6050 9150 50  0000 C CNN
F 2 "" V 5980 9150 30  0000 C CNN
F 3 "" H 6050 9150 30  0000 C CNN
	1    6050 9150
	1    0    0    -1  
$EndComp
$Comp
L SP3T SW?
U 1 1 56CA7239
P 2500 7800
F 0 "SW?" H 2400 7950 50  0000 C CNN
F 1 "SP3T" H 2400 7700 50  0000 C CNN
F 2 "" H 1875 7975 50  0000 C CNN
F 3 "" H 1875 7975 50  0000 C CNN
	1    2500 7800
	-1   0    0    1   
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
	5850 2050 5850 1800
Wire Wire Line
	5850 2350 5850 2550
Wire Wire Line
	4450 3450 4450 3350
Wire Wire Line
	4750 2800 4750 3300
Wire Wire Line
	4750 3300 7000 3300
Wire Wire Line
	5300 5150 5150 5150
Wire Wire Line
	5150 5150 5150 5300
Wire Wire Line
	7400 5150 7550 5150
Wire Wire Line
	7550 5150 7550 5300
Wire Wire Line
	4300 4750 5300 4750
Wire Wire Line
	7750 4750 7750 5000
Wire Wire Line
	7750 5300 7750 5500
Wire Wire Line
	4650 5500 4650 5750
Wire Wire Line
	4650 4750 4650 5200
Connection ~ 4650 4750
Wire Wire Line
	6650 5750 6650 6250
Wire Wire Line
	6650 6250 8900 6250
Wire Wire Line
	5300 8150 5150 8150
Wire Wire Line
	5150 8150 5150 8300
Wire Wire Line
	7400 8150 7550 8150
Wire Wire Line
	7550 8150 7550 8300
Wire Wire Line
	4300 7750 5300 7750
Wire Wire Line
	7750 8250 7750 8450
Connection ~ 4650 7750
Wire Wire Line
	6350 9300 6350 9450
Wire Wire Line
	6650 8750 6650 9250
Wire Wire Line
	6650 9250 8900 9250
Wire Wire Line
	4350 5100 4350 5200
Wire Wire Line
	3700 5100 4650 5100
Connection ~ 4650 5100
Wire Wire Line
	4000 5200 4000 5100
Connection ~ 4350 5100
Wire Wire Line
	3700 5200 3700 5100
Connection ~ 4000 5100
Wire Wire Line
	4350 5600 4350 5500
Wire Wire Line
	3700 5600 4650 5600
Connection ~ 4650 5600
Wire Wire Line
	4000 5500 4000 5600
Connection ~ 4350 5600
Wire Wire Line
	3700 5500 3700 5600
Connection ~ 4000 5600
Wire Wire Line
	4650 7750 4650 8200
Wire Wire Line
	4350 8100 4350 8200
Wire Wire Line
	3700 8100 4650 8100
Connection ~ 4650 8100
Wire Wire Line
	4000 8200 4000 8100
Connection ~ 4350 8100
Wire Wire Line
	3700 8200 3700 8100
Connection ~ 4000 8100
Wire Wire Line
	4350 8600 4350 8500
Wire Wire Line
	3700 8600 4650 8600
Connection ~ 4650 8600
Wire Wire Line
	4000 8500 4000 8600
Connection ~ 4350 8600
Wire Wire Line
	3700 8500 3700 8600
Connection ~ 4000 8600
Wire Wire Line
	9150 4750 8800 4750
Wire Wire Line
	8900 6250 8900 4750
Connection ~ 8900 4750
Connection ~ 7000 1800
Wire Wire Line
	7000 3300 7000 1800
Wire Wire Line
	7250 1800 6900 1800
Wire Wire Line
	9150 7750 8800 7750
Wire Wire Line
	8900 9250 8900 7750
Connection ~ 8900 7750
Wire Wire Line
	6700 1900 6700 2000
Wire Wire Line
	6700 2000 12850 2000
Wire Wire Line
	6800 2100 12850 2100
Wire Wire Line
	6800 2100 6800 1900
Wire Wire Line
	8600 4950 9650 4950
Wire Wire Line
	8600 4950 8600 4850
Wire Wire Line
	8700 4850 8700 5050
Wire Wire Line
	8700 5050 9750 5050
Wire Wire Line
	7250 1400 7250 1800
Wire Wire Line
	2400 1550 2400 1800
Wire Wire Line
	4300 4500 4300 4750
Wire Wire Line
	9150 4350 9150 4750
Wire Wire Line
	4300 7500 4300 7750
Wire Wire Line
	9150 7350 9150 7750
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
	9650 4950 9650 2200
Wire Wire Line
	9750 5050 9750 2300
Wire Notes Line
	3400 4150 9600 4150
Wire Notes Line
	3400 6800 9600 6800
Wire Notes Line
	3400 6800 3400 4150
Wire Notes Line
	3400 7150 9650 7150
Wire Notes Line
	3400 9800 9650 9800
Wire Notes Line
	3400 9800 3400 7150
Wire Notes Line
	1500 1200 7700 1200
Wire Notes Line
	7450 3800 1500 3800
Wire Notes Line
	1500 3800 1500 1200
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
Wire Wire Line
	3000 1800 3000 2000
Connection ~ 3000 1800
Wire Wire Line
	2400 1800 3400 1800
Wire Wire Line
	2500 2000 2500 1800
Connection ~ 2500 1800
Wire Wire Line
	5500 1800 6600 1800
Connection ~ 5850 1800
Wire Wire Line
	6250 2050 6250 1800
Connection ~ 6250 1800
Wire Wire Line
	6250 2350 6250 2500
Wire Wire Line
	6250 2500 5850 2500
Connection ~ 5850 2500
Wire Wire Line
	2500 2300 2500 2500
Wire Wire Line
	2500 2500 3000 2500
Wire Wire Line
	3000 2300 3000 2650
Connection ~ 3000 2500
Wire Wire Line
	7400 7750 8500 7750
Wire Wire Line
	7750 7750 7750 7950
Connection ~ 7750 7750
Wire Wire Line
	8200 7750 8200 7950
Connection ~ 8200 7750
Wire Wire Line
	8200 8250 8200 8400
Wire Wire Line
	8200 8400 7750 8400
Connection ~ 7750 8400
Wire Wire Line
	7400 4750 8500 4750
Connection ~ 7750 4750
Wire Wire Line
	8150 5000 8150 4750
Connection ~ 8150 4750
Wire Wire Line
	8150 5300 8150 5350
Wire Wire Line
	8150 5350 7750 5350
Connection ~ 7750 5350
Connection ~ 6350 9400
Wire Wire Line
	6350 9000 6350 8750
Wire Wire Line
	6350 6300 6350 6450
Connection ~ 6350 6400
Wire Wire Line
	6350 6000 6350 5750
Wire Wire Line
	4450 3050 4450 2800
Wire Wire Line
	6050 5900 6050 6100
Wire Notes Line
	12400 8500 14600 8500
Wire Notes Line
	12450 8650 16200 8650
Wire Notes Line
	12450 8800 15550 8800
Wire Notes Line
	12450 8950 15700 8950
Wire Notes Line
	12450 9100 16400 9100
Wire Notes Line
	16400 9100 16400 9050
Wire Wire Line
	5650 6400 5650 6350
Wire Wire Line
	5700 9400 5700 9350
Connection ~ 9150 7400
Wire Wire Line
	9550 7400 9550 7500
Wire Wire Line
	9150 4450 9150 4450
Connection ~ 9150 4450
Wire Wire Line
	9550 4450 9550 4550
Connection ~ 7250 1500
Wire Wire Line
	7650 1500 7650 1550
Wire Notes Line
	9650 9800 9650 7150
Wire Notes Line
	9600 6800 9600 4150
Wire Notes Line
	7700 1200 7700 3800
Wire Notes Line
	7700 3800 7400 3800
Wire Wire Line
	8600 7850 8600 7950
Wire Wire Line
	8700 7850 8700 8050
Wire Wire Line
	8600 7950 9850 7950
Wire Wire Line
	8700 8050 9950 8050
Wire Wire Line
	9950 8050 9950 2500
Wire Wire Line
	9850 7950 9850 2400
Wire Wire Line
	5950 8750 5950 8850
Wire Wire Line
	3250 8850 6050 8850
Wire Wire Line
	6050 8850 6050 9000
Wire Wire Line
	6050 9300 6050 9400
Wire Wire Line
	6050 9400 6350 9400
Connection ~ 5950 8850
$Comp
L SPST_switch SW?
U 1 1 56CA9AFB
P 2600 7500
F 0 "SW?" H 2600 7600 60  0000 C CNN
F 1 "SPST_switch" H 2620 7380 60  0001 C CNN
F 2 "" H 2620 7500 60  0000 C CNN
F 3 "" H 2620 7500 60  0000 C CNN
	1    2600 7500
	1    0    0    -1  
$EndComp
Text Notes 2100 7800 0    50   ~ 0
NC
Wire Wire Line
	1900 7900 2200 7900
Wire Wire Line
	2800 7800 3250 7800
Wire Wire Line
	1900 6200 1900 6100
Wire Wire Line
	5700 8850 5700 8950
$Comp
L SP3T SW?
U 1 1 56CADD5C
P 2500 8200
F 0 "SW?" H 2400 8350 50  0000 C CNN
F 1 "SP3T" H 2400 8100 50  0000 C CNN
F 2 "" H 1875 8375 50  0000 C CNN
F 3 "" H 1875 8375 50  0000 C CNN
	1    2500 8200
	-1   0    0    1   
$EndComp
Text Notes 2100 8200 0    50   ~ 0
NC
Wire Wire Line
	1900 8300 2200 8300
Wire Wire Line
	2800 8200 3250 8200
$Comp
L R R?
U 1 1 56CADEF4
P 2150 5700
F 0 "R?" V 2230 5700 50  0000 C CNN
F 1 "100k" V 2150 5700 50  0000 C CNN
F 2 "" V 2080 5700 50  0000 C CNN
F 3 "" H 2150 5700 50  0000 C CNN
	1    2150 5700
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 56CAE13B
P 1900 5950
F 0 "R?" V 1980 5950 50  0000 C CNN
F 1 "10k" V 1900 5950 50  0000 C CNN
F 2 "" V 1830 5950 50  0000 C CNN
F 3 "" H 1900 5950 50  0000 C CNN
	1    1900 5950
	-1   0    0    1   
$EndComp
Wire Wire Line
	1900 5600 1900 5800
Connection ~ 1900 5700
Wire Wire Line
	2300 5700 2400 5700
Wire Wire Line
	2400 5700 2400 5800
$Comp
L GND #PWR?
U 1 1 56CAE8A0
P 2400 5800
F 0 "#PWR?" H 2400 5550 50  0001 C CNN
F 1 "GND" H 2400 5650 50  0000 C CNN
F 2 "" H 2400 5800 50  0000 C CNN
F 3 "" H 2400 5800 50  0000 C CNN
	1    2400 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 5700 1900 5700
$Comp
L VBATT #PWR?
U 1 1 56CAF4F5
P 1900 5600
F 0 "#PWR?" H 1900 5450 50  0001 C CNN
F 1 "VBATT" H 1900 5750 50  0000 C CNN
F 2 "" H 1900 5600 60  0000 C CNN
F 3 "" H 1900 5600 60  0000 C CNN
	1    1900 5600
	1    0    0    -1  
$EndComp
Text Notes 1700 5800 0    50   ~ 0
3.3V
Wire Wire Line
	1900 6900 1900 8300
Connection ~ 1900 7900
Wire Wire Line
	1800 7700 2200 7700
Wire Wire Line
	1700 8100 2200 8100
Wire Wire Line
	6050 6400 6350 6400
Wire Wire Line
	5950 5750 5950 5900
Wire Wire Line
	3250 5900 6050 5900
Connection ~ 5950 5900
Wire Wire Line
	5650 5950 5650 5900
Connection ~ 5650 5900
Wire Wire Line
	1800 6900 1800 7700
Wire Wire Line
	1700 6900 1700 8100
Wire Wire Line
	3250 7800 3250 5900
Wire Wire Line
	3250 8200 3250 8850
Connection ~ 5700 8850
Wire Wire Line
	4650 8700 4650 8500
Wire Wire Line
	9650 2200 12850 2200
Wire Wire Line
	9750 2300 12850 2300
Wire Wire Line
	9850 2400 12850 2400
Wire Wire Line
	9950 2500 12850 2500
Wire Notes Line
	3100 9800 1500 9800
Wire Notes Line
	1500 9800 1500 4150
Wire Notes Line
	1500 4150 3100 4150
Wire Notes Line
	3100 4150 3100 9800
$Comp
L CONN_01X04 P?
U 1 1 56CB8347
P 1850 6700
F 0 "P?" H 1850 6950 50  0000 C CNN
F 1 "CONN_01X04" V 1950 6700 50  0000 C CNN
F 2 "" H 1850 6700 50  0000 C CNN
F 3 "" H 1850 6700 50  0000 C CNN
	1    1850 6700
	0    -1   -1   0   
$EndComp
$Comp
L CONN_01X04 P?
U 1 1 56CB8407
P 1850 6400
F 0 "P?" H 1850 6650 50  0000 C CNN
F 1 "CONN_01X04" V 1950 6400 50  0000 C CNN
F 2 "" H 1850 6400 50  0000 C CNN
F 3 "" H 1850 6400 50  0000 C CNN
	1    1850 6400
	0    -1   1    0   
$EndComp
Wire Wire Line
	2000 6900 2000 7500
Wire Wire Line
	2000 7500 2400 7500
Wire Wire Line
	2000 6200 2000 6050
Wire Wire Line
	2000 6050 2200 6050
Wire Wire Line
	2200 6050 2200 6100
$Comp
L GND #PWR?
U 1 1 56CB87D8
P 2200 6100
F 0 "#PWR?" H 2200 5850 50  0001 C CNN
F 1 "GND" H 2200 5950 50  0000 C CNN
F 2 "" H 2200 6100 50  0000 C CNN
F 3 "" H 2200 6100 50  0000 C CNN
	1    2200 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 7500 2800 7500
Wire Wire Line
	3200 2900 3200 7500
Wire Wire Line
	3200 2900 4150 2900
Wire Wire Line
	4150 2900 4150 2800
$Comp
L GND #PWR?
U 1 1 56CB8E4C
P 3900 3450
F 0 "#PWR?" H 3900 3200 50  0001 C CNN
F 1 "GND" H 3900 3300 50  0000 C CNN
F 2 "" H 3900 3450 50  0000 C CNN
F 3 "" H 3900 3450 50  0000 C CNN
	1    3900 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 3300 3900 3450
Text Notes 1500 9950 0    80   ~ 0
Inhibit Control
Text Notes 1550 9750 0    49   ~ 0
Switch Position:\nTop	Beaglebone Control\nMid	Manual Low\nBot	Manual High
$EndSCHEMATC
