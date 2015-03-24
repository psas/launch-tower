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
LIBS:headers
LIBS:DIP_switches
LIBS:LTC299x
LIBS:memory_devices
LIBS:Launch_Tower_Computer_III-cache
EELAYER 27 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 4
Title "Launch Tower Computer III (LTC3)"
Date "16 mar 2015"
Rev "1"
Comp "Portland State Aerospace Society <http://psas.pdx.edu/>"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 900  2600 1500 1000
U 55051BA8
F0 "BBB_Cape" 50
F1 "BBB_Cape.sch" 50
F2 "VCC_5V" I L 900 2750 60 
$EndSheet
$Sheet
S 900  900  1500 1000
U 550535FB
F0 "DC/DC Converter, 12V-to-5V" 50
F1 "Converter_5V.sch" 50
F2 "VCC_5V" O R 2400 1050 60 
$EndSheet
$Sheet
S 3050 900  1500 1000
U 55053600
F0 "DC/DC Converter, 12V-to-19V" 50
F1 "Converter_19V.sch" 50
F2 "VCC_19V" O R 4550 1050 60 
$EndSheet
Wire Wire Line
	2400 1050 2500 1050
Wire Wire Line
	2500 1050 2500 2250
Wire Wire Line
	2500 2250 800  2250
Wire Wire Line
	800  2250 800  2750
Wire Wire Line
	800  2750 900  2750
$EndSCHEMATC
