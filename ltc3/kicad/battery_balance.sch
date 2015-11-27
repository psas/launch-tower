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
Sheet 3 7
Title "Battery Balance"
Date "2015-11-25"
Rev "A"
Comp "Portland State Aerospace Society <http://psas.pdx.edu/>"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L BQ77PL900 U301
U 1 1 562DD532
P 5100 7850
F 0 "U301" H 5100 7800 60  0000 C CNN
F 1 "BQ77PL900" H 5100 7900 60  0000 C CNN
F 2 "" H 5100 7850 60  0000 C CNN
F 3 "" H 5100 7850 60  0000 C CNN
	1    5100 7850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR303
U 1 1 564DE030
P 4850 9500
F 0 "#PWR303" H 4850 9250 50  0001 C CNN
F 1 "GND" H 4850 9350 50  0000 C CNN
F 2 "" H 4850 9500 60  0000 C CNN
F 3 "" H 4850 9500 60  0000 C CNN
	1    4850 9500
	1    0    0    -1  
$EndComp
$Comp
L R R306
U 1 1 564DE467
P 7900 6050
F 0 "R306" V 7980 6050 50  0000 C CNN
F 1 "500" V 7900 6050 50  0000 C CNN
F 2 "" V 7830 6050 30  0000 C CNN
F 3 "" H 7900 6050 30  0000 C CNN
	1    7900 6050
	0    1    1    0   
$EndComp
$Comp
L C C304
U 1 1 564DE717
P 8150 6300
F 0 "C304" H 8175 6400 50  0000 L CNN
F 1 "C" H 8175 6200 50  0000 L CNN
F 2 "" H 8188 6150 30  0000 C CNN
F 3 "" H 8150 6300 60  0000 C CNN
	1    8150 6300
	1    0    0    -1  
$EndComp
$Comp
L R R307
U 1 1 564DF5B1
P 7900 6550
F 0 "R307" V 7980 6550 50  0000 C CNN
F 1 "500" V 7900 6550 50  0000 C CNN
F 2 "" V 7830 6550 30  0000 C CNN
F 3 "" H 7900 6550 30  0000 C CNN
	1    7900 6550
	0    1    1    0   
$EndComp
$Comp
L C C305
U 1 1 564DF5B7
P 8150 6800
F 0 "C305" H 8175 6900 50  0000 L CNN
F 1 "C" H 8175 6700 50  0000 L CNN
F 2 "" H 8188 6650 30  0000 C CNN
F 3 "" H 8150 6800 60  0000 C CNN
	1    8150 6800
	1    0    0    -1  
$EndComp
$Comp
L R R308
U 1 1 564DF695
P 7900 7050
F 0 "R308" V 7980 7050 50  0000 C CNN
F 1 "500" V 7900 7050 50  0000 C CNN
F 2 "" V 7830 7050 30  0000 C CNN
F 3 "" H 7900 7050 30  0000 C CNN
	1    7900 7050
	0    1    1    0   
$EndComp
$Comp
L C C306
U 1 1 564DF69B
P 8150 7300
F 0 "C306" H 8175 7400 50  0000 L CNN
F 1 "C" H 8175 7200 50  0000 L CNN
F 2 "" H 8188 7150 30  0000 C CNN
F 3 "" H 8150 7300 60  0000 C CNN
	1    8150 7300
	1    0    0    -1  
$EndComp
$Comp
L R R309
U 1 1 564DF6A1
P 7900 7550
F 0 "R309" V 7980 7550 50  0000 C CNN
F 1 "500" V 7900 7550 50  0000 C CNN
F 2 "" V 7830 7550 30  0000 C CNN
F 3 "" H 7900 7550 30  0000 C CNN
	1    7900 7550
	0    1    1    0   
$EndComp
$Comp
L C C307
U 1 1 564DF6A7
P 8150 7800
F 0 "C307" H 8175 7900 50  0000 L CNN
F 1 "C" H 8175 7700 50  0000 L CNN
F 2 "" H 8188 7650 30  0000 C CNN
F 3 "" H 8150 7800 60  0000 C CNN
	1    8150 7800
	1    0    0    -1  
$EndComp
$Comp
L R R310
U 1 1 564DF8A5
P 7900 8050
F 0 "R310" V 7980 8050 50  0000 C CNN
F 1 "500" V 7900 8050 50  0000 C CNN
F 2 "" V 7830 8050 30  0000 C CNN
F 3 "" H 7900 8050 30  0000 C CNN
	1    7900 8050
	0    1    1    0   
