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
Sheet 6 7
Title "LTC3 Rocket Umbilical & Ignition Control"
Date "2015-11-25"
Rev "A"
Comp "Portland State Aerospace Society <http://psas.pdx.edu/>"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L GND #PWR614
U 1 1 55CD6EA7
P 14350 4450
F 0 "#PWR614" H 14350 4200 50  0001 C CNN
F 1 "GND" H 14350 4300 50  0000 C CNN
F 2 "" H 14350 4450 60  0000 C CNN
F 3 "" H 14350 4450 60  0000 C CNN
	1    14350 4450
	1    0    0    -1  
$EndComp
$Comp
L R R612
U 1 1 55CD7872
P 7400 8800
F 0 "R612" V 7480 8800 50  0000 C CNN
F 1 "560" V 7400 8800 50  0000 C CNN
F 2 "" V 7330 8800 30  0000 C CNN
F 3 "" H 7400 8800 30  0000 C CNN
	1    7400 8800
	0    1    1    0   
$EndComp
$Comp
L LED D603
U 1 1 55CD78F5
P 7700 9150
F 0 "D603" H 7700 9250 50  0000 C CNN
F 1 "LED" H 7700 9050 50  0000 C CNN
F 2 "" H 7700 9150 60  0000 C CNN
F 3 "" H 7700 9150 60  0000 C CNN
	1    7700 9150
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR619
U 1 1 55CD7A18
P 7700 9500
F 0 "#PWR619" H 7700 9250 50  0001 C CNN
F 1 "GND" H 7700 9350 50  0000 C CNN
F 2 "" H 7700 9500 60  0000 C CNN
F 3 "" H 7700 9500 60  0000 C CNN
	1    7700 9500
	1    0    0    -1  
$EndComp
$Comp
L R R604
U 1 1 55CE7D73
P 9000 3250
F 0 "R604" V 9080 3250 50  0000 C CNN
F 1 "10k" V 9000 3250 50  0000 C CNN
F 2 "" V 8930 3250 30  0000 C CNN
F 3 "" H 9000 3250 30  0000 C CNN
	1    9000 3250
	1    0    0    -1  
$EndComp
$Comp
L R R605
U 1 1 55CE7DD1
P 9200 3250
F 0 "R605" V 9280 3250 50  0000 C CNN
F 1 "10k" V 9200 3250 50  0000 C CNN
F 2 "" V 9130 3250 30  0000 C CNN
F 3 "" H 9200 3250 30  0000 C CNN
	1    9200 3250
	1    0    0    -1  
$EndComp
$Comp
L C C601
U 1 1 55CE9D92
P 14700 2550
F 0 "C601" H 14725 2650 50  0000 L CNN
F 1 "0.1μ" H 14725 2450 50  0000 L CNN
F 2 "" H 14738 2400 30  0000 C CNN
F 3 "" H 14700 2550 60  0000 C CNN
	1    14700 2550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR607
U 1 1 55CE9DE6
P 14700 2950
F 0 "#PWR607" H 14700 2700 50  0001 C CNN
F 1 "GND" H 14700 2800 50  0000 C CNN
F 2 "" H 14700 2950 60  0000 C CNN
F 3 "" H 14700 2950 60  0000 C CNN
	1    14700 2950
	1    0    0    -1  
$EndComp
$Comp
L C C602
U 1 1 55CE9F80
P 15200 2550
F 0 "C602" H 15225 2650 50  0000 L CNN
F 1 "0.1μ" H 15225 2450 50  0000 L CNN
F 2 "" H 15238 2400 30  0000 C CNN
F 3 "" H 15200 2550 60  0000 C CNN
	1    15200 2550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR608
U 1 1 55CE9F86
P 15200 2950
F 0 "#PWR608" H 15200 2700 50  0001 C CNN
F 1 "GND" H 15200 2800 50  0000 C CNN
F 2 "" H 15200 2950 60  0000 C CNN
F 3 "" H 15200 2950 60  0000 C CNN
	1    15200 2950
	1    0    0    -1  
