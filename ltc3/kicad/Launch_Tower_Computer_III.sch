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
LIBS:Toshiba
LIBS:Launch_Tower_Computer_III-cache
EELAYER 27 0
EELAYER END
$Descr B 17000 11000
encoding utf-8
Sheet 1 7
Title "Launch Tower Computer III (LTC3)"
Date "18 apr 2015"
Rev "1"
Comp "Portland State Aerospace Society <http://psas.pdx.edu/>"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 1000 1100 1500 1000
U 551C8EE6
F0 "Power In" 60
F1 "power_in.sch" 50
F2 "VCC_12V" O R 2500 1250 60 
$EndSheet
$Sheet
S 3500 1100 1500 1000
U 550535FB
F0 "DC-DC Converter, 5V" 60
F1 "dcdc_converter_5v.sch" 50
F2 "VCC_5V" O R 5000 1250 60 
F3 "VCC_12V" I L 3500 1250 60 
$EndSheet
$Sheet
S 6000 1100 1500 1000
U 55053600
F0 "DC-DC Converter, 19V" 60
F1 "dcdc_converter_19v.sch" 50
F2 "VCC_19V" O R 7500 1250 60 
F3 "VCC_12V" I L 6000 1250 60 
$EndSheet
Wire Wire Line
	2600 1250 2600 900 
Wire Wire Line
	2600 900  5800 900 
Wire Wire Line
	5800 900  5800 5350
Wire Wire Line
	5800 1250 6000 1250
Connection ~ 2600 1250
Wire Wire Line
	5000 1250 5100 1250
Wire Wire Line
	5100 1250 5100 7350
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
	2500 1250 3500 1250
$Sheet
S 1000 3100 1500 1500
U 55051BA8
F0 "BeagleBone Black Cape" 60
F1 "beaglebone_cape.sch" 50
F2 "VCC_5V" I L 1000 3250 60 
F3 "GPIO_EXT_TRIG_1" O R 2500 4100 60 
F4 "GPIO_EXT_TRIG_2" O R 2500 4200 60 
F5 "GPIO_EXT_TRIG_3" O R 2500 4300 60 
F6 "GPIO_EXT_TRIG_4" O R 2500 4400 60 
F7 "GPIO_EXT_PWR_1" O R 2500 3350 60 
F8 "GPIO_EXT_PWR_2" O R 2500 3450 60 
F9 "GPIO_EXT_PWR_3" O R 2500 3550 60 
F10 "GPIO_EXT_PWR_4" O R 2500 3650 60 
$EndSheet
Wire Wire Line
	2500 3350 2800 3350
Wire Wire Line
	2500 3450 2800 3450
Wire Wire Line
	2500 3550 2800 3550
Wire Wire Line
	2500 3650 2800 3650
Wire Wire Line
	2500 4100 2650 4100
Wire Wire Line
	2500 4200 2650 4200
Wire Wire Line
	2500 4300 2650 4300
Wire Wire Line
	2500 4400 2650 4400
Entry Wire Line
	2800 3350 2900 3450
Entry Wire Line
	2800 3450 2900 3550
Entry Wire Line
	2800 3550 2900 3650
Entry Wire Line
	2800 3650 2900 3750
Entry Wire Line
	2650 4100 2750 4200
Entry Wire Line
	2650 4200 2750 4300
Entry Wire Line
	2650 4300 2750 4400
Entry Wire Line
	2650 4400 2750 4500
Wire Wire Line
	6000 5600 5850 5600
Wire Wire Line
	6000 5700 5850 5700
Wire Wire Line
	6000 5800 5850 5800
Wire Wire Line
	6000 5900 5850 5900
Wire Wire Line
	6000 7700 5850 7700
Wire Wire Line
	6000 7800 5850 7800
Wire Wire Line
	6000 7900 5850 7900
Wire Wire Line
	6000 8000 5850 8000
Entry Wire Line
	5750 5500 5850 5600
Entry Wire Line
	5750 5600 5850 5700
Entry Wire Line
	5750 5700 5850 5800
Entry Wire Line
	5750 5800 5850 5900
Entry Wire Line
	5750 7600 5850 7700
Entry Wire Line
	5750 7700 5850 7800
Entry Wire Line
	5750 7800 5850 7900
Entry Wire Line
	5750 7900 5850 8000
Wire Bus Line
	5750 7550 5750 7900
Wire Bus Line
	5750 5450 5750 5800
Text Label 2800 3350 0    40   ~ 0
GPIO_EXT_PWR_1
Text Label 2800 3450 0    40   ~ 0
GPIO_EXT_PWR_2
Text Label 2800 3550 0    40   ~ 0
GPIO_EXT_PWR_3
Text Label 2800 3650 0    40   ~ 0
GPIO_EXT_PWR_4
Text Label 2650 4100 0    40   ~ 0
GPIO_EXT_TRIG_1
Text Label 2650 4200 0    40   ~ 0
GPIO_EXT_TRIG_2
Text Label 2650 4300 0    40   ~ 0
GPIO_EXT_TRIG_3
Text Label 2650 4400 0    40   ~ 0
GPIO_EXT_TRIG_4
Text Label 5850 5600 2    40   ~ 0
GPIO_EXT_PWR_1
Text Label 5850 5700 2    40   ~ 0
GPIO_EXT_PWR_2
Text Label 5850 5800 2    40   ~ 0
GPIO_EXT_PWR_3
Text Label 5850 5900 2    40   ~ 0
GPIO_EXT_PWR_4
Text Label 5850 7700 2    40   ~ 0
GPIO_EXT_TRIG_1
Text Label 5850 7800 2    40   ~ 0
GPIO_EXT_TRIG_2
Text Label 5850 7900 2    40   ~ 0
GPIO_EXT_TRIG_3
Text Label 5850 8000 2    40   ~ 0
GPIO_EXT_TRIG_4
Wire Wire Line
	5800 5350 6000 5350
Connection ~ 5800 1250
$Sheet
S 6000 7200 1500 1500
U 553268FD
F0 "External Device Triggers" 50
F1 "external_triggers.sch" 50
F2 "GPIO_EXT_TRIG_1" I L 6000 7700 60 
F3 "VCC_5V" I L 6000 7350 60 
F4 "GPIO_EXT_TRIG_2" I L 6000 7800 60 
F5 "GPIO_EXT_TRIG_3" I L 6000 7900 60 
F6 "GPIO_EXT_TRIG_4" I L 6000 8000 60 
$EndSheet
$Sheet
S 6000 5100 1500 1500
U 551C79BE
F0 "External Device Power" 60
F1 "external_power.sch" 50
F2 "VCC_12V" I L 6000 5350 60 
F3 "VCC_5V" I L 6000 5200 60 
F4 "GPIO_EXT_PWR_1" I L 6000 5600 60 
F5 "GPIO_EXT_PWR_2" I L 6000 5700 60 
F6 "GPIO_EXT_PWR_4" I L 6000 5900 60 
F7 "GPIO_EXT_PWR_3" I L 6000 5800 60 
$EndSheet
Wire Bus Line
	2750 4200 2750 7550
Wire Bus Line
	2750 7550 5750 7550
Wire Bus Line
	2900 3450 2900 5450
Wire Bus Line
	2900 5450 5750 5450
Wire Wire Line
	5100 7350 6000 7350
Connection ~ 5100 5200
$EndSCHEMATC