$EndComp
$Comp
L C C308
U 1 1 564DF8AB
P 8150 8300
F 0 "C308" H 8175 8400 50  0000 L CNN
F 1 "C" H 8175 8200 50  0000 L CNN
F 2 "" H 8188 8150 30  0000 C CNN
F 3 "" H 8150 8300 60  0000 C CNN
	1    8150 8300
	1    0    0    -1  
$EndComp
$Comp
L R R311
U 1 1 564DF8B1
P 7900 8550
F 0 "R311" V 7980 8550 50  0000 C CNN
F 1 "500" V 7900 8550 50  0000 C CNN
F 2 "" V 7830 8550 30  0000 C CNN
F 3 "" H 7900 8550 30  0000 C CNN
	1    7900 8550
	0    1    1    0   
$EndComp
$Comp
L C C309
U 1 1 564DF8B7
P 8150 8800
F 0 "C309" H 8175 8900 50  0000 L CNN
F 1 "C" H 8175 8700 50  0000 L CNN
F 2 "" H 8188 8650 30  0000 C CNN
F 3 "" H 8150 8800 60  0000 C CNN
	1    8150 8800
	1    0    0    -1  
$EndComp
$Comp
L R R312
U 1 1 564DF8BD
P 7900 9050
F 0 "R312" V 7980 9050 50  0000 C CNN
F 1 "500" V 7900 9050 50  0000 C CNN
F 2 "" V 7830 9050 30  0000 C CNN
F 3 "" H 7900 9050 30  0000 C CNN
	1    7900 9050
	0    1    1    0   
$EndComp
$Comp
L C C310
U 1 1 564DF8C3
P 8150 9300
F 0 "C310" H 8175 9400 50  0000 L CNN
F 1 "C" H 8175 9200 50  0000 L CNN
F 2 "" H 8188 9150 30  0000 C CNN
F 3 "" H 8150 9300 60  0000 C CNN
	1    8150 9300
	1    0    0    -1  
$EndComp
$Comp
L R R313
U 1 1 564DF8C9
P 7900 9550
F 0 "R313" V 7980 9550 50  0000 C CNN
F 1 "500" V 7900 9550 50  0000 C CNN
F 2 "" V 7830 9550 30  0000 C CNN
F 3 "" H 7900 9550 30  0000 C CNN
	1    7900 9550
	0    1    1    0   
$EndComp
$Comp
L C C311
U 1 1 565000E9
P 1800 6850
F 0 "C311" H 1825 6950 50  0000 L CNN
F 1 "1μ" H 1825 6750 50  0000 L CNN
F 2 "" H 1838 6700 30  0000 C CNN
F 3 "" H 1800 6850 60  0000 C CNN
	1    1800 6850
	1    0    0    -1  
$EndComp
$Comp
L C C312
U 1 1 56500DCE
P 2200 6850
F 0 "C312" H 2225 6950 50  0000 L CNN
F 1 "1μ" H 2225 6750 50  0000 L CNN
F 2 "" H 2238 6700 30  0000 C CNN
F 3 "" H 2200 6850 60  0000 C CNN
	1    2200 6850
	1    0    0    -1  
$EndComp
$Comp
L C C313
U 1 1 56500E33
P 2600 6850
F 0 "C313" H 2625 6950 50  0000 L CNN
F 1 "4.7μ" H 2625 6750 50  0000 L CNN
F 2 "" H 2638 6700 30  0000 C CNN
F 3 "" H 2600 6850 60  0000 C CNN
	1    2600 6850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR304
U 1 1 5650209A
P 2600 7250
F 0 "#PWR304" H 2600 7000 50  0001 C CNN
F 1 "GND" H 2600 7100 50  0000 C CNN
F 2 "" H 2600 7250 60  0000 C CNN
F 3 "" H 2600 7250 60  0000 C CNN
	1    2600 7250
	1    0    0    -1  
$EndComp
Text Label 2600 6550 0    50   ~ 0
CPOUT
Text Label 5100 6400 1    50   ~ 0
CPOUT
Text Label 2200 7150 0    50   ~ 0
CP4
Text Label 2200 6550 0    50   ~ 0
CP3
Text Label 1800 6550 0    50   ~ 0
CP1
Text Label 1800 7150 0    50   ~ 0
CP2
Text Label 4700 6400 1    50   ~ 0
CP1
Text Label 4800 6400 1    50   ~ 0
CP2
Text Label 4900 6400 1    50   ~ 0
CP3
Text Label 5000 6400 1    50   ~ 0
CP4
$Comp
L C C314
U 1 1 5650649F
P 1400 8600
F 0 "C314" H 1425 8700 50  0000 L CNN
F 1 "2.2μ" H 1425 8500 50  0000 L CNN
F 2 "" H 1438 8450 30  0000 C CNN
F 3 "" H 1400 8600 60  0000 C CNN
	1    1400 8600
	1    0    0    -1  
