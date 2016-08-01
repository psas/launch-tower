EESchema Schematic File Version 2
LIBS:4n35
LIBS:741g08
LIBS:battery_single_cell
LIBS:BeagleBone_Black
LIBS:bq77PL900
LIBS:breakers
LIBS:CD74HC14
LIBS:current_shunt
LIBS:EEPROMs
LIBS:LT8490
LIBS:LTC299x
LIBS:PI2127
LIBS:PMV45EN
LIBS:power_nodes
LIBS:PTN78020n
LIBS:relay_1c
LIBS:SNx52x0
LIBS:SUM110P08-11
LIBS:switches2
LIBS:MOSFET_SO8
LIBS:MOSFET_SOT26
LIBS:TLP
LIBS:74xgxx
LIBS:74xx
LIBS:ac-dc
LIBS:actel
LIBS:adc-dac
LIBS:Altera
LIBS:analog_devices
LIBS:analog_switches
LIBS:atmel
LIBS:audio
LIBS:brooktre
LIBS:cmos4000
LIBS:cmos_ieee
LIBS:conn
LIBS:contrib
LIBS:cypress
LIBS:dc-dc
LIBS:device
LIBS:digital-audio
LIBS:diode
LIBS:display
LIBS:dsp
LIBS:elec-unifil
LIBS:ESD_Protection
LIBS:ftdi
LIBS:gennum
LIBS:graphic
LIBS:hc11
LIBS:intel
LIBS:interface
LIBS:ir
LIBS:Lattice
LIBS:linear
LIBS:logo
LIBS:maxim
LIBS:memory
LIBS:microchip
LIBS:microchip_dspic33dsc
LIBS:microchip_pic10mcu
LIBS:microchip_pic12mcu
LIBS:microchip_pic16mcu
LIBS:microchip_pic18mcu
LIBS:microchip_pic32mcu
LIBS:microcontrollers
LIBS:motor_drivers
LIBS:motorola
LIBS:msp430
LIBS:nordicsemi
LIBS:nxp_armmcu
LIBS:onsemi
LIBS:opto
LIBS:Oscillators
LIBS:philips
LIBS:power
LIBS:powerint
LIBS:Power_Management
LIBS:pspice
LIBS:references
LIBS:regul
LIBS:relays
LIBS:rfcom
LIBS:sensors
LIBS:silabs
LIBS:siliconi
LIBS:stm8
LIBS:stm32
LIBS:supertex
LIBS:switches
LIBS:texas
LIBS:transf
LIBS:transistors
LIBS:ttl_ieee
LIBS:LTC3-cache
EELAYER 25 0
EELAYER END
$Descr B 17000 11000
encoding utf-8
Sheet 1 6
Title "Launch Tower Computer 3 (LTC3)"
Date "2016-08-01"
Rev "A"
Comp "Portland State Aerospace Society <http://psas.pdx.edu/>"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Entry Wire Line
	9400 4750 9500 4650
Entry Wire Line
	9400 4850 9500 4750
Entry Wire Line
	9400 4950 9500 4850
Entry Wire Line
	9400 5050 9500 4950
Entry Wire Line
	9600 5500 9700 5400
Entry Wire Line
	9600 5600 9700 5500
Entry Wire Line
	9600 5700 9700 5600
Entry Wire Line
	9600 5800 9700 5700
Entry Wire Line
	10400 1750 10500 1650
Entry Wire Line
	10400 1850 10500 1750
Entry Wire Line
	10400 1950 10500 1850
Entry Wire Line
	10400 2050 10500 1950
Entry Wire Line
	10400 3850 10500 3750
Entry Wire Line
	10400 3950 10500 3850
Entry Wire Line
	10400 4050 10500 3950
Entry Wire Line
	10400 4150 10500 4050