$EndComp
Text Notes 14500 3400 0    60   ~ 0
Bypass Capacitors\n(one per IC VCC)
$Comp
L GND #PWR612
U 1 1 5647CF72
P 9000 3600
F 0 "#PWR612" H 9000 3350 50  0001 C CNN
F 1 "GND" H 9000 3450 50  0000 C CNN
F 2 "" H 9000 3600 60  0000 C CNN
F 3 "" H 9000 3600 60  0000 C CNN
	1    9000 3600
	1    0    0    -1  
$EndComp
$Comp
L D D602
U 1 1 5647D8E6
P 1950 8100
F 0 "D602" H 1950 8200 50  0000 C CNN
F 1 "D" H 1950 8000 50  0000 C CNN
F 2 "" H 1950 8100 60  0000 C CNN
F 3 "" H 1950 8100 60  0000 C CNN
	1    1950 8100
	1    0    0    -1  
$EndComp
$Comp
L R R608
U 1 1 5647DA5E
P 2500 8100
F 0 "R608" V 2580 8100 50  0000 C CNN
F 1 "100" V 2500 8100 50  0000 C CNN
F 2 "" V 2430 8100 30  0000 C CNN
F 3 "" H 2500 8100 30  0000 C CNN
	1    2500 8100
	0    1    1    0   
$EndComp
$Comp
L R R609
U 1 1 5647DAB5
P 2200 8550
F 0 "R609" V 2280 8550 50  0000 C CNN
F 1 "500k" V 2200 8550 50  0000 C CNN
F 2 "" V 2130 8550 30  0000 C CNN
F 3 "" H 2200 8550 30  0000 C CNN
	1    2200 8550
	0    1    1    0   
$EndComp
$Comp
L R R611
U 1 1 5647DAF6
P 2200 8800
F 0 "R611" V 2280 8800 50  0000 C CNN
F 1 "NP" V 2200 8800 50  0000 C CNN
F 2 "" V 2130 8800 30  0000 C CNN
F 3 "" H 2200 8800 30  0000 C CNN
	1    2200 8800
	0    1    1    0   
$EndComp
$Comp
L C C604
U 1 1 5647DB7B
P 3200 8950
F 0 "C604" H 3225 9050 50  0000 L CNN
F 1 "10μ" H 3225 8850 50  0000 L CNN
F 2 "" H 3238 8800 30  0000 C CNN
F 3 "" H 3200 8950 60  0000 C CNN
	1    3200 8950
	1    0    0    -1  
$EndComp
$Comp
L C C605
U 1 1 5647DBBE
P 3550 8950
F 0 "C605" H 3575 9050 50  0000 L CNN
F 1 "NP" H 3575 8850 50  0000 L CNN
F 2 "" H 3588 8800 30  0000 C CNN
F 3 "" H 3550 8950 60  0000 C CNN
	1    3550 8950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR618
U 1 1 5647B7B0
P 3200 9350
F 0 "#PWR618" H 3200 9100 50  0001 C CNN
F 1 "GND" H 3200 9200 50  0000 C CNN
F 2 "" H 3200 9350 60  0000 C CNN
F 3 "" H 3200 9350 60  0000 C CNN
	1    3200 9350
	1    0    0    -1  
$EndComp
Text Notes 1350 10050 0    100  ~ 0
Delay (5s)
$Comp
L CONN_01X02 P603
U 1 1 56482BE5
P 8850 7200
F 0 "P603" H 8850 7350 50  0000 C CNN
F 1 "IGNITION" V 8950 7200 50  0000 C CNN
F 2 "" H 8850 7200 60  0000 C CNN
F 3 "" H 8850 7200 60  0000 C CNN
	1    8850 7200
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P602
U 1 1 56482C4A
P 8850 6650
F 0 "P602" H 8850 6800 50  0000 C CNN
F 1 "BATT-IN" V 8950 6650 50  0000 C CNN
F 2 "" H 8850 6650 60  0000 C CNN
F 3 "" H 8850 6650 60  0000 C CNN
	1    8850 6650
	1    0    0    -1  