$EndComp
$Comp
L C C315
U 1 1 5650651A
P 1800 8600
F 0 "C315" H 1825 8700 50  0000 L CNN
F 1 "2.2μ" H 1825 8500 50  0000 L CNN
F 2 "" H 1838 8450 30  0000 C CNN
F 3 "" H 1800 8600 60  0000 C CNN
	1    1800 8600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR305
U 1 1 5650665C
P 1800 9000
F 0 "#PWR305" H 1800 8750 50  0001 C CNN
F 1 "GND" H 1800 8850 50  0000 C CNN
F 2 "" H 1800 9000 60  0000 C CNN
F 3 "" H 1800 9000 60  0000 C CNN
	1    1800 9000
	1    0    0    -1  
$EndComp
Text Label 1400 8300 0    50   ~ 0
VREG1
Text Label 1800 8300 0    50   ~ 0
VREG2
Text Label 4050 7050 2    50   ~ 0
VREG1
Text Label 4050 7150 2    50   ~ 0
VREG2
Text HLabel 4050 8000 0    50   3State ~ 0
BQ_EEPROM
Text HLabel 4050 7900 0    50   3State ~ 0
BQ_XALERT
Text HLabel 4050 7700 0    50   3State ~ 0
I2C_DATA
Text HLabel 4050 7800 0    50   3State ~ 0
I2C_CLOCK
Text Label 4050 7550 2    50   ~ 0
VREG1
Text Notes 3700 7050 2    50   Italic 0
+5.0VDC
Text Notes 3700 7150 2    50   Italic 0
+3.3VDC
Text Label 4050 8200 2    50   ~ 0
VLOG
Text Label 4850 9400 2    50   ~ 0
GND
Text Label 4050 8100 2    50   ~ 0
GND
Text Label 4050 8300 2    50   ~ 0
GND
Text Label 4050 8400 2    50   ~ 0
GND
Text Notes 12300 9200 0    100  ~ 0
QUESTIONS:\n* Leave XRST unconnected (p.35)?\n* Leave GPOD unconnected (p.34)?\n* Are caps on VOUT and IOUT necessary if both outputs\n  are disabled (pp.30,33)?\n* Do we need multiple parallel switching FETs?\nTODO:\n* Finish circuit.\nNB: Page references are to the bq datasheet.
Text Label 4050 8650 2    50   ~ 0
VOUT
Text Label 4050 8750 2    50   ~ 0
IOUT
$Comp
L C C316
U 1 1 5651D10E
P 2400 8600
F 0 "C316" H 2425 8700 50  0000 L CNN
F 1 "0.1μ" H 2425 8500 50  0000 L CNN
F 2 "" H 2438 8450 30  0000 C CNN
F 3 "" H 2400 8600 60  0000 C CNN
	1    2400 8600
	1    0    0    -1  
$EndComp
$Comp
L C C317
U 1 1 5651D212
P 2800 8600
F 0 "C317" H 2825 8700 50  0000 L CNN
F 1 "0.1μ" H 2825 8500 50  0000 L CNN
F 2 "" H 2838 8450 30  0000 C CNN
F 3 "" H 2800 8600 60  0000 C CNN
	1    2800 8600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR306
U 1 1 5651D4B6
P 2800 9000
F 0 "#PWR306" H 2800 8750 50  0001 C CNN
F 1 "GND" H 2800 8850 50  0000 C CNN
F 2 "" H 2800 9000 60  0000 C CNN
F 3 "" H 2800 9000 60  0000 C CNN
	1    2800 9000
	1    0    0    -1  
$EndComp
Text Label 2400 8300 0    50   ~ 0
VOUT
Text Label 2800 8300 0    50   ~ 0
IOUT
$Comp
L Q_PMOS_GDS Q301
U 1 1 56523D06
P 4400 4250
F 0 "Q301" V 4350 4500 50  0000 R CNN
F 1 "SUM110P08-11L" V 4650 4050 50  0000 L BNN
F 2 "" H 4600 4350 29  0000 C CNN
F 3 "" H 4400 4250 60  0000 C CNN
	1    4400 4250
	0    1    -1   0   
$EndComp
$Comp
L R R304
U 1 1 565245D0
P 3950 5600
F 0 "R304" V 4030 5600 50  0000 C CNN
F 1 "1k" V 3950 5600 50  0000 C CNN
F 2 "" V 3880 5600 30  0000 C CNN
F 3 "" H 3950 5600 30  0000 C CNN
	1    3950 5600
	1    0    0    -1  
