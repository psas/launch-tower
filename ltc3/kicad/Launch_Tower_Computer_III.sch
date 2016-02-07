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
LIBS:SUM110P08-11
LIBS:NDS9407
LIBS:PI2127
EELAYER 25 0
EELAYER END
$Descr B 17000 11000
encoding utf-8
Sheet 1 7
Title "Launch Tower Computer 3 (LTC3)"
Date "2016-02-06"
Rev "A"
Comp "Portland State Aerospace Society <http://psas.pdx.edu/>"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Entry Wire Line
	11550 4850 11650 4750
Entry Wire Line
	11550 4950 11650 4850
Entry Wire Line
	11550 5050 11650 4950
Entry Wire Line
	11550 5150 11650 5050
Entry Wire Line
	11550 5600 11650 5500
Entry Wire Line
	11550 5700 11650 5600
Entry Wire Line
	11550 5800 11650 5700
Entry Wire Line
	11550 5900 11650 5800
Entry Wire Line
	12550 2150 12650 2050
Entry Wire Line
	12550 2250 12650 2150
Entry Wire Line
	12550 2350 12650 2250
Entry Wire Line
	12550 2450 12650 2350
Entry Wire Line
	12350 2700 12450 2600
Entry Wire Line
	12350 2800 12450 2700
Entry Wire Line
	12350 2900 12450 2800
Entry Wire Line
	12350 3000 12450 2900
Text Label 12650 2050 2    40   ~ 0
GPIO_EXT_PWR_1
Text Label 12650 2150 2    40   ~ 0
GPIO_EXT_PWR_2
Text Label 12650 2250 2    40   ~ 0
GPIO_EXT_PWR_3
Text Label 12650 2350 2    40   ~ 0
GPIO_EXT_PWR_4
Text Label 12450 2600 2    40   ~ 0
GPIO_EXT_TRIG_1
Text Label 12450 2700 2    40   ~ 0
GPIO_EXT_TRIG_2
Text Label 12450 2800 2    40   ~ 0
GPIO_EXT_TRIG_3
Text Label 12450 2900 2    40   ~ 0
GPIO_EXT_TRIG_4
$Sheet
S 1400 1500 2500 1600
U 56238165
F0 "Power In, Battery Charge & PV MPPT" 60
F1 "battery_mgmt.sch" 60
F2 "I2C_CLOCK" B L 1400 1750 60 
F3 "I2C_DATA" B L 1400 1850 60 
$EndSheet
$Sheet
S 5400 1500 2500 1600
U 562DD32F
F0 "Battery Management" 60
F1 "battery_balance.sch" 60
F2 "BQ_EEPROM" B L 5400 2200 60 
F3 "BQ_XALERT" B L 5400 2100 60 
F4 "I2C_DATA" B L 5400 1850 60 
F5 "I2C_CLOCK" B L 5400 1750 60 
$EndSheet
$Sheet
S 5400 6600 2500 1600
U 550535FB
F0 "DC-DC Converters" 60
F1 "dcdc_converter.sch" 50
F2 "5V_EN" I L 5400 7200 60 
F3 "19V_EN" I L 5400 7400 60 
F4 "12V_EN" I L 5400 7300 60 
F5 "I2C_CLOCK" B L 5400 6850 60 
F6 "I2C_DATA" B L 5400 6950 60 
$EndSheet
$Sheet
S 9400 4600 2000 2500
U 55051BA8
F0 "BeagleBone Black Cape" 60
F1 "beaglebone_cape.sch" 50
F2 "EXT_TRIG_EN_1" O R 11400 5600 60 
F3 "EXT_TRIG_EN_2" O R 11400 5700 60 
F4 "EXT_TRIG_EN_3" O R 11400 5800 60 
F5 "EXT_TRIG_EN_4" O R 11400 5900 60 
F6 "EXT_PWR_EN_1" O R 11400 4850 60 
F7 "EXT_PWR_EN_2" O R 11400 4950 60 
F8 "EXT_PWR_EN_3" O R 11400 5050 60 
F9 "EXT_PWR_EN_4" O R 11400 5150 60 
F10 "5V_EN" O R 11400 6300 60 
F11 "12V_EN" O R 11400 6400 60 
F12 "19V_EN" O R 11400 6500 60 
F13 "I2C_CLOCK" B L 9400 4850 60 
F14 "I2C_DATA" B L 9400 4950 60 
F15 "BQ_XALERT" I L 9400 5200 60 
F16 "BQ_EEPROM" O R 11400 6700 60 
F17 "ROCKET_READY" I L 9400 6800 60 
F18 "ROCKET_IGNITE" O R 11400 6850 60 
$EndSheet
$Sheet
S 12800 6600 2500 1600
U 5598112B
F0 "Rocket Umbilical & Ignition Control" 60
F1 "rocket_interface.sch" 60
F2 "ROCKET_READY" O R 15300 6850 60 
F3 "ROCKET_IGNITE" I L 12800 6850 60 
$EndSheet
$Sheet
S 12800 1500 2500 1600
U 551C79BE
F0 "External Device Power & Triggers" 60
F1 "external_devices.sch" 50
F2 "EXT_PWR_EN_1" I L 12800 2050 60 
F3 "EXT_PWR_EN_2" I L 12800 2150 60 
F4 "EXT_PWR_EN_4" I L 12800 2350 60 
F5 "EXT_PWR_EN_3" I L 12800 2250 60 
F6 "EXT_TRIG_EN_1" I L 12800 2600 60 
F7 "EXT_TRIG_EN_2" I L 12800 2700 60 
F8 "EXT_TRIG_EN_3" I L 12800 2800 60 
F9 "EXT_TRIG_EN_4" I L 12800 2900 60 
$EndSheet
Entry Wire Line
	1150 1850 1250 1750
