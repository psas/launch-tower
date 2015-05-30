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
LIBS:special
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
LIBS:LTC3_components
LIBS:Launch_Tower_Computer_III-cache
EELAYER 27 0
EELAYER END
$Descr B 17000 11000
encoding utf-8
Sheet 4 7
Title "LTC3 12V-to-19V DC/DC Converter"
Date "30 may 2015"
Rev "1"
Comp "Portland State Aerospace Society <http://psas.pdx.edu/>"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 10150 4750 2    60   Output ~ 0
VCC_19V
Text HLabel 6800 4750 0    60   Input ~ 0
VCC_BATT
$Comp
L PTN78020W U?
U 1 1 555D15B9
P 8350 4550
F 0 "U?" H 8350 4850 80  0000 C CNN
F 1 "PTN78020W" H 8350 4700 80  0000 C CNN
F 2 "~" H 8350 4600 60  0000 C CNN
F 3 "~" H 8350 4600 60  0000 C CNN
	1    8350 4550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 555D15C0
P 7150 4500
F 0 "#PWR?" H 7150 4500 30  0001 C CNN
F 1 "GND" H 7150 4430 30  0001 C CNN
F 2 "" H 7150 4500 60  0000 C CNN
F 3 "" H 7150 4500 60  0000 C CNN
	1    7150 4500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 555D15C6
P 9550 4500
F 0 "#PWR?" H 9550 4500 30  0001 C CNN
F 1 "GND" H 9550 4430 30  0001 C CNN
F 2 "" H 9550 4500 60  0000 C CNN
F 3 "" H 9550 4500 60  0000 C CNN
	1    9550 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 4350 7150 4350
Wire Wire Line
	7150 4350 7150 4500
Wire Wire Line
	9400 4350 9550 4350
Wire Wire Line
	9550 4350 9550 4500
Wire Wire Line
	9400 4750 10150 4750
Wire Wire Line
	6800 4750 7300 4750
$Comp
L CP1 C?
U 1 1 555D15D2
P 9550 5150
F 0 "C?" H 9600 5250 50  0000 L CNN
F 1 "CP1" H 9600 5050 50  0000 L CNN
F 2 "~" H 9550 5150 60  0000 C CNN
F 3 "~" H 9550 5150 60  0000 C CNN
	1    9550 5150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 555D15D9
P 9550 5500
F 0 "#PWR?" H 9550 5500 30  0001 C CNN
F 1 "GND" H 9550 5430 30  0001 C CNN
F 2 "" H 9550 5500 60  0000 C CNN
F 3 "" H 9550 5500 60  0000 C CNN
	1    9550 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 5000 9550 4750
Connection ~ 9550 4750
Wire Wire Line
	9550 5300 9550 5500
$Comp
L C C?
U 1 1 555D15E2
P 7150 5150
F 0 "C?" H 7150 5250 40  0000 L CNN
F 1 "C" H 7156 5065 40  0000 L CNN
F 2 "~" H 7188 5000 30  0000 C CNN
F 3 "~" H 7150 5150 60  0000 C CNN
	1    7150 5150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 555D15E9
P 7150 5450
F 0 "#PWR?" H 7150 5450 30  0001 C CNN
F 1 "GND" H 7150 5380 30  0001 C CNN
F 2 "" H 7150 5450 60  0000 C CNN
F 3 "" H 7150 5450 60  0000 C CNN
	1    7150 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 5450 7150 5300
Wire Wire Line
	7150 5000 7150 4750
Connection ~ 7150 4750
$Comp
L R R?
U 1 1 555D15F2
P 8350 5600
F 0 "R?" V 8430 5600 50  0000 C CNN
F 1 "R" V 8350 5600 50  0000 C CNN
F 2 "" V 8280 5600 30  0000 C CNN
F 3 "" H 8350 5600 30  0000 C CNN
	1    8350 5600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 555D15F9
P 8350 5850
F 0 "#PWR?" H 8350 5600 50  0001 C CNN
F 1 "GND" H 8350 5700 50  0000 C CNN
F 2 "" H 8350 5850 60  0000 C CNN
F 3 "" H 8350 5850 60  0000 C CNN
	1    8350 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 5850 8350 5750
Wire Wire Line
	8350 5450 8350 5350
Text HLabel 6800 5850 0    60   Input ~ 0
VCC_19V_INHIB
Wire Wire Line
	8050 5350 8050 5850
Wire Wire Line
	8050 5850 6800 5850
Wire Wire Line
	8650 5350 8650 5850
Wire Wire Line
	8650 5850 10050 5850
Wire Wire Line
	10050 5850 10050 4750
Connection ~ 10050 4750
$EndSCHEMATC