$EndComp
$Comp
L R R302
U 1 1 5652475C
P 3950 4650
F 0 "R302" V 4030 4650 50  0000 C CNN
F 1 "1M" V 3950 4650 50  0000 C CNN
F 2 "" V 3880 4650 30  0000 C CNN
F 3 "" H 3950 4650 30  0000 C CNN
	1    3950 4650
	1    0    0    -1  
$EndComp
$Comp
L C C301
U 1 1 56524937
P 3450 4700
F 0 "C301" H 3300 4800 50  0000 L CNN
F 1 "4.7n" H 3250 4600 50  0000 L CNN
F 2 "" H 3488 4550 30  0000 C CNN
F 3 "" H 3450 4700 60  0000 C CNN
	1    3450 4700
	1    0    0    -1  
$EndComp
$Comp
L ZENER D302
U 1 1 56525C55
P 3700 4450
F 0 "D302" H 3700 4550 50  0000 C CNN
F 1 "16V" H 3700 4350 50  0000 C CNN
F 2 "" H 3700 4450 60  0000 C CNN
F 3 "" H 3700 4450 60  0000 C CNN
	1    3700 4450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4850 9300 4850 9400
Wire Wire Line
	4850 9400 4850 9500
Wire Wire Line
	4950 9400 4950 9300
Connection ~ 4850 9400
Wire Wire Line
	5050 9400 5050 9300
Connection ~ 4950 9400
Wire Wire Line
	5150 9400 5150 9300
Connection ~ 5050 9400
Wire Wire Line
	8050 6050 8150 6050
Wire Wire Line
	8150 6050 9150 6050
Wire Wire Line
	8150 6050 8150 6150
Wire Wire Line
	8150 6450 8150 6550
Wire Wire Line
	8150 6550 8150 6650
Wire Wire Line
	8050 6550 8150 6550
Wire Wire Line
	8150 6550 9050 6550
Connection ~ 8150 6550
Wire Wire Line
	8150 6950 8150 7050
Wire Wire Line
	8150 7050 8150 7150
Wire Wire Line
	8050 7050 8150 7050
Wire Wire Line
	8150 7050 8950 7050
Connection ~ 8150 7050
Wire Wire Line
	8150 7450 8150 7550
Wire Wire Line
	8150 7550 8150 7650
Wire Wire Line
	8050 7550 8150 7550
Wire Wire Line
	8150 7550 8850 7550
Connection ~ 8150 7550
Wire Wire Line
	8150 7950 8150 8050
Wire Wire Line
	8150 8050 8150 8150
Wire Wire Line
	8050 8050 8150 8050
Wire Wire Line
	8150 8050 8850 8050
Connection ~ 8150 8050
Wire Wire Line
	8150 8450 8150 8550
Wire Wire Line
	8150 8550 8150 8650
Wire Wire Line
	8050 8550 8150 8550
Wire Wire Line
	8150 8550 8950 8550
Connection ~ 8150 8550
Wire Wire Line
	8150 8950 8150 9050
Wire Wire Line
	8150 9050 8150 9150
Wire Wire Line
	8050 9050 8150 9050
Wire Wire Line
	8150 9050 9050 9050
Connection ~ 8150 9050
Wire Wire Line
	8150 9450 8150 9550
Wire Wire Line
	8050 9550 8150 9550
Wire Wire Line
	8150 9550 9150 9550
Wire Wire Line
	6250 7350 6150 7350
Wire Wire Line
	6250 7150 6250 7250
Wire Wire Line
	6250 7250 6250 7350
Wire Wire Line
	6250 7250 6150 7250
Wire Wire Line
	6250 7150 6150 7150
Connection ~ 6250 7250
Wire Wire Line
	6150 7450 7150 7450
Wire Wire Line
	7150 7450 7150 6050
Wire Wire Line
	7150 6050 7750 6050
Wire Wire Line
	7750 6550 7250 6550
Wire Wire Line
	7250 6550 7250 7550
Wire Wire Line
	7250 7550 6150 7550
Wire Wire Line
	7750 7050 7350 7050
Wire Wire Line
	7350 7050 7350 7650
Wire Wire Line
	7350 7650 6150 7650
Wire Wire Line
	7750 7550 7450 7550
Wire Wire Line
	7450 7550 7450 7750
Wire Wire Line
	7450 7750 6150 7750
Wire Wire Line
	7750 8050 7450 8050
Wire Wire Line
	7450 8050 7450 7850
Wire Wire Line
	7450 7850 6150 7850
Wire Wire Line
	6150 7950 7350 7950
Wire Wire Line
	7350 7950 7350 8550
