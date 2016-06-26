EESchema Schematic File Version 2
LIBS:4n35
LIBS:741g08
LIBS:battery_single_cell
LIBS:bq77PL900
LIBS:breakers
LIBS:CD74HC14
LIBS:current_shunt
LIBS:LT8490
LIBS:LTC299x
LIBS:MOSFET_SO8
LIBS:MOSFET_SOT26
LIBS:PI2127
LIBS:PMV45EN
LIBS:power_nodes
LIBS:relay_1c
LIBS:SNx52x0
LIBS:SUM110P08-11
LIBS:switches2
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
EELAYER 25 0
EELAYER END
$Descr B 17000 11000
encoding utf-8
Sheet 1 3
Title "LTC3 Charge Controller and Cell Protection"
Date "2016-06-25"
Rev "A"
Comp "Portland State Aerospace Society <http://psas.pdx.edu/>"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 5100 4250 2500 1600
U 56238165
F0 "Power In, Charge Controller" 60
F1 "power_in_charge_controller.sch" 60
F2 "I2C_CLOCK" B L 5100 4500 60 
F3 "I2C_DATA" B L 5100 4600 60 
$EndSheet
$Sheet
S 9100 4250 2500 1600
U 562DD32F
F0 "Cell Protection" 60
F1 "cell_protection.sch" 60
F2 "BQ_XALERT" B L 9100 4850 60 
F3 "I2C_DATA" B L 9100 4600 60 
F4 "I2C_CLOCK" B L 9100 4500 60 
$EndSheet
Entry Wire Line
	4850 4600 4950 4500
Entry Wire Line
	4850 4700 4950 4600
Entry Wire Line
	8600 4600 8700 4500
Entry Wire Line
	8600 4700 8700 4600
Wire Bus Line
	4850 4600 4850 6400
Wire Bus Line
	8600 4600 8600 6400
Wire Wire Line
	8950 4850 8950 6400
Wire Wire Line
	9100 4850 8950 4850
Wire Wire Line
	9100 4600 8700 4600
Wire Wire Line
	9100 4500 8700 4500
Wire Wire Line
	4950 4600 5100 4600
Wire Wire Line
	4950 4500 5100 4500
Text Label 8700 4500 2    40   ~ 0
I2C_CLOCK
Text Label 8700 4600 2    40   ~ 0
I2C_DATA
Text Label 4950 4500 2    40   ~ 0
I2C_CLOCK
Text Label 4950 4600 2    40   ~ 0
I2C_DATA
$EndSCHEMATC