Text Label 10500 1650 2    40   ~ 0
GPIO_EXT_PWR_1
Text Label 10500 1750 2    40   ~ 0
GPIO_EXT_PWR_2
Text Label 10500 1850 2    40   ~ 0
GPIO_EXT_PWR_3
Text Label 10500 1950 2    40   ~ 0
GPIO_EXT_PWR_4
Text Label 10500 3750 2    40   ~ 0
EXT_TRG_EN_1
Text Label 10500 3850 2    40   ~ 0
EXT_TRG_EN_2
Text Label 10500 3950 2    40   ~ 0
EXT_TRG_EN_3
Text Label 10500 4050 2    40   ~ 0
EXT_TRG_EN_4
$Sheet
S 3250 6500 2500 1600
U 550535FB
F0 "DC-DC Converters" 60
F1 "dcdc_converter.sch" 50
F2 "19V_ENn" I L 3250 7300 60 
F3 "12V_ENn" I L 3250 7200 60 
F4 "I2C_CLOCK" B L 3250 6750 60 
F5 "I2C_DATA" B L 3250 6850 60 
$EndSheet
$Sheet
S 7250 4500 2000 2500
U 55051BA8
F0 "BeagleBone Black Cape" 60
F1 "beaglebone_cape.sch" 50
F2 "EXT_TRG_EN_1" O R 9250 5500 60 
F3 "EXT_TRG_EN_2" O R 9250 5600 60 
F4 "EXT_TRG_EN_3" O R 9250 5700 60 
F5 "EXT_TRG_EN_4" O R 9250 5800 60 
F6 "EXT_PWR_EN_1" O R 9250 4750 60 
F7 "EXT_PWR_EN_2" O R 9250 4850 60 
F8 "EXT_PWR_EN_3" O R 9250 4950 60 
F9 "EXT_PWR_EN_4" O R 9250 5050 60 
F10 "12V_ENn" O R 9250 6300 60 
F11 "19V_ENn" O R 9250 6400 60 
F12 "I2C_CLOCK" B L 7250 4750 60 
F13 "I2C_DATA" B L 7250 4850 60 
F14 "BQ_XALERT" I L 7250 5100 60 
F15 "ROCKET_READYn" I L 7250 6650 60 
F16 "ROCKET_IGNITE" O R 9250 6750 60 
F17 "IGN_RTL" I L 7250 6750 61 
F18 "UMB_CONn" I L 7250 6550 61 
$EndSheet
$Sheet
S 10650 6500 2500 1600
U 5598112B
F0 "Rocket Umbilical & Ignition Control" 60
F1 "rocket_interface.sch" 60
F2 "ROCKET_READYn" O R 13150 6850 60 
F3 "ROCKET_IGNITE" I L 10650 6750 60 
F4 "IGN_RTL" O R 13150 6950 61 
F5 "UMB_CONn" O R 13150 6750 61 
$EndSheet
Entry Wire Line
	7000 4850 7100 4750
Entry Wire Line
	7000 4950 7100 4850
Entry Wire Line
	2900 6650 3000 6750
Entry Wire Line
	2900 6750 3000 6850
Entry Wire Line
	9400 6300 9500 6400
Entry Wire Line
	9400 6400 9500 6500
Entry Wire Line
	3000 7400 3100 7300
Entry Wire Line
	3000 7300 3100 7200
$Sheet
S 10650 1400 2500 1600
U 551C79BE
F0 "External Device Power" 60
F1 "external_power.sch" 50
F2 "EXT_PWR_EN_1" I L 10650 1650 60 
F3 "EXT_PWR_EN_2" I L 10650 1750 60 
F4 "EXT_PWR_EN_4" I L 10650 1950 60 
F5 "EXT_PWR_EN_3" I L 10650 1850 60 
$EndSheet
$Sheet
S 10650 3500 2500 1600
U 56D25DDF
F0 "External Device Triggers" 50
F1 "external_triggers.sch" 50
F2 "EXT_TRG_EN_1" I L 10650 3750 60 
F3 "EXT_TRG_EN_2" I L 10650 3850 60 
F4 "EXT_TRG_EN_3" I L 10650 3950 60 
F5 "EXT_TRG_EN_4" I L 10650 4050 60 
$EndSheet
Text Label 9600 5500 0    40   ~ 0
EXT_TRG_EN_1
Text Label 9600 5600 0    40   ~ 0
EXT_TRG_EN_2
Text Label 9600 5700 0    40   ~ 0
EXT_TRG_EN_3
Text Label 9600 5800 0    40   ~ 0
EXT_TRG_EN_4
Wire Bus Line
	3000 7300 3000 8500