Wire Wire Line
	7350 8550 7750 8550
Wire Wire Line
	7750 9050 7250 9050
Wire Wire Line
	7250 9050 7250 8050
Wire Wire Line
	7250 8050 6150 8050
Wire Wire Line
	6150 8150 7150 8150
Wire Wire Line
	7150 8150 7150 9550
Wire Wire Line
	7150 9550 7750 9550
Wire Wire Line
	8850 7550 8850 7750
Wire Wire Line
	8850 7750 10150 7750
Wire Wire Line
	8850 8050 8850 7850
Wire Wire Line
	8850 7850 10150 7850
Wire Wire Line
	8950 8550 8950 7950
Wire Wire Line
	8950 7950 10150 7950
Wire Wire Line
	10150 8050 9050 8050
Wire Wire Line
	9050 8050 9050 9050
Wire Wire Line
	9150 9550 9150 8150
Wire Wire Line
	9150 8150 10150 8150
Connection ~ 8150 9550
Wire Wire Line
	10150 7650 8950 7650
Wire Wire Line
	8950 7650 8950 7050
Wire Wire Line
	9050 6550 9050 7550
Wire Wire Line
	9050 7550 10150 7550
Wire Wire Line
	10150 7450 9150 7450
Wire Wire Line
	9150 7450 9150 6050
Connection ~ 8150 6050
Wire Wire Line
	2600 7000 2600 7150
Wire Wire Line
	2600 7150 2600 7250
Wire Wire Line
	2600 6550 2600 6700
Wire Wire Line
	2200 7000 2200 7150
Wire Wire Line
	2200 6550 2200 6700
Wire Wire Line
	1800 6700 1800 6550
Wire Wire Line
	1800 7000 1800 7150
Wire Wire Line
	2200 7150 2600 7150
Connection ~ 2600 7150
Wire Wire Line
	1800 8750 1800 8900
Wire Wire Line
	1800 8900 1800 9000
Wire Wire Line
	1400 8750 1400 8900
Wire Wire Line
	1400 8900 1800 8900
Connection ~ 1800 8900
Wire Wire Line
	1800 8300 1800 8450
Wire Wire Line
	1400 8300 1400 8450
Wire Wire Line
	4850 9400 4950 9400
Wire Wire Line
	4950 9400 5050 9400
Wire Wire Line
	5050 9400 5150 9400
Wire Wire Line
	2800 8750 2800 8900
Wire Wire Line
	2800 8900 2800 9000
Wire Wire Line
	2400 8750 2400 8900
Wire Wire Line
	2400 8900 2800 8900
Connection ~ 2800 8900
Wire Wire Line
	2400 8450 2400 8300
Wire Wire Line
	2800 8450 2800 8300
Wire Wire Line
	2050 4150 2300 4150
Wire Wire Line
	2300 4150 2700 4150
Wire Wire Line
	2700 4150 3450 4150
Wire Wire Line
	3450 4150 3700 4150
Wire Wire Line
	3700 4150 3950 4150
Wire Wire Line
	3950 4150 4200 4150
Connection ~ 3950 4150
Connection ~ 3700 4150
Connection ~ 3950 5250
Connection ~ 3700 5250
Wire Wire Line
	3950 4500 3950 4150
Wire Wire Line
	3950 5750 3950 5900
Wire Wire Line
	6250 5750 6250 5900
Text Label 5200 6400 1    50   ~ 0
GND
$Comp
L D D301
U 1 1 5652EBFB
P 2700 4450
F 0 "D301" H 2700 4550 50  0000 C CNN
F 1 "1SS355" H 2700 4350 50  0000 C CNN
F 2 "" H 2700 4450 60  0000 C CNN
F 3 "" H 2700 4450 60  0000 C CNN
	1    2700 4450
	0    -1   -1   0   
$EndComp
$Comp
L R R301
U 1 1 5652ED02
P 2300 4450
F 0 "R301" V 2380 4450 50  0000 C CNN
F 1 "100k" V 2300 4450 50  0000 C CNN
F 2 "" V 2230 4450 30  0000 C CNN
F 3 "" H 2300 4450 30  0000 C CNN
	1    2300 4450
	1    0    0    -1  
$EndComp
$Comp
L C C303
U 1 1 5652EDBF
P 2300 4950
F 0 "C303" H 2325 5050 50  0000 L CNN
F 1 "2.2μ" H 2325 4850 50  0000 L CNN
F 2 "" H 2338 4800 30  0000 C CNN
F 3 "" H 2300 4950 60  0000 C CNN
	1    2300 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 4300 2700 4150
