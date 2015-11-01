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
LIBS:BeagleBone_Black
LIBS:LT8490
LIBS:LTC299x
LIBS:PMV45EN
LIBS:PTN78020n
LIBS:EEPROMs
LIBS:TLP
LIBS:bq77PL900
LIBS:current_shunt
LIBS:Launch_Tower_Computer_III-cache
EELAYER 25 0
EELAYER END
$Descr B 17000 11000
encoding utf-8
Sheet 2 9
Title "LTC3 Power Sources (Solar, Lab, Battery)"
Date "2015-10-24"
Rev "A"
Comp "Portland State Aerospace Society <http://psas.pdx.edu/>"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 15150 2850 2    60   Output ~ 0
VCC_BATT
Connection ~ 14900 2850
Wire Wire Line
	14900 2850 14900 3400
Wire Wire Line
	14800 2850 15150 2850
Wire Wire Line
	14150 2850 14500 2850
Text HLabel 15150 3150 2    60   Output ~ 0
BB_VSENSE_BATT-
Text HLabel 15150 3050 2    60   Output ~ 0
BB_VSENSE_BATT+
Text Notes 14500 4700 0    100  ~ 0
R_sense = 1/Imax**2\n1 A = 1 ohm\n3 A = 0.1 ohm\n5 A = 0.04 ohms\n10 A = 0.01 ohms
$Comp
L R4T R?
U 1 1 56357239
P 14650 2850
F 0 "R?" V 14600 2700 50  0000 C CNN
F 1 "R4T" V 14650 2850 50  0000 C CNN
F 2 "" V 14580 2850 30  0000 C CNN
F 3 "" H 14650 2850 30  0000 C CNN
F 4 "1W 1%" V 14550 2950 60  0000 C CNN "Note"
	1    14650 2850
	0    1    1    0   
$EndComp
Wire Wire Line
	15150 3050 14600 3050
Wire Wire Line
	14600 3050 14600 2950
Wire Wire Line
	15150 3150 14700 3150
Wire Wire Line
	14700 3150 14700 2950
$EndSCHEMATC
