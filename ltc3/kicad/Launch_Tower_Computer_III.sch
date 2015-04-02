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
Date "2 apr 2015"
Rev "1"
Comp "Portland State Aerospace Society <http://psas.pdx.edu/>"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 1900 1850 1450 950 
U 551C8EE6
F0 "Power In" 50
F1 "power_in.sch" 50
F2 "VCC_12V" O R 3350 2000 60 
$EndSheet
$Sheet
S 4000 1850 1500 1000
U 550535FB
F0 "DC-DC Converter, 12V-to-5V" 50
F1 "dcdc_converter_5v.sch" 50
F2 "VCC_5V" O R 5500 2000 60 
F3 "VCC_12V" I L 4000 2000 60 
$EndSheet
$Sheet
S 6150 1850 1500 1000
U 55053600
F0 "DC-DC Converter, 12V-to-19V" 50
F1 "dcdc_converter_19v.sch" 50
F2 "VCC_19V" O R 7650 2000 60 
F3 "VCC_12V" I L 6150 2000 60 
$EndSheet
$Sheet
S 4000 3550 1500 1000
U 55051BA8
F0 "BeagleBone Black Cape" 50
F1 "beaglebone_cape.sch" 50
F2 "VCC_5V" I L 4000 3700 60 
F3 "GPIO_TRIGGER_1" O R 5500 3800 60 
F4 "GPIO_TRIGGER_2" O R 5500 3950 60 
F5 "GPIO_TRIGGER_3" O R 5500 4100 60 
F6 "GPIO_TRIGGER_4" O R 5500 4250 60 
$EndSheet
Wire Wire Line
	5500 2000 5600 2000
Wire Wire Line
	5600 2000 5600 3200
Wire Wire Line
	5600 3200 3900 3200
Wire Wire Line
	3900 3200 3900 3700
Wire Wire Line
	3900 3700 4000 3700
$Sheet
S 6150 3550 1500 1000
U 551C79BE
F0 "External Triggers" 50
F1 "triggers.sch" 50
F2 "GPIO_TRIGGER_1" I L 6150 3800 60 
F3 "GPIO_TRIGGER_2" I L 6150 3950 60 
F4 "GPIO_TRIGGER_3" I L 6150 4100 60 
F5 "GPIO_TRIGGER_4" I L 6150 4250 60 
F6 "VCC_12V" I L 6150 3650 60 
$EndSheet
Wire Wire Line
	5500 3800 6150 3800
Wire Wire Line
	5500 3950 6150 3950
Wire Wire Line
	6150 4100 5500 4100
Wire Wire Line
	5500 4250 6150 4250
Wire Wire Line
	3350 2000 4000 2000
Wire Wire Line
	3500 2000 3500 1650
Wire Wire Line
	3500 1650 6050 1650
Wire Wire Line
	6050 1650 6050 3650
Wire Wire Line
	6050 2000 6150 2000
Connection ~ 3500 2000
Wire Wire Line
	6050 3650 6150 3650
Connection ~ 6050 2000
$EndSCHEMATC