Connection ~ 3450 4150
Wire Wire Line
	2300 4300 2300 4150
Connection ~ 2700 4150
Wire Wire Line
	2300 4600 2300 4700
Wire Wire Line
	2300 4700 2300 4800
Wire Wire Line
	2700 4600 2700 4700
Wire Wire Line
	2700 4700 2700 4850
Wire Wire Line
	2700 4700 2300 4700
Connection ~ 2300 4700
Connection ~ 2700 4700
Text Label 2700 4850 3    50   ~ 0
PACK
$Comp
L GND #PWR301
U 1 1 5652F47D
P 2300 5250
F 0 "#PWR301" H 2300 5000 50  0001 C CNN
F 1 "GND" H 2300 5100 50  0000 C CNN
F 2 "" H 2300 5250 60  0000 C CNN
F 3 "" H 2300 5250 60  0000 C CNN
	1    2300 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 5250 2300 5100
$Comp
L ZENER D304
U 1 1 56532201
P 3700 4950
F 0 "D304" H 3700 5050 50  0000 C CNN
F 1 "16V" H 3700 4850 50  0000 C CNN
F 2 "" H 3700 4950 60  0000 C CNN
F 3 "" H 3700 4950 60  0000 C CNN
	1    3700 4950
	0    -1   1    0   
$EndComp
Wire Wire Line
	3700 4250 3700 4150
Wire Wire Line
	3700 4650 3700 4750
Wire Wire Line
	3700 5150 3700 5250
Wire Wire Line
	3450 5250 3450 4850
Wire Wire Line
	3450 4550 3450 4150
Wire Wire Line
	3950 4800 3950 5250
Wire Wire Line
	3950 5250 3950 5350
Wire Wire Line
	3950 5350 3950 5450
Wire Wire Line
	3450 5250 3700 5250
Wire Wire Line
	3700 5250 3950 5250
Wire Wire Line
	4400 4450 4400 5350
Wire Wire Line
	4400 5350 3950 5350
Connection ~ 3950 5350
$Comp
L Q_PMOS_GDS Q302
U 1 1 56535C2B
P 5800 4250
F 0 "Q302" V 5750 4500 50  0000 R CNN
F 1 "SUM110P08-11L" V 6050 4050 50  0000 L BNN
F 2 "" H 6000 4350 29  0000 C CNN
F 3 "" H 5800 4250 60  0000 C CNN
	1    5800 4250
	0    -1   -1   0   
$EndComp
$Comp
L R R305
U 1 1 56535C31
P 6250 5600
F 0 "R305" V 6330 5600 50  0000 C CNN
F 1 "1k" V 6250 5600 50  0000 C CNN
F 2 "" V 6180 5600 30  0000 C CNN
F 3 "" H 6250 5600 30  0000 C CNN
	1    6250 5600
	-1   0    0    -1  
$EndComp
$Comp
L R R303
U 1 1 56535C37
P 6250 4650
F 0 "R303" V 6330 4650 50  0000 C CNN
F 1 "1M" V 6250 4650 50  0000 C CNN
F 2 "" V 6180 4650 30  0000 C CNN
F 3 "" H 6250 4650 30  0000 C CNN
	1    6250 4650
	-1   0    0    -1  
$EndComp
$Comp
L C C302
U 1 1 56535C3D
P 6750 4700
F 0 "C302" H 6600 4800 50  0000 L CNN
F 1 "4.7n" H 6550 4600 50  0000 L CNN
F 2 "" H 6788 4550 30  0000 C CNN
F 3 "" H 6750 4700 60  0000 C CNN
	1    6750 4700
	-1   0    0    -1  
$EndComp
$Comp
L ZENER D303
U 1 1 56535C43
P 6500 4450
F 0 "D303" H 6500 4550 50  0000 C CNN
F 1 "16V" H 6500 4350 50  0000 C CNN
F 2 "" H 6500 4450 60  0000 C CNN
F 3 "" H 6500 4450 60  0000 C CNN
	1    6500 4450
	0    1    -1   0   
$EndComp
Connection ~ 6250 4150
Connection ~ 6500 4150
Connection ~ 6250 5250
Connection ~ 6500 5250
Wire Wire Line
	6250 4150 6250 4500
Connection ~ 6750 4150
$Comp
L ZENER D305
U 1 1 56535C50
P 6500 4950
F 0 "D305" H 6500 5050 50  0000 C CNN
F 1 "16V" H 6500 4850 50  0000 C CNN
F 2 "" H 6500 4950 60  0000 C CNN
F 3 "" H 6500 4950 60  0000 C CNN
	1    6500 4950
	0    1    1    0   