Entry Wire Line
	1150 1950 1250 1850
Entry Wire Line
	4900 1850 5000 1750
Entry Wire Line
	4900 1950 5000 1850
Entry Wire Line
	9150 4950 9250 4850
Entry Wire Line
	9150 5050 9250 4950
Entry Wire Line
	5050 6750 5150 6850
Entry Wire Line
	5050 6850 5150 6950
Entry Wire Line
	11550 6300 11650 6400
Entry Wire Line
	11550 6400 11650 6500
Entry Wire Line
	11550 6500 11650 6600
Entry Wire Line
	5150 7500 5250 7400
Entry Wire Line
	5150 7400 5250 7300
Entry Wire Line
	5150 7300 5250 7200
Wire Bus Line
	5150 7300 5150 8600
Wire Bus Line
	5150 8600 11650 8600
Wire Bus Line
	11650 8600 11650 6400
Wire Wire Line
	9000 5300 5150 5300
Wire Wire Line
	9000 7300 9000 5300
Wire Bus Line
	1150 6100 9150 6100
Wire Bus Line
	9150 6100 9150 4950
Wire Bus Line
	5050 6100 5050 6850
Wire Bus Line
	1150 1850 1150 6100
Wire Bus Line
	4900 1850 4900 6100
Wire Wire Line
	9400 4950 9250 4950
Wire Wire Line
	9400 4850 9250 4850
Wire Wire Line
	11550 6700 11400 6700
Wire Wire Line
	11550 7300 11550 6700
Wire Wire Line
	9000 7300 11550 7300
Wire Wire Line
	5150 5300 5150 2200
Wire Wire Line
	5150 2200 5400 2200
Wire Wire Line
	5250 5200 9400 5200
Wire Wire Line
	5250 2100 5250 5200
Wire Wire Line
	5400 2100 5250 2100
Wire Bus Line
	12350 5500 11650 5500
Wire Bus Line
	12550 4750 11650 4750
Wire Wire Line
	5250 7200 5400 7200
Wire Wire Line
	11400 6300 11550 6300
Wire Wire Line
	5250 7300 5400 7300
Wire Wire Line
	11400 6400 11550 6400
Wire Wire Line
	5250 7400 5400 7400
Wire Wire Line
	11400 6500 11550 6500
Wire Wire Line
	5400 6950 5150 6950
Wire Wire Line
	5400 6850 5150 6850
Wire Wire Line
	5400 1850 5000 1850
Wire Wire Line
	5400 1750 5000 1750
Wire Wire Line
	1250 1850 1400 1850
Wire Wire Line
	1250 1750 1400 1750
Wire Bus Line
	12350 2700 12350 5500
Wire Bus Line
	11650 5500 11650 5800
Wire Bus Line
	11650 4750 11650 5050
Wire Wire Line
	11400 5900 11550 5900
Wire Wire Line
	11550 5800 11400 5800
Wire Wire Line
	11400 5700 11550 5700
Wire Wire Line
	11550 5600 11400 5600
Wire Wire Line
	11400 5150 11550 5150
Wire Wire Line
	11550 5050 11400 5050
Wire Wire Line
	11400 4950 11550 4950
Wire Wire Line
	11550 4850 11400 4850
Wire Wire Line
	12800 2900 12450 2900
Wire Wire Line
	12800 2800 12450 2800
Wire Wire Line
	12800 2700 12450 2700
Wire Wire Line
	12800 2600 12450 2600
Wire Wire Line
	12800 2350 12650 2350
Wire Wire Line
	12800 2250 12650 2250
Wire Wire Line
	12800 2150 12650 2150
Wire Wire Line
	12800 2050 12650 2050
Wire Bus Line
	12550 2150 12550 4750
Text Notes 800  9000 0    100  ~ 20
TODO:\n* Finish wiring up sub-sheets.\n  * Bus entries need labels on both sides!\n* Create style legend.\n* Consistent style:\n  * No "embedded" multipliers in R vals.\n* Add test points where appropriate.\n  * Esp. around SMD packages, parts w/ no\n     exposed leads, etc.\n  * through-hole 2x1 pin header (1 to signal, other to gnd)
Wire Wire Line
	9400 6800 9150 6800
Wire Wire Line
	9150 6800 9150 8450
Wire Wire Line
	15500 6850 15300 6850
Wire Wire Line
	11400 6850 12800 6850
Wire Wire Line
	15500 6850 15500 8450
Wire Wire Line
	15500 8450 9150 8450
Text Notes 800  10200 0    100  ~ 0
Notes:\n * LTC3 is a single board represented on \n   multiple sheets.
$EndSCHEMATC
