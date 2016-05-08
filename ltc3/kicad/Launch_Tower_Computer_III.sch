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
LIBS:bbd
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
LIBS:valves
LIBS:video
LIBS:Worldsemi
LIBS:Xicor
LIBS:xilinx
LIBS:Zilog
LIBS:Launch_Tower_Computer_III-cache
EELAYER 25 0
EELAYER END
$Descr B 17000 11000
encoding utf-8
Sheet 1 8
Title "Launch Tower Computer 3 (LTC3)"
Date "2016-05-07"
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
	11750 5600 11850 5500
Entry Wire Line
	11750 5700 11850 5600
Entry Wire Line
	11750 5800 11850 5700
Entry Wire Line
	11750 5900 11850 5800
Entry Wire Line
	12550 2150 12650 2050
Entry Wire Line
	12550 2250 12650 2150
Entry Wire Line
	12550 2350 12650 2250
Entry Wire Line
	12550 2450 12650 2350
Entry Wire Line
	12550 3950 12650 3850
Entry Wire Line
	12550 4050 12650 3950
Entry Wire Line
	12550 4150 12650 4050
Entry Wire Line
	12550 4250 12650 4150
Text Label 12650 2050 2    40   ~ 0
GPIO_EXT_PWR_1
Text Label 12650 2150 2    40   ~ 0
GPIO_EXT_PWR_2
Text Label 12650 2250 2    40   ~ 0
GPIO_EXT_PWR_3
Text Label 12650 2350 2    40   ~ 0
GPIO_EXT_PWR_4
Text Label 12650 3850 2    40   ~ 0
EXT_TRG_EN_1
Text Label 12650 3950 2    40   ~ 0
EXT_TRG_EN_2
Text Label 12650 4050 2    40   ~ 0
EXT_TRG_EN_3
Text Label 12650 4150 2    40   ~ 0
EXT_TRG_EN_4
$Sheet
S 1400 1500 2500 1600
U 56238165
F0 "Power In, Charge Controller" 60
F1 "power_in_charge_controller.sch" 60
F2 "I2C_CLOCK" B L 1400 1750 60 
F3 "I2C_DATA" B L 1400 1850 60 
$EndSheet
$Sheet
S 5400 1500 2500 1600
U 562DD32F
F0 "Cell Protection" 60
F1 "cell_protection.sch" 60
F2 "BQ_XALERT" B L 5400 2100 60 
F3 "I2C_DATA" B L 5400 1850 60 
F4 "I2C_CLOCK" B L 5400 1750 60 
$EndSheet
$Sheet
S 5400 6600 2500 1600
U 550535FB
F0 "DC-DC Converters" 60
F1 "dcdc_converter.sch" 50
F2 "19V_ENn" I L 5400 7400 60 
F3 "12V_ENn" I L 5400 7300 60 
F4 "I2C_CLOCK" B L 5400 6850 60 
F5 "I2C_DATA" B L 5400 6950 60 
$EndSheet
$Sheet
S 9400 4600 2000 2500
U 55051BA8
F0 "BeagleBone Black Cape" 60
F1 "beaglebone_cape.sch" 50
F2 "EXT_TRG_EN_1" O R 11400 5600 60 
F3 "EXT_TRG_EN_2" O R 11400 5700 60 
F4 "EXT_TRG_EN_3" O R 11400 5800 60 
F5 "EXT_TRG_EN_4" O R 11400 5900 60 
F6 "EXT_PWR_EN_1" O R 11400 4850 60 
F7 "EXT_PWR_EN_2" O R 11400 4950 60 
F8 "EXT_PWR_EN_3" O R 11400 5050 60 
F9 "EXT_PWR_EN_4" O R 11400 5150 60 
F10 "12V_ENn" O R 11400 6400 60 
F11 "19V_ENn" O R 11400 6500 60 
F12 "I2C_CLOCK" B L 9400 4850 60 
F13 "I2C_DATA" B L 9400 4950 60 
F14 "BQ_XALERT" I L 9400 5200 60 
F15 "ROCKET_READYn" I L 9400 6800 60 
F16 "ROCKET_IGNITE" O R 11400 6850 60 
F17 "IGN_RTL" I L 9400 6950 61 
F18 "UMB_CONn" I L 9400 6650 61 
$EndSheet
$Sheet
S 12800 6600 2500 1600
U 5598112B
F0 "Rocket Umbilical & Ignition Control" 60
F1 "rocket_interface.sch" 60
F2 "ROCKET_READYn" O R 15300 6850 60 
F3 "ROCKET_IGNITE" I L 12800 6850 60 
F4 "IGN_RTL" O R 15300 7000 61 
F5 "UMB_CONn" O R 15300 6700 61 
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
	11550 6400 11650 6500
Entry Wire Line
	11550 6500 11650 6600
Entry Wire Line
	5150 7500 5250 7400
Entry Wire Line
	5150 7400 5250 7300