$EndComp
Text Label 8650 7250 2    60   ~ 0
GND_IGN_BATT
Text Label 8650 7150 2    60   ~ 0
IGNITION
Text Label 8650 6700 2    60   ~ 0
GND_IGN_BATT
Text Label 8650 6600 2    60   ~ 0
IGN_BATT
$Comp
L GND #PWR617
U 1 1 564887ED
P 8200 9050
F 0 "#PWR617" H 8200 8800 50  0001 C CNN
F 1 "GND" H 8200 8900 50  0000 C CNN
F 2 "" H 8200 9050 60  0000 C CNN
F 3 "" H 8200 9050 60  0000 C CNN
	1    8200 9050
	1    0    0    -1  
$EndComp
$Comp
L R R610
U 1 1 56488897
P 8200 8700
F 0 "R610" V 8280 8700 50  0000 C CNN
F 1 "10k" V 8200 8700 50  0000 C CNN
F 2 "" V 8130 8700 30  0000 C CNN
F 3 "" H 8200 8700 30  0000 C CNN
	1    8200 8700
	1    0    0    -1  
$EndComp
$Comp
L D D601
U 1 1 564890D8
P 5450 7250
F 0 "D601" H 5450 7350 50  0000 C CNN
F 1 "D" H 5450 7150 50  0000 C CNN
F 2 "" H 5450 7250 60  0000 C CNN
F 3 "" H 5450 7250 60  0000 C CNN
	1    5450 7250
	-1   0    0    1   
$EndComp
$Comp
L 741G08 U603
U 1 1 5648A822
P 9950 2750
F 0 "U603" H 9700 3000 60  0000 C CNN
F 1 "741G08" H 9700 2500 60  0000 C CNN
F 2 "" H 9950 2750 60  0000 C CNN
F 3 "" H 9950 2750 60  0000 C CNN
	1    9950 2750
	1    0    0    -1  
$EndComp
$Comp
L R R601
U 1 1 5648F319
P 6350 2250
F 0 "R601" V 6430 2250 50  0000 C CNN
F 1 "10k" V 6350 2250 50  0000 C CNN
F 2 "" V 6280 2250 30  0000 C CNN
F 3 "" H 6350 2250 30  0000 C CNN
	1    6350 2250
	1    0    0    -1  
$EndComp
$Comp
L 4N35 U601
U 1 1 5648FD01
P 5550 2650
F 0 "U601" H 5350 2850 50  0000 L CNN
F 1 "4N35" H 5550 2850 50  0000 L CNN
F 2 "DIP-6" H 5350 2450 50  0000 L CIN
F 3 "" H 5550 2650 50  0000 L CNN
	1    5550 2650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR605
U 1 1 5648FF0A
P 5100 2900
F 0 "#PWR605" H 5100 2650 50  0001 C CNN
F 1 "GND" H 5100 2750 50  0000 C CNN
F 2 "" H 5100 2900 60  0000 C CNN
F 3 "" H 5100 2900 60  0000 C CNN
	1    5100 2900
	1    0    0    -1  
$EndComp
$Comp
L R R602
U 1 1 56490E40
P 2200 2550
F 0 "R602" V 2280 2550 50  0000 C CNN
F 1 "100" V 2200 2550 50  0000 C CNN
F 2 "" V 2130 2550 30  0000 C CNN
F 3 "" H 2200 2550 30  0000 C CNN
	1    2200 2550
	0    1    1    0   
$EndComp
$Comp
L R R603
U 1 1 56490E97
P 2500 2850
F 0 "R603" V 2580 2850 50  0000 C CNN
F 1 "10k" V 2500 2850 50  0000 C CNN
F 2 "" V 2430 2850 30  0000 C CNN
F 3 "" H 2500 2850 30  0000 C CNN
	1    2500 2850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR609
U 1 1 56491171
P 2500 3150
F 0 "#PWR609" H 2500 2900 50  0001 C CNN
F 1 "GND" H 2500 3000 50  0000 C CNN
F 2 "" H 2500 3150 60  0000 C CNN
F 3 "" H 2500 3150 60  0000 C CNN
	1    2500 3150
	1    0    0    -1  
$EndComp
$Comp
L SN65220DBV U604
U 1 1 5647E4C9
P 3900 3250
F 0 "U604" H 3900 3550 60  0000 C CNN
F 1 "SN65220DBV" H 3900 2950 60  0000 C CNN
F 2 "" H 3900 3000 60  0000 C CNN
F 3 "" H 3900 3000 60  0000 C CNN
	1    3900 3250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR610