$EndComp
Wire Wire Line
	6500 4150 6500 4250
Wire Wire Line
	6500 4650 6500 4750
Wire Wire Line
	6500 5150 6500 5250
Wire Wire Line
	6750 5250 6750 4850
Wire Wire Line
	6750 4150 6750 4550
Wire Wire Line
	6250 4800 6250 5250
Wire Wire Line
	6250 5250 6250 5350
Wire Wire Line
	6250 5350 6250 5450
Wire Wire Line
	6250 5250 6500 5250
Wire Wire Line
	6500 5250 6750 5250
Wire Wire Line
	5800 4450 5800 5350
Wire Wire Line
	5800 5350 6250 5350
Connection ~ 6250 5350
Wire Wire Line
	6000 4150 6250 4150
Wire Wire Line
	6250 4150 6500 4150
Wire Wire Line
	6500 4150 6750 4150
Wire Wire Line
	6750 4150 7050 4150
Wire Wire Line
	5600 4150 4600 4150
$Comp
L CONN_01X08 P?
U 1 1 5657F8B3
P 10350 7800
F 0 "P?" H 10350 8250 50  0000 C CNN
F 1 "CONN_BATT_SENSE" V 10450 7800 50  0000 C CNN
F 2 "" H 10350 7800 60  0000 C CNN
F 3 "" H 10350 7800 60  0000 C CNN
	1    10350 7800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 6400 5400 5900
Wire Wire Line
	5400 5900 3950 5900
Wire Wire Line
	5500 6400 5500 5900
Wire Wire Line
	5500 5900 6250 5900
$Comp
L CONN_01X02 P?
U 1 1 565867F3
P 10350 5800
F 0 "P?" H 10350 5950 50  0000 C CNN
F 1 "CONN_BATT_MAIN" V 10450 5800 50  0000 C CNN
F 2 "" H 10350 5800 60  0000 C CNN
F 3 "" H 10350 5800 60  0000 C CNN
	1    10350 5800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 565868D4
P 10000 6000
F 0 "#PWR?" H 10000 5750 50  0001 C CNN
F 1 "GND" H 10000 5850 50  0000 C CNN
F 2 "" H 10000 6000 60  0000 C CNN
F 3 "" H 10000 6000 60  0000 C CNN
	1    10000 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 6000 10000 5850
Wire Wire Line
	10000 5850 10150 5850
Wire Wire Line
	7050 4150 7050 5750
Wire Wire Line
	7050 5750 7050 7050
Wire Wire Line
	7050 7050 6150 7050
Connection ~ 7050 5750
$Comp
L VBATT #PWR?
U 1 1 5658A738
P 2050 4000
F 0 "#PWR?" H 2050 3850 50  0001 C CNN
F 1 "VBATT" H 2050 4150 50  0000 C CNN
F 2 "" H 2050 4000 60  0000 C CNN
F 3 "" H 2050 4000 60  0000 C CNN
	1    2050 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 4000 2050 4150
Connection ~ 2300 4150
Text Notes 11250 3000 0    100  ~ 0
Voltage, Current, & Temp Sense
$Comp
L C C?
U 1 1 5659CAA6
P 15100 1350
F 0 "C?" H 15125 1450 50  0000 L CNN
F 1 "0.1μ" H 15125 1250 50  0000 L CNN
F 2 "" H 15138 1200 30  0000 C CNN
F 3 "" H 15100 1350 60  0000 C CNN
	1    15100 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	15100 1500 15100 1700
Wire Wire Line
	15100 1700 15100 2450
Wire Wire Line
	14950 1700 15100 1700
Wire Wire Line
	14950 1900 15550 1900
Wire Wire Line
	14950 2000 15550 2000
$Comp
L +5V #PWR?
U 1 1 5659CAB5
P 14200 1000
F 0 "#PWR?" H 14200 850 50  0001 C CNN
F 1 "+5V" H 14200 1140 50  0000 C CNN
F 2 "" H 14200 1000 60  0000 C CNN
F 3 "" H 14200 1000 60  0000 C CNN
	1    14200 1000
	1    0    0    -1  
$EndComp
Text HLabel 15550 1900 2    50   BiDi ~ 0
I2C_CLOCK
Text HLabel 15550 2000 2    50   BiDi ~ 0
I2C_DATA
Text Notes 11300 2750 0    50   Italic 0
I2C addr 0x9A
Wire Notes Line
	11250 750  16150 750 
Wire Notes Line
	16150 750  16150 2800
Wire Notes Line
	16150 2800 11250 2800
Wire Notes Line
	11250 2800 11250 750 
