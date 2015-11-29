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
Sheet 1 7
Title "Launch Tower Computer 3 (LTC3)"
Date "2015-11-25"
Rev "A"
Comp "Portland State Aerospace Society <http://psas.pdx.edu/>"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Entry Wire Line
	9500 4400 9600 4300
Entry Wire Line
	9500 4500 9600 4400
Entry Wire Line
	9500 4600 9600 4500
Entry Wire Line
	9500 4700 9600 4600
Entry Wire Line
	9650 5150 9750 5050
Entry Wire Line
	9650 5250 9750 5150
Entry Wire Line
	9650 5350 9750 5250
Entry Wire Line
	9650 5450 9750 5350
Entry Wire Line
	6850 8800 6950 8700
Entry Wire Line
	6850 8900 6950 8800
Entry Wire Line
	6850 9000 6950 8900
Entry Wire Line
	6850 9100 6950 9000
Entry Wire Line
	6650 9350 6750 9250
Entry Wire Line
	6650 9450 6750 9350
Entry Wire Line
	6650 9550 6750 9450
Entry Wire Line
	6650 9650 6750 9550
Text Label 6950 8700 2    40   ~ 0
GPIO_EXT_PWR_1
Text Label 6950 8800 2    40   ~ 0
GPIO_EXT_PWR_2
Text Label 6950 8900 2    40   ~ 0
GPIO_EXT_PWR_3
Text Label 6950 9000 2    40   ~ 0
GPIO_EXT_PWR_4
Text Label 6750 9250 2    40   ~ 0
GPIO_EXT_TRIG_1
Text Label 6750 9350 2    40   ~ 0
GPIO_EXT_TRIG_2
Text Label 6750 9450 2    40   ~ 0
GPIO_EXT_TRIG_3
Text Label 6750 9550 2    40   ~ 0
GPIO_EXT_TRIG_4
$Sheet
S 1400 1050 2500 1600
U 56238165
F0 "Power In & Battery Charge Management" 60
F1 "battery_mgmt.sch" 60
F2 "I2C_CLOCK" B R 3900 1500 60 
F3 "I2C_DATA" B R 3900 1400 60 
$EndSheet
$Sheet
S 5400 1050 2500 1600
U 562DD32F
F0 "Battery, Balance & Protection" 60
F1 "battery_balance.sch" 60
F2 "BQ_EEPROM" B R 7900 1500 60 
F3 "BQ_XALERT" B R 7900 1400 60 
F4 "I2C_DATA" B R 7900 1700 60 
F5 "I2C_CLOCK" B R 7900 1800 60 
$EndSheet
Wire Bus Line
	6850 8800 6850 9100
$Sheet
S 9400 1050 2500 1600
U 550535FB
F0 "DC-DC Converters" 60
F1 "dcdc_converter.sch" 50
F2 "5V_EN" I L 9400 1400 60 
F3 "19V_EN" I L 9400 1600 60 
F4 "12V_EN" I L 9400 1500 60 
F5 "I2C_CLOCK" B R 11900 1500 60 
F6 "I2C_DATA" B R 11900 1400 60 
$EndSheet
$Sheet
S 7350 4150 2000 2500
U 55051BA8
F0 "BeagleBone Black Cape" 60
F1 "beaglebone_cape.sch" 50
F2 "EXT_TRIG_EN_1" O R 9350 5150 60 
F3 "EXT_TRIG_EN_2" O R 9350 5250 60 
F4 "EXT_TRIG_EN_3" O R 9350 5350 60 
F5 "EXT_TRIG_EN_4" O R 9350 5450 60 
F6 "EXT_PWR_EN_1" O R 9350 4400 60 
F7 "EXT_PWR_EN_2" O R 9350 4500 60 
F8 "EXT_PWR_EN_3" O R 9350 4600 60 
F9 "EXT_PWR_EN_4" O R 9350 4700 60 
F10 "5V_EN" O R 9350 5850 60 
F11 "12V_EN" O R 9350 5950 60 
F12 "19V_EN" O R 9350 6050 60 
F13 "ROCKET-READY" I L 7350 4400 60 
$EndSheet
$Sheet
S 13050 4300 2500 1600
U 5598112B
F0 "Rocket Umbilical & Ignition Control" 60
F1 "rocket_interface.sch" 60
F2 "ROCKET-READY" O R 15550 4450 60 
$EndSheet
$Sheet
S 7100 8150 2500 1600
U 551C79BE
F0 "External Device Power & Triggers" 60
F1 "external_devices.sch" 50
F2 "EXT_PWR_EN_1" I L 7100 8700 60 
F3 "EXT_PWR_EN_2" I L 7100 8800 60 
F4 "EXT_PWR_EN_4" I L 7100 9000 60 
F5 "EXT_PWR_EN_3" I L 7100 8900 60 
F6 "EXT_TRIG_EN_1" I L 7100 9250 60 
F7 "EXT_TRIG_EN_2" I L 7100 9350 60 
F8 "EXT_TRIG_EN_3" I L 7100 9450 60 
F9 "EXT_TRIG_EN_4" I L 7100 9550 60 
$EndSheet
Text Notes 12300 9200 0    100  ~ 0
TODO:\n* Wire up sub-sheets.
Wire Wire Line
	7100 8700 6950 8700
Wire Wire Line
	7100 8800 6950 8800
Wire Wire Line
	7100 8900 6950 8900
Wire Wire Line
	7100 9000 6950 9000
Wire Wire Line
	7100 9250 6750 9250
Wire Wire Line
	7100 9350 6750 9350
Wire Wire Line
	7100 9450 6750 9450
Wire Wire Line
	7100 9550 6750 9550
Wire Wire Line
	9500 4400 9350 4400
Wire Wire Line
	9350 4500 9500 4500
Wire Wire Line
	9500 4600 9350 4600
Wire Wire Line
	9350 4700 9500 4700
Wire Wire Line
	9650 5150 9350 5150
Wire Wire Line
	9350 5250 9650 5250
Wire Wire Line
	9650 5350 9350 5350
Wire Wire Line
	9350 5450 9650 5450
Wire Bus Line
	9600 4300 9600 4600
Wire Bus Line
	9750 5050 9750 5350
Wire Bus Line
	6650 9350 6650 9650
$EndSCHEMATC