U 1 1 5647EC3E
P 3200 3400
F 0 "#PWR610" H 3200 3150 50  0001 C CNN
F 1 "GND" H 3200 3250 50  0000 C CNN
F 2 "" H 3200 3400 60  0000 C CNN
F 3 "" H 3200 3400 60  0000 C CNN
	1    3200 3400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR611
U 1 1 5647ED12
P 4600 3400
F 0 "#PWR611" H 4600 3150 50  0001 C CNN
F 1 "GND" H 4600 3250 50  0000 C CNN
F 2 "" H 4600 3400 60  0000 C CNN
F 3 "" H 4600 3400 60  0000 C CNN
	1    4600 3400
	1    0    0    -1  
$EndComp
$Comp
L R R606
U 1 1 56480583
P 2200 3950
F 0 "R606" V 2280 3950 50  0000 C CNN
F 1 "10k" V 2200 3950 50  0000 C CNN
F 2 "" V 2130 3950 30  0000 C CNN
F 3 "" H 2200 3950 30  0000 C CNN
	1    2200 3950
	0    1    1    0   
$EndComp
$Comp
L R R607
U 1 1 564805EA
P 2500 4250
F 0 "R607" V 2580 4250 50  0000 C CNN
F 1 "2k6" V 2500 4250 50  0000 C CNN
F 2 "" V 2430 4250 30  0000 C CNN
F 3 "" H 2500 4250 30  0000 C CNN
	1    2500 4250
	1    0    0    -1  
$EndComp
$Comp
L C C603
U 1 1 56480D3A
P 2850 4250
F 0 "C603" H 2875 4350 50  0000 L CNN
F 1 "0.1μ" H 2875 4150 50  0000 L CNN
F 2 "" H 2888 4100 30  0000 C CNN
F 3 "" H 2850 4250 60  0000 C CNN
	1    2850 4250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR615
U 1 1 564813F6
P 2500 4600
F 0 "#PWR615" H 2500 4350 50  0001 C CNN
F 1 "GND" H 2500 4450 50  0000 C CNN
F 2 "" H 2500 4600 60  0000 C CNN
F 3 "" H 2500 4600 60  0000 C CNN
	1    2500 4600
	1    0    0    -1  
$EndComp
$Comp
L PMV45EN Q601
U 1 1 5649619D
P 8650 8250
F 0 "Q601" H 8850 8325 50  0000 L CNN
F 1 "PMV45EN" H 8850 8250 50  0000 L CNN
F 2 "SOT-23" H 8850 8175 50  0000 L CIN
F 3 "" H 8650 8250 50  0000 L CNN
	1    8650 8250
	1    0    0    -1  
$EndComp
Text Notes 12250 9150 0    100  ~ 0
TODO:\n* Select appropriate component values.\n* Move TVS upstream of voltage dividers.
Text HLabel 14900 6200 2    60   Output ~ 0
ROCKET-READY
Text Label 14800 6200 1    60   ~ 0
ROCKET-READY
$Comp
L CONN_01X04 P601
U 1 1 564BF3B4
P 14450 6350
F 0 "P601" H 14450 6600 50  0000 C CNN
F 1 "CONN_01X04" V 14550 6350 50  0000 C CNN
F 2 "" H 14450 6350 60  0000 C CNN
F 3 "" H 14450 6350 60  0000 C CNN
	1    14450 6350
	-1   0    0    -1  
$EndComp
Text Label 1900 2550 2    60   ~ 0
ROCKET-READY
Text Notes 4500 10050 0    100  ~ 0
Ignition/Battery Control
$Comp
L GND #PWR606
U 1 1 564C786F
P 6000 2900
F 0 "#PWR606" H 6000 2650 50  0001 C CNN
F 1 "GND" H 6000 2750 50  0000 C CNN
F 2 "" H 6000 2900 60  0000 C CNN
F 3 "" H 6000 2900 60  0000 C CNN
	1    6000 2900
	1    0    0    -1  