$Sheet
S 12800 1500 2500 1600
U 551C79BE
F0 "External Device Power" 60
F1 "external_power.sch" 50
F2 "EXT_PWR_EN_1" I L 12800 2050 60 
F3 "EXT_PWR_EN_2" I L 12800 2150 60 
F4 "EXT_PWR_EN_4" I L 12800 2350 60 
F5 "EXT_PWR_EN_3" I L 12800 2250 60 
$EndSheet
$Sheet
S 12800 3600 2500 1600
U 56D25DDF
F0 "External Device Triggers" 50
F1 "external_triggers.sch" 50
F2 "EXT_TRG_EN_1" I L 12800 3850 60 
F3 "EXT_TRG_EN_2" I L 12800 3950 60 
F4 "EXT_TRG_EN_3" I L 12800 4050 60 
F5 "EXT_TRG_EN_4" I L 12800 4150 60 
$EndSheet
Text Label 11750 5600 0    40   ~ 0
EXT_TRG_EN_1
Text Label 11750 5700 0    40   ~ 0
EXT_TRG_EN_2
Text Label 11750 5800 0    40   ~ 0
EXT_TRG_EN_3
Text Label 11750 5900 0    40   ~ 0
EXT_TRG_EN_4
Wire Bus Line
	5150 7400 5150 8600
Wire Bus Line
	5150 8600 11650 8600
Wire Bus Line
	11650 8600 11650 6500
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
	5250 5200 9400 5200
Wire Wire Line
	5250 2100 5250 5200
Wire Wire Line
	5400 2100 5250 2100
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
	12550 3950 12550 4400
Wire Bus Line
	11850 4400 11850 5800
Wire Bus Line
	11650 2600 11650 5050
Wire Wire Line
	11400 5900 11750 5900
Wire Wire Line
	11750 5800 11400 5800
Wire Wire Line
	11400 5700 11750 5700
Wire Wire Line
	11750 5600 11400 5600
Wire Wire Line
	11400 5150 11550 5150
Wire Wire Line
	11550 5050 11400 5050
Wire Wire Line
	11400 4950 11550 4950
Wire Wire Line
	11550 4850 11400 4850
Wire Wire Line
	12800 4150 12650 4150
Wire Wire Line
	12800 4050 12650 4050
Wire Wire Line
	12800 3950 12650 3950
Wire Wire Line
	12800 3850 12650 3850
Wire Wire Line
	12800 2350 12650 2350
Wire Wire Line
	12800 2250 12650 2250
Wire Wire Line
	12800 2150 12650 2150
Wire Wire Line
	12800 2050 12650 2050
Wire Bus Line
	12550 2150 12550 2600
Wire Wire Line
	9400 6800 9250 6800
Wire Wire Line
	15450 6850 15300 6850
Wire Wire Line
	11400 6850 12800 6850
Wire Bus Line
	12550 2600 11650 2600
Wire Bus Line
	11850 5500 11850 5550
Wire Bus Line
	12550 4400 11850 4400
Wire Wire Line
	15300 7000 15450 7000
Wire Wire Line
	9250 6950 9400 6950
Wire Wire Line
	15300 6700 15450 6700
Wire Wire Line
	9250 6650 9400 6650
Entry Wire Line
	9150 7050 9250 6950
Entry Wire Line
	9150 6900 9250 6800
Entry Wire Line
	9150 6750 9250 6650
Entry Wire Line
	15450 6700 15550 6800
Entry Wire Line
	15450 6850 15550 6950
Entry Wire Line
	15450 7000 15550 7100
Wire Bus Line
	15550 6800 15550 8450
Wire Bus Line
	15550 8450 9150 8450
Wire Bus Line
	9150 8450 9150 6750
Text Label 9250 6650 2    40   ~ 0
UMB_CONn
Text Label 9250 6800 2    40   ~ 0
ROCKET_READYn
Text Label 9250 6950 2    40   ~ 0
IGN_RTL
Text Label 15450 6700 0    40   ~ 0
UMB_CONn
Text Label 15450 6850 0    40   ~ 0
ROCKET_READYn
Text Label 15450 7000 0    40   ~ 0
IGN_RTL
Text Label 5250 7300 2    40   ~ 0
12V_ENn
Text Label 5250 7400 2    40   ~ 0
19V_ENn
Text Label 11550 6400 0    40   ~ 0
12V_ENn
Text Label 11550 6500 0    40   ~ 0
19V_ENn
Text Label 5150 6850 2    40   ~ 0
I2C_CLOCK
Text Label 5150 6950 2    40   ~ 0
I2C_DATA
Text Label 9250 4850 2    40   ~ 0
I2C_CLOCK
Text Label 9250 4950 2    40   ~ 0
I2C_DATA
Text Label 5000 1750 2    40   ~ 0
I2C_CLOCK
Text Label 5000 1850 2    40   ~ 0
I2C_DATA
Text Label 1250 1750 2    40   ~ 0
I2C_CLOCK
Text Label 1250 1850 2    40   ~ 0
I2C_DATA
$EndSCHEMATC
