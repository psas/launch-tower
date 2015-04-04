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
LIBS:switches
LIBS:Launch_Tower_Computer_III-cache
EELAYER 27 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 6
Title "Launch Tower Computer III (LTC3)"
Date "4 apr 2015"
Rev "1"
Comp "Portland State Aerospace Society <http://psas.pdx.edu/>"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 1000 1100 1450 950 
U 551C8EE6
F0 "Power In" 50
F1 "power_in.sch" 50
F2 "VCC_12V" O R 2450 1250 60 
F3 "SOLAR_12V" I L 1000 1250 60 
F4 "LAB_12V" I L 1000 1450 60 
$EndSheet
$Sheet
S 3500 1100 1500 1000
U 550535FB
F0 "DC-DC Converter, 12V-to-5V" 50
F1 "dcdc_converter_5v.sch" 50
F2 "VCC_5V" O R 5000 1250 60 
F3 "VCC_12V" I L 3500 1250 60 
$EndSheet
$Sheet
S 6000 1100 1500 1000
U 55053600
F0 "DC-DC Converter, 12V-to-19V" 50
F1 "dcdc_converter_19v.sch" 50
F2 "VCC_19V" O R 7500 1250 60 
F3 "VCC_12V" I L 6000 1250 60 
$EndSheet
$Sheet
S 1000 3100 1500 1000
U 55051BA8
F0 "BeagleBone Black Cape" 50
F1 "beaglebone_cape.sch" 50
F2 "VCC_5V" I L 1000 3250 60 
F3 "GPIO_TRIGGER_1" O R 2500 3450 60 
F4 "GPIO_TRIGGER_2" O R 2500 3600 60 
F5 "GPIO_TRIGGER_3" O R 2500 3750 60 
F6 "GPIO_TRIGGER_4" O R 2500 3900 60 
$EndSheet
$Sheet
S 6000 5100 1500 1000
U 551C79BE
F0 "External Triggers" 50
F1 "triggers.sch" 50
F2 "GPIO_TRIGGER_1" I L 6000 5550 60 
F3 "GPIO_TRIGGER_2" I L 6000 5700 60 
F4 "GPIO_TRIGGER_3" I L 6000 5850 60 
F5 "GPIO_TRIGGER_4" I L 6000 6000 60 
F6 "VCC_12V" I L 6000 5350 60 
F7 "VCC_5V" I L 6000 5200 60 
$EndSheet
Wire Wire Line
	2450 1250 3500 1250
Wire Wire Line
	2600 1250 2600 900 
Wire Wire Line
	2600 900  5800 900 
Wire Wire Line
	5800 900  5800 1250
Wire Wire Line
	5800 1250 6000 1250
Connection ~ 2600 1250
Wire Wire Line
	5000 1250 5100 1250
Wire Wire Line
	5100 1250 5100 5200
Wire Wire Line
	5100 2400 850  2400
Wire Wire Line
	850  2400 850  3250
Wire Wire Line
	850  3250 1000 3250
Wire Wire Line
	5100 5200 6000 5200
Connection ~ 5100 2400
Wire Wire Line
	6000 5350 5900 5350
Wire Wire Line
	5900 5350 5900 2400
Wire Wire Line
	5900 2400 7650 2400
Wire Wire Line
	7650 2400 7650 1250
Wire Wire Line
	7650 1250 7500 1250
Wire Wire Line
	2500 3900 2650 3900
Wire Wire Line
	2650 3900 2650 6000
Wire Wire Line
	2650 6000 6000 6000
Wire Wire Line
	2500 3750 2800 3750
Wire Wire Line
	2800 3750 2800 5850
Wire Wire Line
	2800 5850 6000 5850
Wire Wire Line
	2500 3600 2950 3600
Wire Wire Line
	2950 3600 2950 5700
Wire Wire Line
	2950 5700 6000 5700
Wire Wire Line
	2500 3450 3100 3450
Wire Wire Line
	3100 3450 3100 5550
Wire Wire Line
	3100 5550 6000 5550
$EndSCHEMATC