$EndComp
Text Notes 1000 5150 0    100  ~ 0
Input Logic
Text Notes 2100 2450 2    60   Italic 0
+5V
Text Notes 2300 2450 0    60   Italic 0
+1.2V
Text Notes 2300 3850 0    60   ~ 0
+5V
$Comp
L CD74HC14 U602
U 1 1 5650FE70
P 7050 2650
F 0 "U602" H 7200 2750 40  0000 C CNN
F 1 "CD74HC14" H 7250 2550 40  0000 C CNN
F 2 "" H 7050 2650 60  0000 C CNN
F 3 "" H 7050 2650 60  0000 C CNN
	1    7050 2650
	1    0    0    -1  
$EndComp
$Comp
L CD74HC14 U602
U 2 1 56510E08
P 5550 3950
F 0 "U602" H 5700 4050 40  0000 C CNN
F 1 "CD74HC14" H 5750 3850 40  0000 C CNN
F 2 "" H 5550 3950 60  0000 C CNN
F 3 "" H 5550 3950 60  0000 C CNN
	2    5550 3950
	1    0    0    -1  
$EndComp
$Comp
L CD74HC14 U602
U 5 1 56512200
P 5150 8550
F 0 "U602" H 5300 8650 40  0000 C CNN
F 1 "CD74HC14" H 5350 8450 40  0000 C CNN
F 2 "" H 5150 8550 60  0000 C CNN
F 3 "" H 5150 8550 60  0000 C CNN
	5    5150 8550
	1    0    0    -1  
$EndComp
$Comp
L CD74HC14 U602
U 4 1 56512296
P 6550 8300
F 0 "U602" H 6700 8400 40  0000 C CNN
F 1 "CD74HC14" H 6750 8200 40  0000 C CNN
F 2 "" H 6550 8300 60  0000 C CNN
F 3 "" H 6550 8300 60  0000 C CNN
	4    6550 8300
	1    0    0    -1  
$EndComp
$Comp
L CD74HC14 U602
U 6 1 5651237A
P 6550 8800
F 0 "U602" H 6700 8900 40  0000 C CNN
F 1 "CD74HC14" H 6750 8700 40  0000 C CNN
F 2 "" H 6550 8800 60  0000 C CNN
F 3 "" H 6550 8800 60  0000 C CNN
	6    6550 8800
	1    0    0    -1  
$EndComp
$Comp
L CD74HC14 U602
U 3 1 5651300D
P 14950 4050
F 0 "U602" H 15100 4150 40  0000 C CNN
F 1 "CD74HC14" H 15150 3950 40  0000 C CNN
F 2 "" H 14950 4050 60  0000 C CNN
F 3 "" H 14950 4050 60  0000 C CNN
	3    14950 4050
	1    0    0    -1  
$EndComp
Text HLabel 15000 1350 0    60   Input ~ 0
VCC_5V
$Comp
L VCC #PWR601
U 1 1 564858E6
P 15250 1100
F 0 "#PWR601" H 15250 950 50  0001 C CNN
F 1 "VCC" H 15250 1250 50  0000 C CNN
F 2 "" H 15250 1100 60  0000 C CNN
F 3 "" H 15250 1100 60  0000 C CNN
	1    15250 1100
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR603
U 1 1 56566F6E
P 14700 2150
F 0 "#PWR603" H 14700 2000 50  0001 C CNN
F 1 "+5V" H 14700 2290 50  0000 C CNN
F 2 "" H 14700 2150 60  0000 C CNN
F 3 "" H 14700 2150 60  0000 C CNN
	1    14700 2150
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR604
U 1 1 565674B7
P 15200 2150
F 0 "#PWR604" H 15200 2000 50  0001 C CNN
F 1 "+5V" H 15200 2290 50  0000 C CNN
F 2 "" H 15200 2150 60  0000 C CNN
F 3 "" H 15200 2150 60  0000 C CNN
	1    15200 2150
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR602
U 1 1 565691D9
P 6350 1950
F 0 "#PWR602" H 6350 1800 50  0001 C CNN
F 1 "+5V" H 6350 2090 50  0000 C CNN
F 2 "" H 6350 1950 60  0000 C CNN
F 3 "" H 6350 1950 60  0000 C CNN
	1    6350 1950
	1    0    0    -1  