$Comp
L LTC2990 U?
U 1 1 5659CAC2
P 14200 1800
F 0 "U?" H 13600 2300 50  0000 L CNN
F 1 "LTC2990" H 14350 1300 50  0000 L CNN
F 2 "" H 13500 2200 50  0000 C CNN
F 3 "" H 13600 2300 50  0000 C CNN
	1    14200 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	14200 1000 14200 1100
Wire Wire Line
	14200 1100 14200 1200
$Comp
L GND #PWR?
U 1 1 5659CACB
P 14200 2550
F 0 "#PWR?" H 14200 2300 50  0001 C CNN
F 1 "GND" H 14200 2400 50  0000 C CNN
F 2 "" H 14200 2550 60  0000 C CNN
F 3 "" H 14200 2550 60  0000 C CNN
	1    14200 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	14200 2550 14200 2400
Wire Wire Line
	15100 1200 15100 1100
Wire Wire Line
	14200 1100 15100 1100
Wire Wire Line
	15100 1100 15500 1100
Connection ~ 14200 1100
Connection ~ 15100 1700
$Comp
L Q_NPN_BCE Q?
U 1 1 5659DDDC
P 11850 1900
F 0 "Q?" H 12150 1950 50  0000 R CNN
F 1 "MMBT3904" H 12450 1850 50  0000 R CNN
F 2 "" H 12050 2000 29  0000 C CNN
F 3 "" H 11850 1900 60  0000 C CNN
	1    11850 1900
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5659DDE3
P 11500 2200
F 0 "C?" H 11525 2300 50  0000 L CNN
F 1 "470p" H 11525 2100 50  0000 L CNN
F 2 "" H 11538 2050 30  0000 C CNN
F 3 "" H 11500 2200 60  0000 C CNN
	1    11500 2200
	1    0    0    -1  
$EndComp
Text Notes 12450 1500 2    60   ~ 0
Temp. Sense, Battery
Wire Wire Line
	11500 1550 11500 1900
Wire Wire Line
	11500 1900 11500 2050
Wire Wire Line
	11500 1900 11650 1900
Wire Wire Line
	11500 1550 11950 1550
Wire Wire Line
	11950 1550 12600 1550
Wire Wire Line
	11950 1550 11950 1700
Connection ~ 11500 1900
Wire Wire Line
	11950 2100 11950 2500
Wire Wire Line
	11500 2500 11950 2500
Wire Wire Line
	11950 2500 12600 2500
Wire Wire Line
	11500 2500 11500 2350
$Comp
L R4T R?
U 1 1 565A1DCC
P 9700 5750
F 0 "R?" V 9620 5750 50  0000 C CNN
F 1 "R4T" V 9700 5750 50  0000 C CNN
F 2 "" V 9630 5750 30  0000 C CNN
F 3 "" H 9700 5750 30  0000 C CNN
	1    9700 5750
	0    1    -1   0   
$EndComp
Wire Wire Line
	9850 5750 10150 5750
Wire Wire Line
	9550 5750 7050 5750
Connection ~ 11950 1550
Wire Wire Line
	13450 1900 12600 1900
Wire Wire Line
	12600 1900 12600 2500
Wire Wire Line
	13450 1800 12600 1800
Wire Wire Line
	12600 1800 12600 1550
Wire Wire Line
	9650 5650 9650 1250
Wire Wire Line
	9650 1250 13300 1250
Wire Wire Line
	13300 1250 13300 1600
Wire Wire Line
	13300 1600 13450 1600
Wire Wire Line
	9750 5650 9750 1350
Wire Wire Line
	9750 1350 13200 1350
Wire Wire Line
	13200 1350 13200 1700
Wire Wire Line
	13200 1700 13450 1700
$Comp
L R R?
U 1 1 565BF325
P 15500 1350
F 0 "R?" V 15580 1350 50  0000 C CNN
F 1 "5k6" V 15500 1350 50  0000 C CNN
F 2 "" V 15430 1350 30  0000 C CNN
F 3 "" H 15500 1350 30  0000 C CNN
	1    15500 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	15500 1100 15500 1200
Connection ~ 15100 1100
Wire Wire Line
	14950 1800 15500 1800
Wire Wire Line
	15500 1800 15500 1500
$Comp
L GND #PWR?
U 1 1 565C67AD
P 15100 2450
F 0 "#PWR?" H 15100 2200 50  0001 C CNN
F 1 "GND" H 15100 2300 50  0000 C CNN
F 2 "" H 15100 2450 60  0000 C CNN
F 3 "" H 15100 2450 60  0000 C CNN
	1    15100 2450
	1    0    0    -1  
$EndComp
Connection ~ 11950 2500
$EndSCHEMATC
