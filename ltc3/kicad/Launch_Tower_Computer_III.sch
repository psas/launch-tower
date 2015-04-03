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
Date "3 apr 2015"
Rev "1"
Comp "Portland State Aerospace Society <http://psas.pdx.edu/>"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 2500 2600 1450 950 
U 551C8EE6
F0 "Power In" 50
F1 "power_in.sch" 50
F2 "VCC_12V" O R 3950 2750 60 
F3 "SOLAR_12V" I L 2500 2750 60 
F4 "LAB_12V" I L 2500 2950 60 
$EndSheet
$Sheet
S 4600 2600 1500 1000
U 550535FB
F0 "DC-DC Converter, 12V-to-5V" 50
F1 "dcdc_converter_5v.sch" 50
F2 "VCC_5V" O R 6100 2750 60 
F3 "VCC_12V" I L 4600 2750 60 
$EndSheet
$Sheet
S 6750 2600 1500 1000
U 55053600
F0 "DC-DC Converter, 12V-to-19V" 50
F1 "dcdc_converter_19v.sch" 50
F2 "VCC_19V" O R 8250 2750 60 
F3 "VCC_12V" I L 6750 2750 60 
$EndSheet
$Sheet
S 4600 4300 1500 1000
U 55051BA8
F0 "BeagleBone Black Cape" 50
F1 "beaglebone_cape.sch" 50
F2 "VCC_5V" I L 4600 4450 60 
F3 "GPIO_TRIGGER_1" O R 6100 4650 60 
F4 "GPIO_TRIGGER_2" O R 6100 4800 60 
F5 "GPIO_TRIGGER_3" O R 6100 4950 60 
F6 "GPIO_TRIGGER_4" O R 6100 5100 60 
$EndSheet
Wire Wire Line
	6100 2750 6200 2750
Wire Wire Line
	6200 2750 6200 4400
Wire Wire Line
	6200 3950 4500 3950
Wire Wire Line
	4500 3950 4500 4450
Wire Wire Line
	4500 4450 4600 4450
Wire Wire Line
	3950 2750 4600 2750
Wire Wire Line
	6650 2750 6750 2750
Wire Wire Line
	6200 4400 6750 4400
$Sheet
S 6750 4300 1500 1000
U 551C79BE
F0 "External Triggers" 50
F1 "triggers.sch" 50
F2 "GPIO_TRIGGER_1" I L 6750 4750 60 
F3 "GPIO_TRIGGER_2" I L 6750 4900 60 
F4 "GPIO_TRIGGER_3" I L 6750 5050 60 
F5 "GPIO_TRIGGER_4" I L 6750 5200 60 
F6 "VCC_12V" I L 6750 4550 60 
F7 "VCC_5V" I L 6750 4400 60 
$EndSheet
Wire Wire Line
	6650 4550 6750 4550
Connection ~ 6200 3950
Wire Wire Line
	4100 2750 4100 2300
Wire Wire Line
	4100 2300 6650 2300
Wire Wire Line
	6650 2300 6650 4550
Connection ~ 4100 2750
Connection ~ 6650 2750
Wire Wire Line
	6100 4650 6350 4650
Wire Wire Line
	6350 4650 6350 4750
Wire Wire Line
	6350 4750 6750 4750
Wire Wire Line
	6100 4800 6300 4800
Wire Wire Line
	6300 4800 6300 4900
Wire Wire Line
	6300 4900 6750 4900
Wire Wire Line
	6100 4950 6250 4950
Wire Wire Line
	6250 4950 6250 5050
Wire Wire Line
	6250 5050 6750 5050
Wire Wire Line
	6100 5100 6200 5100
Wire Wire Line
	6200 5100 6200 5200
Wire Wire Line
	6200 5200 6750 5200
$EndSCHEMATC