$EndComp
$Comp
L +19V #PWR613
U 1 1 56569ABE
P 1900 3700
F 0 "#PWR613" H 1900 3550 50  0001 C CNN
F 1 "+19V" H 1900 3840 50  0000 C CNN
F 2 "" H 1900 3700 60  0000 C CNN
F 3 "" H 1900 3700 60  0000 C CNN
	1    1900 3700
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR616
U 1 1 5656BC54
P 5150 7000
F 0 "#PWR616" H 5150 6850 50  0001 C CNN
F 1 "+5V" H 5150 7140 50  0000 C CNN
F 2 "" H 5150 7000 60  0000 C CNN
F 3 "" H 5150 7000 60  0000 C CNN
	1    5150 7000
	1    0    0    -1  
$EndComp
Text Notes 14500 1550 0    60   ~ 0
VCC for CD74HC14
Text Notes 14200 4800 0    60   ~ 0
Spare Schmitt Inverter
Wire Wire Line
	8700 3950 8700 2850
Connection ~ 9000 2650
Connection ~ 9200 2850
Wire Notes Line
	14200 4700 14200 3800
Wire Notes Line
	15700 4700 14200 4700
Wire Notes Line
	15700 3800 15700 4700
Wire Notes Line
	14200 3800 15700 3800
Wire Notes Line
	14500 3200 14500 1900
Wire Notes Line
	15450 3200 14500 3200
Wire Notes Line
	15450 1900 15450 3200
Wire Notes Line
	14500 1900 15450 1900
Wire Notes Line
	15450 1450 14500 1450
Wire Notes Line
	15450 850  15450 1450
Wire Notes Line
	14500 850  15450 850 
Wire Notes Line
	14500 1450 14500 850 
Wire Wire Line
	1900 3700 1900 3950
Wire Wire Line
	15250 1100 15250 1350
Wire Wire Line
	15250 1350 15000 1350
Wire Wire Line
	9200 3500 9000 3500
Connection ~ 9000 3500
Wire Wire Line
	9000 3400 9000 3600
Wire Wire Line
	1050 8550 2050 8550
Wire Wire Line
	1050 5350 1050 8550
Wire Wire Line
	11050 5350 1050 5350
Wire Wire Line
	11050 2750 11050 5350
Wire Wire Line
	10550 2750 11050 2750
Wire Notes Line
	950  4950 950  900 
Wire Notes Line
	10800 4950 950  4950
Wire Notes Line
	10800 900  10800 4950
Wire Notes Line
	950  900  10800 900 
Connection ~ 4750 3950
Wire Wire Line
	4750 3950 4750 3100
Wire Wire Line
	4750 3100 4450 3100
Connection ~ 3200 2550
Wire Wire Line
	3200 2550 3200 3100
Wire Wire Line
	3200 3100 3350 3100
Wire Wire Line
	6000 3950 8700 3950
Wire Wire Line
	2350 2550 5250 2550
Wire Wire Line
	2350 3950 5100 3950
Wire Wire Line
	2500 4100 2500 3950
Wire Wire Line
	1900 2550 2050 2550
Wire Wire Line
	1900 3950 2050 3950
Wire Wire Line
	6000 2750 5850 2750
Wire Wire Line
	6000 2900 6000 2750
Wire Wire Line
	5100 2750 5250 2750
Wire Wire Line
	5100 2900 5100 2750
Wire Notes Line
	4450 5700 10800 5700
Wire Notes Line
	4450 9850 4450 5700
Wire Notes Line
	10800 9850 4450 9850
Wire Notes Line
	10800 5700 10800 9850
Wire Wire Line
	7700 8950 7700 8800
Wire Wire Line
	7700 8800 7550 8800
Wire Wire Line
	7700 9500 7700 9350
Wire Wire Line
	5850 8550 5600 8550
Wire Wire Line
	5850 8800 6100 8800
Wire Wire Line
	5850 8300 6100 8300
Wire Wire Line
	9200 2850 9200 3100
Wire Wire Line
	9000 2650 9000 3100
Wire Wire Line
	14900 6200 14650 6200
Wire Wire Line
	5700 6600 8650 6600
Wire Wire Line
	7050 7150 8650 7150