Wire Bus Line
	3000 8500 9500 8500
Wire Bus Line
	9500 8500 9500 6400
Wire Bus Line
	7000 4850 7000 6000
Wire Bus Line
	2900 6000 2900 6750
Wire Wire Line
	7250 4850 7100 4850
Wire Wire Line
	7250 4750 7100 4750
Wire Wire Line
	6150 5100 7250 5100
Wire Wire Line
	3100 7200 3250 7200
Wire Wire Line
	9250 6300 9400 6300
Wire Wire Line
	3100 7300 3250 7300
Wire Wire Line
	9250 6400 9400 6400
Wire Wire Line
	3250 6850 3000 6850
Wire Wire Line
	3250 6750 3000 6750
Wire Bus Line
	10400 3850 10400 4300
Wire Bus Line
	9700 4300 9700 5700
Wire Bus Line
	9500 2200 9500 4950
Wire Wire Line
	9250 5800 9600 5800
Wire Wire Line
	9600 5700 9250 5700
Wire Wire Line
	9250 5600 9600 5600
Wire Wire Line
	9600 5500 9250 5500
Wire Wire Line
	9250 5050 9400 5050
Wire Wire Line
	9400 4950 9250 4950
Wire Wire Line
	9250 4850 9400 4850
Wire Wire Line
	9400 4750 9250 4750
Wire Wire Line
	10650 4050 10500 4050
Wire Wire Line
	10650 3950 10500 3950
Wire Wire Line
	10650 3850 10500 3850
Wire Wire Line
	10650 3750 10500 3750
Wire Wire Line
	10650 1950 10500 1950
Wire Wire Line
	10650 1850 10500 1850
Wire Wire Line
	10650 1750 10500 1750
Wire Wire Line
	10650 1650 10500 1650
Wire Bus Line
	10400 1750 10400 2200
Wire Wire Line
	13300 6850 13150 6850
Wire Wire Line
	9250 6750 10650 6750
Wire Bus Line
	10400 2200 9500 2200
Wire Bus Line
	9700 5400 9700 5450
Wire Bus Line
	10400 4300 9700 4300
Wire Wire Line
	13150 6950 13300 6950
Wire Wire Line
	7100 6750 7250 6750
Wire Wire Line
	13150 6750 13300 6750
Entry Wire Line
	7000 6850 7100 6750
Entry Wire Line
	7000 6750 7100 6650
Entry Wire Line
	7000 6650 7100 6550
Entry Wire Line
	13300 6750 13400 6850
Entry Wire Line
	13300 6850 13400 6950
Entry Wire Line
	13300 6950 13400 7050
Wire Bus Line
	13400 6850 13400 8350
Wire Bus Line
	13400 8350 7000 8350
Text Label 7100 6550 2    40   ~ 0
UMB_CONn
Text Label 7100 6650 2    40   ~ 0
ROCKET_READYn
Text Label 7100 6750 2    40   ~ 0
IGN_RTL
Text Label 13300 6750 0    40   ~ 0
UMB_CONn
Text Label 13300 6850 0    40   ~ 0
ROCKET_READYn
Text Label 13300 6950 0    40   ~ 0
IGN_RTL
Text Label 3100 7200 2    40   ~ 0
12V_ENn
Text Label 3100 7300 2    40   ~ 0
19V_ENn
Text Label 9400 6300 0    40   ~ 0
12V_ENn
Text Label 9400 6400 0    40   ~ 0
19V_ENn
Text Label 3000 6750 2    40   ~ 0
I2C_CLOCK
Text Label 3000 6850 2    40   ~ 0
I2C_DATA
Text Label 7100 4750 2    40   ~ 0
I2C_CLOCK
Text Label 7100 4850 2    40   ~ 0
I2C_DATA
Wire Wire Line
	7100 6650 7250 6650
Wire Wire Line
	7100 6550 7250 6550
Wire Bus Line
	7000 8350 7000 6650
Wire Bus Line
	7000 6000 2900 6000
Text Notes 4400 5400 0    100  ~ 20
TODO: make use of BQ_XALERT?
$EndSCHEMATC