Wire Wire Line
	7000 8300 8450 8300
Connection ~ 2850 3950
Connection ~ 2500 3950
Wire Wire Line
	2850 3950 2850 4100
Connection ~ 2500 4500
Wire Wire Line
	2850 4500 2500 4500
Wire Wire Line
	2850 4400 2850 4500
Wire Wire Line
	2500 4400 2500 4600
Wire Wire Line
	4600 3250 4450 3250
Wire Wire Line
	4600 3400 4600 3250
Wire Wire Line
	3200 3250 3350 3250
Wire Wire Line
	3200 3400 3200 3250
Connection ~ 2500 2550
Wire Wire Line
	2500 3150 2500 3000
Wire Wire Line
	2500 2700 2500 2550
Connection ~ 6350 2650
Wire Wire Line
	5850 2650 6600 2650
Wire Wire Line
	6350 2400 6350 2650
Wire Wire Line
	6350 1950 6350 2100
Connection ~ 8200 8300
Wire Wire Line
	8200 8300 8200 8550
Connection ~ 8200 8950
Wire Wire Line
	8750 8950 8200 8950
Wire Wire Line
	8750 8450 8750 8950
Wire Wire Line
	8200 8850 8200 9050
Wire Wire Line
	8500 6700 8650 6700
Wire Wire Line
	8650 7250 8500 7250
Connection ~ 3550 8550
Wire Notes Line
	1300 9850 3950 9850
Wire Notes Line
	1300 7800 1300 9850
Wire Notes Line
	3950 7800 1300 7800
Wire Notes Line
	3950 9850 3950 7800
Connection ~ 1650 8550
Wire Wire Line
	1650 8100 1650 8550
Wire Wire Line
	1800 8100 1650 8100
Connection ~ 2800 8550
Wire Wire Line
	2800 8550 2800 8100
Wire Wire Line
	2800 8100 2650 8100
Wire Wire Line
	2100 8100 2350 8100
Connection ~ 3200 8550
Wire Wire Line
	3550 8550 3550 8800
Connection ~ 2450 8550
Wire Wire Line
	2450 8800 2450 8550
Wire Wire Line
	2350 8800 2450 8800
Wire Wire Line
	2350 8550 4700 8550
Wire Wire Line
	3200 8550 3200 8800
Connection ~ 1950 8550
Wire Wire Line
	1950 8550 1950 8800
Wire Wire Line
	1950 8800 2050 8800
Connection ~ 3200 9200
Wire Wire Line
	3550 9200 3200 9200
Wire Wire Line
	3550 9100 3550 9200
Wire Wire Line
	3200 9100 3200 9350
Wire Wire Line
	9200 3400 9200 3500
Wire Wire Line
	15200 2700 15200 2950
Wire Wire Line
	15200 2400 15200 2150
Wire Wire Line
	14700 2700 14700 2950
Wire Wire Line
	14700 2400 14700 2150
Wire Wire Line
	8700 2850 9350 2850
Wire Wire Line
	7500 2650 9350 2650
Wire Wire Line
	7250 8800 7000 8800
Connection ~ 5850 8550
Wire Wire Line
	5850 8300 5850 8800
Wire Wire Line
	14350 4050 14500 4050
Wire Wire Line
	14350 4050 14350 4450
$Comp
L RELAY_1C K601
U 1 1 5658C6AE
P 6450 7150
F 0 "K601" H 6450 7490 50  0000 C CNN
F 1 "RELAY_1C" H 6450 6800 50  0000 C CNN
F 2 "" H 6450 7300 60  0000 C CNN
F 3 "" H 6450 7300 60  0000 C CNN
	1    6450 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 7250 8500 6700
Wire Wire Line
	5850 7350 5850 7700
Wire Wire Line
	5700 6600 5700 7050
Wire Wire Line
	5700 7050 5850 7050
Wire Wire Line
	8750 7700 8750 8050
Wire Wire Line
	5150 7700 8750 7700
Wire Wire Line
	5300 7250 5150 7250
Wire Wire Line
	5150 7000 5150 7700
Connection ~ 5850 7700
Wire Wire Line
	5600 7250 5850 7250
Connection ~ 5150 7250
$EndSCHEMATC
