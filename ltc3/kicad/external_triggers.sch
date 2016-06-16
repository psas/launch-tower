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
LIBS:Launch_Tower_Computer_III-cache
EELAYER 25 0
EELAYER END
$Descr B 17000 11000
encoding utf-8
Sheet 8 8
Title "LTC3 External Device Triggers"
Date "2016-05-09"
Rev "A"
Comp "Portland State Aerospace Society <http://psas.pdx.edu/>"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L R R803
U 1 1 5721FE0D
P 1650 3750
F 0 "R803" V 1550 3750 50  0000 C CNN
F 1 "10k" V 1750 3750 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 1580 3750 30  0001 C CNN
F 3 "~" H 1650 3750 30  0000 C CNN
	1    1650 3750
	1    0    0    -1  
$EndComp
Text HLabel 1500 3450 0    60   Input ~ 0
EXT_TRG_EN_1
$Comp
L GND #PWR801
U 1 1 5721FE15
P 1650 4100
F 0 "#PWR801" H 1650 4100 30  0001 C CNN
F 1 "GND" H 1650 4030 30  0001 C CNN
F 2 "" H 1650 4100 60  0000 C CNN
F 3 "" H 1650 4100 60  0000 C CNN
	1    1650 4100
	1    0    0    -1  
$EndComp
$Comp
L R R801
U 1 1 5721FE2F
P 2450 2550
F 0 "R801" V 2350 2550 50  0000 C CNN
F 1 "270" V 2550 2550 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 2380 2550 30  0001 C CNN
F 3 "~" H 2450 2550 30  0000 C CNN
	1    2450 2550
	1    0    0    -1  
$EndComp
$Comp
L PMV45EN Q801
U 1 1 5721FE36
P 2000 3400
F 0 "Q801" H 1750 3600 50  0000 L CNN
F 1 "PMV45EN" H 1600 3500 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 2200 3325 50  0001 L CIN
F 3 "" H 2000 3400 50  0000 L CNN
	1    2000 3400
	1    0    0    -1  
$EndComp
$Comp
L TLP3542 IC801
U 1 1 5721FE3D
P 2950 3000
F 0 "IC801" H 2800 3250 50  0000 C CNN
F 1 "TLP3542" H 3050 2850 50  0000 C CNN
F 2 "Housings_DIP:DIP-6_W7.62mm" H 2740 2870 30  0001 C CIN
F 3 "" H 2950 3050 60  0000 C CNN
	1    2950 3000
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR803
U 1 1 5721FE44
P 2450 2250
F 0 "#PWR803" H 2450 2100 50  0001 C CNN
F 1 "+5V" H 2450 2390 50  0000 C CNN
F 2 "" H 2450 2250 60  0000 C CNN
F 3 "" H 2450 2250 60  0000 C CNN
	1    2450 2250
	1    0    0    -1  
$EndComp
$Comp
L R R804
U 1 1 5721FE4A
P 6850 3750
F 0 "R804" V 6750 3750 50  0000 C CNN
F 1 "10k" V 6950 3750 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 6780 3750 30  0001 C CNN
F 3 "~" H 6850 3750 30  0000 C CNN
	1    6850 3750
	1    0    0    -1  
$EndComp
Text HLabel 6700 3450 0    60   Input ~ 0
EXT_TRG_EN_2
$Comp
L GND #PWR809
U 1 1 5721FE52
P 6850 4100
F 0 "#PWR809" H 6850 4100 30  0001 C CNN
F 1 "GND" H 6850 4030 30  0001 C CNN
F 2 "" H 6850 4100 60  0000 C CNN
F 3 "" H 6850 4100 60  0000 C CNN
	1    6850 4100
	1    0    0    -1  
$EndComp
$Comp
L R R802
U 1 1 5721FE6C
P 7650 2550
F 0 "R802" V 7550 2550 50  0000 C CNN
F 1 "270" V 7750 2550 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 7580 2550 30  0001 C CNN
F 3 "~" H 7650 2550 30  0000 C CNN
	1    7650 2550
	1    0    0    -1  
$EndComp
$Comp
L PMV45EN Q802
U 1 1 5721FE73
P 7200 3400
F 0 "Q802" H 6950 3600 50  0000 L CNN
F 1 "PMV45EN" H 6800 3500 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 7400 3325 50  0001 L CIN
F 3 "" H 7200 3400 50  0000 L CNN
	1    7200 3400
	1    0    0    -1  
$EndComp
$Comp
L TLP3542 IC802
U 1 1 5721FE7A
P 8150 3000
F 0 "IC802" H 8000 3250 50  0000 C CNN
F 1 "TLP3542" H 8250 2850 50  0000 C CNN
F 2 "Housings_DIP:DIP-6_W7.62mm" H 7940 2870 30  0001 C CIN
F 3 "" H 8150 3050 60  0000 C CNN
	1    8150 3000
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR811
U 1 1 5721FE81
P 7650 2250
F 0 "#PWR811" H 7650 2100 50  0001 C CNN
F 1 "+5V" H 7650 2390 50  0000 C CNN
F 2 "" H 7650 2250 60  0000 C CNN
F 3 "" H 7650 2250 60  0000 C CNN
	1    7650 2250
	1    0    0    -1  
$EndComp
$Comp
L R R807
U 1 1 5721FE8D
P 1650 9750
F 0 "R807" V 1550 9750 50  0000 C CNN
F 1 "10k" V 1750 9750 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 1580 9750 30  0001 C CNN
F 3 "~" H 1650 9750 30  0000 C CNN
	1    1650 9750
	1    0    0    -1  
$EndComp
Text HLabel 1500 9450 0    60   Input ~ 0
EXT_TRG_EN_3
$Comp
L GND #PWR802
U 1 1 5721FE95
P 1650 10100
F 0 "#PWR802" H 1650 10100 30  0001 C CNN
F 1 "GND" H 1650 10030 30  0001 C CNN
F 2 "" H 1650 10100 60  0000 C CNN
F 3 "" H 1650 10100 60  0000 C CNN
	1    1650 10100
	1    0    0    -1  
$EndComp
$Comp
L R R805
U 1 1 5721FEA9
P 2450 8550
F 0 "R805" V 2350 8550 50  0000 C CNN
F 1 "270" V 2550 8550 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 2380 8550 30  0001 C CNN
F 3 "~" H 2450 8550 30  0000 C CNN
	1    2450 8550
	1    0    0    -1  
$EndComp
$Comp
L PMV45EN Q803
U 1 1 5721FEB0
P 2000 9400
F 0 "Q803" H 1750 9600 50  0000 L CNN
F 1 "PMV45EN" H 1600 9500 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 2200 9325 50  0001 L CIN
F 3 "" H 2000 9400 50  0000 L CNN
	1    2000 9400
	1    0    0    -1  
$EndComp
$Comp
L TLP3542 IC803
U 1 1 5721FEB7
P 2950 9000
F 0 "IC803" H 2800 9250 50  0000 C CNN
F 1 "TLP3542" H 3050 8850 50  0000 C CNN
F 2 "Housings_DIP:DIP-6_W7.62mm" H 2740 8870 30  0001 C CIN
F 3 "" H 2950 9050 60  0000 C CNN
	1    2950 9000
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR804
U 1 1 5721FEBE
P 2450 8250
F 0 "#PWR804" H 2450 8100 50  0001 C CNN
F 1 "+5V" H 2450 8390 50  0000 C CNN
F 2 "" H 2450 8250 60  0000 C CNN
F 3 "" H 2450 8250 60  0000 C CNN
	1    2450 8250
	1    0    0    -1  
$EndComp
$Comp
L R R808
U 1 1 5721FEC4
P 6850 9750
F 0 "R808" V 6750 9750 50  0000 C CNN
F 1 "10k" V 6950 9750 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 6780 9750 30  0001 C CNN
F 3 "~" H 6850 9750 30  0000 C CNN
	1    6850 9750
	1    0    0    -1  
$EndComp
Text HLabel 6700 9450 0    60   Input ~ 0
EXT_TRG_EN_4
$Comp
L GND #PWR810
U 1 1 5721FECC
P 6850 10100
F 0 "#PWR810" H 6850 10100 30  0001 C CNN
F 1 "GND" H 6850 10030 30  0001 C CNN
F 2 "" H 6850 10100 60  0000 C CNN
F 3 "" H 6850 10100 60  0000 C CNN
	1    6850 10100
	1    0    0    -1  
$EndComp
$Comp
L R R806
U 1 1 5721FEE6
P 7650 8550
F 0 "R806" V 7550 8550 50  0000 C CNN
F 1 "270" V 7750 8550 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 7580 8550 30  0001 C CNN
F 3 "~" H 7650 8550 30  0000 C CNN
	1    7650 8550
	1    0    0    -1  
$EndComp
$Comp
L PMV45EN Q804
U 1 1 5721FEED
P 7200 9400
F 0 "Q804" H 6950 9600 50  0000 L CNN
F 1 "PMV45EN" H 6800 9500 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 7400 9325 50  0001 L CIN
F 3 "" H 7200 9400 50  0000 L CNN
	1    7200 9400
	1    0    0    -1  
$EndComp
$Comp
L TLP3542 IC804
U 1 1 5721FEF4
P 8150 9000
F 0 "IC804" H 8000 9250 50  0000 C CNN
F 1 "TLP3542" H 8250 8850 50  0000 C CNN
F 2 "Housings_DIP:DIP-6_W7.62mm" H 7940 8870 30  0001 C CIN
F 3 "" H 8150 9050 60  0000 C CNN
	1    8150 9000
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR812
U 1 1 5721FEFB
P 7650 8250
F 0 "#PWR812" H 7650 8100 50  0001 C CNN
F 1 "+5V" H 7650 8390 50  0000 C CNN
F 2 "" H 7650 8250 60  0000 C CNN
F 3 "" H 7650 8250 60  0000 C CNN
	1    7650 8250
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X08 P803
U 1 1 5721FF02
P 12950 4650
F 0 "P803" H 12950 5150 50  0000 L CNN
F 1 "43045-0800" V 13050 4250 50  0000 L CNN
F 2 "Connectors_Molex:Molex_Microfit3_Header_02x04_Angled_43045-080x" H 12950 4650 50  0001 C CNN
F 3 "" H 12950 4650 50  0000 C CNN
F 4 "MicroFit3 2x4 header" V 13150 4250 50  0000 L CNN "Note"
	1    12950 4650
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X08 P804
U 1 1 5721FF0A
P 13700 4650
F 0 "P804" H 13700 5150 50  0000 L CNN
F 1 "43025-0800" V 13800 4250 50  0000 L CNN
F 2 "OFF-BOARD" H 13700 4650 50  0001 C CNN
F 3 "" H 13700 4650 50  0000 C CNN
F 4 "MicroFit3 2x4 recept." V 13900 4650 50  0000 C CNN "Note"
	1    13700 4650
	-1   0    0    -1  
$EndComp
$Comp
L BREAKER_1P M803
U 1 1 5721FF11
P 15450 5300
F 0 "M803" H 15450 5425 50  0000 C CNN
F 1 "W28-XQ1A-0.25" H 15450 5225 50  0000 C CNN
F 2 "OFF-BOARD" H 15450 5300 50  0001 C CNN
F 3 "" H 15450 5300 50  0000 C CNN
	1    15450 5300
	0    -1   1    0   
$EndComp
$Comp
L BREAKER_1P M804
U 1 1 5721FF18
P 15850 5300
F 0 "M804" H 15850 5425 50  0000 C CNN
F 1 "W28-XQ1A-0.25" H 15850 5225 50  0000 C CNN
F 2 "OFF-BOARD" H 15850 5300 50  0001 C CNN
F 3 "" H 15850 5300 50  0000 C CNN
	1    15850 5300
	0    -1   1    0   
$EndComp
$Comp
L BREAKER_1P M801
U 1 1 5721FF1F
P 14650 5300
F 0 "M801" H 14650 5425 50  0000 C CNN
F 1 "W28-XQ1A-0.25" H 14650 5225 50  0000 C CNN
F 2 "OFF-BOARD" H 14650 5300 50  0001 C CNN
F 3 "" H 14650 5300 50  0000 C CNN
	1    14650 5300
	0    -1   1    0   
$EndComp
$Comp
L BREAKER_1P M802
U 1 1 5721FF26
P 15050 5300
F 0 "M802" H 15050 5425 50  0000 C CNN
F 1 "W28-XQ1A-0.25" H 15050 5225 50  0000 C CNN
F 2 "OFF-BOARD" H 15050 5300 50  0001 C CNN
F 3 "" H 15050 5300 50  0000 C CNN
	1    15050 5300
	0    -1   1    0   
$EndComp
Text Notes 13400 6300 0    80   ~ 0
Circuit Breakers, 250mA x 4, Front Panel
Text Notes 12700 3400 0    80   ~ 0
Manual Override Switches, Front Panel
$Comp
L GND #PWR817
U 1 1 5721FF2F
P 11800 2200
F 0 "#PWR817" H 11800 1950 50  0001 C CNN
F 1 "GND" H 11808 2026 50  0001 C CNN
F 2 "" H 11800 2200 50  0000 C CNN
F 3 "" H 11800 2200 50  0000 C CNN
	1    11800 2200
	1    0    0    -1  
$EndComp
$Comp
L SP3T SW801
U 1 1 5721FF35
P 13750 2300
F 0 "SW801" V 13650 2250 50  0000 R CNN
F 1 "SP3T" V 13750 2250 50  0000 R CNN
F 2 "OFF-BOARD" H 13125 2475 50  0001 C CNN
F 3 "" H 13125 2475 50  0000 C CNN
	1    13750 2300
	0    -1   1    0   
$EndComp
$Comp
L CONN_01X10 P801
U 1 1 5721FF3D
P 12250 1600
F 0 "P801" H 12250 2150 50  0000 L CNN
F 1 "43045-1000" V 12350 1100 50  0000 L CNN
F 2 "Connectors_Molex:Molex_Microfit3_Header_02x05_Angled_43045-100x" H 12250 1600 50  0001 C CNN
F 3 "" H 12250 1600 50  0000 C CNN
F 4 "MicroFit3 2x5 header" V 12450 1100 50  0000 L CNN "Note"
	1    12250 1600
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X10 P802
U 1 1 5721FF45
P 13000 1600
F 0 "P802" H 13000 2150 50  0000 L CNN
F 1 "43025-1000" V 13100 1100 50  0000 L CNN
F 2 "OFF-BOARD" H 13000 1600 50  0001 C CNN
F 3 "" H 13000 1600 50  0000 C CNN
F 4 "MicroFit3 2x5 recept." V 13200 1100 50  0000 L CNN "Note"
	1    13000 1600
	-1   0    0    -1  
$EndComp
$Comp
L SP3T SW802
U 1 1 5721FF4C
P 14400 2300
F 0 "SW802" V 14300 2250 50  0000 R CNN
F 1 "SP3T" V 14400 2250 50  0000 R CNN
F 2 "OFF-BOARD" H 13775 2475 50  0001 C CNN
F 3 "" H 13775 2475 50  0000 C CNN
	1    14400 2300
	0    -1   1    0   
$EndComp
$Comp
L SP3T SW803
U 1 1 5721FF53
P 15050 2300
F 0 "SW803" V 14950 2250 50  0000 R CNN
F 1 "SP3T" V 15050 2250 50  0000 R CNN
F 2 "OFF-BOARD" H 14425 2475 50  0001 C CNN
F 3 "" H 14425 2475 50  0000 C CNN
	1    15050 2300
	0    -1   1    0   
$EndComp
$Comp
L SP3T SW804
U 1 1 5721FF5A
P 15700 2300
F 0 "SW804" V 15600 2250 50  0000 R CNN
F 1 "SP3T" V 15700 2250 50  0000 R CNN
F 2 "OFF-BOARD" H 15075 2475 50  0001 C CNN
F 3 "" H 15075 2475 50  0000 C CNN
	1    15700 2300
	0    -1   1    0   
$EndComp
Text Notes 12700 3600 0    60   Italic 0
Toggle each optoisolator's LED between the FET, disconnected,\nor ground.  Use SP3T or SPDT w/ center-NC feature.
Text Label 11900 1350 2    50   ~ 0
EXT_TRG_2_FET_D
Text Label 11900 1450 2    50   ~ 0
EXT_TRG_2_LED_CATH
Text Label 11900 1150 2    50   ~ 0
EXT_TRG_1_FET_D
Text Label 11900 1250 2    50   ~ 0
EXT_TRG_1_LED_CATH
Text Label 11900 1550 2    50   ~ 0
EXT_TRG_3_FET_D
Text Label 11900 1650 2    50   ~ 0
EXT_TRG_3_LED_CATH
Text Label 11900 1750 2    50   ~ 0
EXT_TRG_4_FET_D
Text Label 11900 1850 2    50   ~ 0
EXT_TRG_4_LED_CATH
Text Label 12350 4400 2    50   ~ 0
EXT_TRG_1_OPTO_RELAY
Text Label 12350 4600 2    50   ~ 0
EXT_TRG_2_OPTO_RELAY
Text Label 12350 4800 2    50   ~ 0
EXT_TRG_3_OPTO_RELAY
Text Label 12350 5000 2    50   ~ 0
EXT_TRG_4_OPTO_RELAY
$Comp
L CONN_01X08 P805
U 1 1 5721FF6F
P 13200 7350
F 0 "P805" H 13200 7850 50  0000 L CNN
F 1 "43045-0800" V 13300 6950 50  0000 L CNN
F 2 "Connectors_Molex:Molex_Microfit3_Header_02x04_Angled_43045-080x" H 13200 7350 50  0001 C CNN
F 3 "" H 13200 7350 50  0000 C CNN
F 4 "MicroFit3 2x4 header" V 13400 6950 50  0000 L CNN "Note"
	1    13200 7350
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X08 P806
U 1 1 5721FF77
P 13950 7350
F 0 "P806" H 13950 7850 50  0000 L CNN
F 1 "43025-0800" V 14050 6950 50  0000 L CNN
F 2 "OFF-BOARD" H 13950 7350 50  0001 C CNN
F 3 "" H 13950 7350 50  0000 C CNN
F 4 "MicroFit3 2x4 recept." V 14150 7350 50  0000 C CNN "Note"
	1    13950 7350
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR818
U 1 1 5721FF7E
P 12850 7850
F 0 "#PWR818" H 12850 7600 50  0001 C CNN
F 1 "GND" H 12858 7677 50  0000 C CNN
F 2 "" H 12850 7850 50  0000 C CNN
F 3 "" H 12850 7850 50  0000 C CNN
	1    12850 7850
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P807
U 1 1 5721FF8A
P 14650 8150
F 0 "P807" H 14750 8150 50  0000 L CNN
F 1 "1327G6" H 15000 8150 50  0001 C CNN
F 2 "OFF-BOARD" H 14650 8150 50  0001 C CNN
F 3 "" H 14650 8150 50  0000 C CNN
	1    14650 8150
	0    1    1    0   
$EndComp
$Comp
L CONN_01X01 P808
U 1 1 5721FF91
P 14800 8150
F 0 "P808" H 14900 8150 50  0000 L CNN
F 1 "1327" H 15100 8150 50  0001 C CNN
F 2 "OFF-BOARD" H 14800 8150 50  0001 C CNN
F 3 "" H 14800 8150 50  0000 C CNN
	1    14800 8150
	0    1    1    0   
$EndComp
Text Notes 13650 8750 0    80   ~ 0
Trigger Outlets, Front Panel
Text Notes 13650 8850 0    60   Italic 0
Anderson PowerPole PP15-45
$Comp
L CONN_01X01 P809
U 1 1 5721FF9A
P 15050 8150
F 0 "P809" H 15150 8150 50  0000 L CNN
F 1 "1327G6" H 15400 8150 50  0001 C CNN
F 2 "OFF-BOARD" H 15050 8150 50  0001 C CNN
F 3 "" H 15050 8150 50  0000 C CNN
	1    15050 8150
	0    1    1    0   
$EndComp
$Comp
L CONN_01X01 P810
U 1 1 5721FFA1
P 15200 8150
F 0 "P810" H 15300 8150 50  0000 L CNN
F 1 "1327" H 15500 8150 50  0001 C CNN
F 2 "OFF-BOARD" H 15200 8150 50  0001 C CNN
F 3 "" H 15200 8150 50  0000 C CNN
	1    15200 8150
	0    1    1    0   
$EndComp
$Comp
L CONN_01X01 P811
U 1 1 5721FFA8
P 15450 8150
F 0 "P811" H 15550 8150 50  0000 L CNN
F 1 "1327G6" H 15800 8150 50  0001 C CNN
F 2 "OFF-BOARD" H 15450 8150 50  0001 C CNN
F 3 "" H 15450 8150 50  0000 C CNN
	1    15450 8150
	0    1    1    0   
$EndComp
$Comp
L CONN_01X01 P812
U 1 1 5721FFAF
P 15600 8150
F 0 "P812" H 15700 8150 50  0000 L CNN
F 1 "1327" H 15900 8150 50  0001 C CNN
F 2 "OFF-BOARD" H 15600 8150 50  0001 C CNN
F 3 "" H 15600 8150 50  0000 C CNN
	1    15600 8150
	0    1    1    0   
$EndComp
$Comp
L CONN_01X01 P813
U 1 1 5721FFB6
P 15850 8150
F 0 "P813" H 15950 8150 50  0000 L CNN
F 1 "1327G6" H 16200 8150 50  0001 C CNN
F 2 "OFF-BOARD" H 15850 8150 50  0001 C CNN
F 3 "" H 15850 8150 50  0000 C CNN
	1    15850 8150
	0    1    1    0   
$EndComp
$Comp
L CONN_01X01 P814
U 1 1 5721FFBD
P 16000 8150
F 0 "P814" H 16100 8150 50  0000 L CNN
F 1 "1327" H 16300 8150 50  0001 C CNN
F 2 "OFF-BOARD" H 16000 8150 50  0001 C CNN
F 3 "" H 16000 8150 50  0000 C CNN
	1    16000 8150
	0    1    1    0   
$EndComp
Wire Wire Line
	3300 2850 4250 2850
Connection ~ 1650 4000
Wire Wire Line
	1650 4000 2100 4000
Wire Wire Line
	2100 4000 2100 3600
Wire Wire Line
	1650 3900 1650 4100
Wire Wire Line
	3300 3050 4150 3050
Wire Wire Line
	2250 3050 2600 3050
Wire Wire Line
	2450 2850 2600 2850
Wire Wire Line
	2450 2700 2450 2850
Wire Wire Line
	1650 3600 1650 3450
Wire Wire Line
	2450 2250 2450 2400
Wire Wire Line
	1500 3450 1800 3450
Connection ~ 1650 3450
Wire Wire Line
	8500 2850 8750 2850
Connection ~ 6850 4000
Wire Wire Line
	6850 4000 7300 4000
Wire Wire Line
	7300 4000 7300 3600
Wire Wire Line
	6850 3900 6850 4100
Wire Wire Line
	8500 3050 9350 3050
Wire Wire Line
	7450 3050 7800 3050
Wire Wire Line
	7650 2850 7800 2850
Wire Wire Line
	7650 2700 7650 2850
Wire Wire Line
	6850 3600 6850 3450
Wire Wire Line
	7650 2250 7650 2400
Wire Wire Line
	6700 3450 7000 3450
Connection ~ 6850 3450
Wire Wire Line
	4250 8850 3300 8850
Connection ~ 1650 10000
Wire Wire Line
	1650 10000 2100 10000
Wire Wire Line
	2100 10000 2100 9600
Wire Wire Line
	1650 9900 1650 10100
Wire Wire Line
	2100 7650 2100 9200
Wire Wire Line
	3300 9050 4150 9050
Wire Wire Line
	2450 8850 2600 8850
Wire Wire Line
	2450 8700 2450 8850
Wire Wire Line
	1650 9600 1650 9450
Wire Wire Line
	2450 8250 2450 8400
Wire Wire Line
	1500 9450 1800 9450
Connection ~ 1650 9450
Wire Wire Line
	8850 8850 8500 8850
Connection ~ 6850 10000
Wire Wire Line
	6850 10000 7300 10000
Wire Wire Line
	7300 10000 7300 9600
Wire Wire Line
	6850 9900 6850 10100
Wire Wire Line
	7300 7750 7300 9200
Wire Wire Line
	8500 9050 9350 9050
Wire Wire Line
	7650 8850 7800 8850
Wire Wire Line
	7650 8700 7650 8850
Wire Wire Line
	6850 9600 6850 9450
Wire Wire Line
	7650 8250 7650 8400
Wire Wire Line
	6700 9450 7000 9450
Connection ~ 6850 9450
Wire Wire Line
	4400 4300 12750 4300
Wire Wire Line
	9550 4500 12750 4500
Wire Wire Line
	4400 4700 12750 4700
Wire Wire Line
	9500 4900 12750 4900
Wire Wire Line
	13900 4300 14650 4300
Wire Wire Line
	14650 4300 14650 5050
Wire Wire Line
	13900 4500 15050 4500
Wire Wire Line
	15050 4500 15050 5050
Wire Wire Line
	13900 4700 15450 4700
Wire Wire Line
	15450 4700 15450 5050
Wire Wire Line
	13900 4900 15850 4900
Wire Wire Line
	15850 4900 15850 5050
Wire Wire Line
	13900 4400 14450 4400
Wire Wire Line
	14450 4400 14450 5700
Wire Wire Line
	14450 5700 14650 5700
Wire Wire Line
	14650 5700 14650 5550
Wire Wire Line
	13900 4600 14350 4600
Wire Wire Line
	14350 4600 14350 5800
Wire Wire Line
	14350 5800 15050 5800
Wire Wire Line
	15050 5800 15050 5550
Wire Wire Line
	13900 4800 14250 4800
Wire Wire Line
	14250 4800 14250 5900
Wire Wire Line
	14250 5900 15450 5900
Wire Wire Line
	15450 5900 15450 5550
Wire Wire Line
	13900 5000 14150 5000
Wire Wire Line
	14150 5000 14150 6000
Wire Wire Line
	14150 6000 15850 6000
Wire Wire Line
	15850 6000 15850 5550
Wire Wire Line
	8850 5000 12750 5000
Wire Wire Line
	8750 4800 12750 4800
Wire Notes Line
	13400 3950 16200 3950
Wire Notes Line
	16200 3950 16200 6150
Wire Notes Line
	16200 6150 13400 6150
Wire Notes Line
	13400 6150 13400 3950
Wire Notes Line
	12700 900  16200 900 
Wire Notes Line
	16200 900  16200 3250
Wire Notes Line
	16200 3250 12700 3250
Wire Notes Line
	12700 3250 12700 900 
Wire Wire Line
	11800 1950 11800 2200
Wire Wire Line
	11800 2050 12050 2050
Connection ~ 11800 2050
Wire Wire Line
	11800 1950 12050 1950
Wire Wire Line
	13750 2000 13750 1150
Wire Wire Line
	13750 1150 13200 1150
Wire Wire Line
	14400 2000 14400 1350
Wire Wire Line
	14400 1350 13200 1350
Wire Wire Line
	15050 2000 15050 1550
Wire Wire Line
	15050 1550 13200 1550
Wire Wire Line
	15700 2000 15700 1750
Wire Wire Line
	15700 1750 13200 1750
Wire Wire Line
	13650 2600 13650 2750
Wire Wire Line
	13650 2750 13500 2750
Wire Wire Line
	13500 2750 13500 1250
Wire Wire Line
	13500 1250 13200 1250
Wire Wire Line
	14150 1450 14150 2750
Wire Wire Line
	14150 1450 13200 1450
Wire Wire Line
	14150 2750 14300 2750
Wire Wire Line
	14300 2750 14300 2600
Wire Wire Line
	14950 2600 14950 2750
Wire Wire Line
	14950 2750 14800 2750
Wire Wire Line
	14800 2750 14800 1650
Wire Wire Line
	14800 1650 13200 1650
Wire Wire Line
	15600 2600 15600 2750
Wire Wire Line
	15600 2750 15450 2750
Wire Wire Line
	15450 2750 15450 1850
Wire Wire Line
	15450 1850 13200 1850
Wire Wire Line
	13850 2600 13850 2900
Wire Wire Line
	13350 2900 15800 2900
Wire Wire Line
	13350 1950 13350 2900
Wire Wire Line
	13350 2050 13200 2050
Wire Wire Line
	13350 1950 13200 1950
Connection ~ 13350 2050
Wire Wire Line
	14500 2900 14500 2600
Connection ~ 13850 2900
Wire Wire Line
	15150 2900 15150 2600
Connection ~ 14500 2900
Wire Wire Line
	15800 2900 15800 2600
Connection ~ 15150 2900
Wire Wire Line
	7450 1450 7450 3050
Wire Wire Line
	7300 1350 7300 3200
Wire Wire Line
	2250 1250 2250 3050
Wire Wire Line
	2100 3200 2100 1150
Wire Wire Line
	2100 1150 12050 1150
Wire Wire Line
	12050 1250 2250 1250
Wire Wire Line
	7450 1450 12050 1450
Wire Wire Line
	12050 1350 7300 1350
Wire Wire Line
	2600 9050 2250 9050
Wire Wire Line
	2250 9050 2250 7750
Wire Wire Line
	7800 9050 7450 9050
Wire Wire Line
	7450 9050 7450 7650
Wire Wire Line
	5200 1550 12050 1550
Wire Wire Line
	5300 1650 12050 1650
Wire Wire Line
	5500 1850 12050 1850
Wire Wire Line
	5400 1750 12050 1750
Wire Wire Line
	8750 4600 12750 4600
Wire Wire Line
	4250 4400 12750 4400
Wire Wire Line
	14150 7000 16000 7000
Wire Wire Line
	14150 7200 15600 7200
Wire Wire Line
	14150 7400 15200 7400
Wire Wire Line
	14150 7600 14800 7600
Wire Wire Line
	14150 7100 15850 7100
Wire Wire Line
	14150 7300 15450 7300
Wire Wire Line
	14150 7500 15050 7500
Wire Wire Line
	14150 7700 14650 7700
Wire Notes Line
	13650 6650 16200 6650
Wire Notes Line
	13650 8600 13650 6650
Wire Notes Line
	16200 6650 16200 8600
Wire Notes Line
	16200 8600 13650 8600
Wire Wire Line
	12850 7100 12850 7850
Wire Wire Line
	12850 7700 13000 7700
Wire Wire Line
	12850 7500 13000 7500
Connection ~ 12850 7700
Wire Wire Line
	12850 7300 13000 7300
Connection ~ 12850 7500
Wire Wire Line
	12850 7100 13000 7100
Connection ~ 12850 7300
Wire Wire Line
	2100 7650 5200 7650
Wire Wire Line
	5200 7650 5200 1550
Wire Wire Line
	2250 7750 5300 7750
Wire Wire Line
	5300 7750 5300 1650
Wire Wire Line
	7300 7750 5400 7750
Wire Wire Line
	5400 7750 5400 1750
Wire Wire Line
	7450 7650 5500 7650
Wire Wire Line
	5500 7650 5500 1850
Wire Wire Line
	4150 7000 13000 7000
Wire Wire Line
	9350 7200 13000 7200
Wire Wire Line
	4150 7400 13000 7400
Wire Wire Line
	9350 7600 13000 7600
Wire Wire Line
	14650 7700 14650 7950
Wire Wire Line
	14800 7600 14800 7950
Wire Wire Line
	15050 7500 15050 7950
Wire Wire Line
	15200 7400 15200 7950
Wire Wire Line
	15450 7300 15450 7950
Wire Wire Line
	15600 7200 15600 7950
Wire Wire Line
	16000 7000 16000 7950
Wire Wire Line
	15850 7100 15850 7950
Wire Wire Line
	8750 2850 8750 4600
Wire Wire Line
	9350 3050 9350 7200
Wire Wire Line
	4150 3050 4150 7000
Wire Wire Line
	4250 2850 4250 4400
Wire Wire Line
	4150 9050 4150 7400
Wire Wire Line
	8750 4800 8750 7300
Wire Wire Line
	8750 7300 4250 7300
Wire Wire Line
	4250 7300 4250 8850
Wire Wire Line
	8850 5000 8850 8850
Wire Wire Line
	9350 9050 9350 7600
$Comp
L JUMPER3 JP801
U 1 1 57255E04
P 4750 2850
F 0 "JP801" H 4800 2750 50  0000 L CNN
F 1 "Trigger Level" H 4750 3000 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 4750 2850 60  0001 C CNN
F 3 "~" H 4750 2850 60  0000 C CNN
	1    4750 2850
	0    1    1    0   
$EndComp
$Comp
L GND #PWR806
U 1 1 57255E0A
P 4750 3350
F 0 "#PWR806" H 4750 3350 30  0001 C CNN
F 1 "GND" H 4750 3280 30  0001 C CNN
F 2 "" H 4750 3350 60  0000 C CNN
F 3 "" H 4750 3350 60  0000 C CNN
	1    4750 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 3350 4750 3100
Wire Wire Line
	4750 2350 4750 2600
$Comp
L +5V #PWR805
U 1 1 57255E12
P 4750 2350
F 0 "#PWR805" H 4750 2200 50  0001 C CNN
F 1 "+5V" H 4768 2524 50  0000 C CNN
F 2 "" H 4750 2350 50  0000 C CNN
F 3 "" H 4750 2350 50  0000 C CNN
	1    4750 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 2850 4400 2850
$Comp
L JUMPER3 JP802
U 1 1 57258DF1
P 9900 2850
F 0 "JP802" H 9950 2750 50  0000 L CNN
F 1 "Trigger Level" H 9900 3000 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 9900 2850 60  0001 C CNN
F 3 "~" H 9900 2850 60  0000 C CNN
	1    9900 2850
	0    1    1    0   
$EndComp
$Comp
L GND #PWR816
U 1 1 57258DF7
P 9900 3350
F 0 "#PWR816" H 9900 3350 30  0001 C CNN
F 1 "GND" H 9900 3280 30  0001 C CNN
F 2 "" H 9900 3350 60  0000 C CNN
F 3 "" H 9900 3350 60  0000 C CNN
	1    9900 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 3350 9900 3100
Wire Wire Line
	9900 2350 9900 2600
$Comp
L +5V #PWR815
U 1 1 57258DFF
P 9900 2350
F 0 "#PWR815" H 9900 2200 50  0001 C CNN
F 1 "+5V" H 9918 2524 50  0000 C CNN
F 2 "" H 9900 2350 50  0000 C CNN
F 3 "" H 9900 2350 50  0000 C CNN
	1    9900 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 2850 9550 2850
$Comp
L JUMPER3 JP803
U 1 1 5725D3A8
P 9850 8800
F 0 "JP803" H 9900 8700 50  0000 L CNN
F 1 "Trigger Level" H 9850 8950 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 9850 8800 60  0001 C CNN
F 3 "~" H 9850 8800 60  0000 C CNN
	1    9850 8800
	0    1    1    0   
$EndComp
$Comp
L GND #PWR814
U 1 1 5725D3AE
P 9850 9300
F 0 "#PWR814" H 9850 9300 30  0001 C CNN
F 1 "GND" H 9850 9230 30  0001 C CNN
F 2 "" H 9850 9300 60  0000 C CNN
F 3 "" H 9850 9300 60  0000 C CNN
	1    9850 9300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 9300 9850 9050
Wire Wire Line
	9850 8300 9850 8550
$Comp
L +5V #PWR813
U 1 1 5725D3B6
P 9850 8300
F 0 "#PWR813" H 9850 8150 50  0001 C CNN
F 1 "+5V" H 9868 8474 50  0000 C CNN
F 2 "" H 9850 8300 50  0000 C CNN
F 3 "" H 9850 8300 50  0000 C CNN
	1    9850 8300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 8800 9500 8800
$Comp
L JUMPER3 JP804
U 1 1 5725DD79
P 4750 8850
F 0 "JP804" H 4800 8750 50  0000 L CNN
F 1 "Trigger Level" H 4750 9000 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 4750 8850 60  0001 C CNN
F 3 "~" H 4750 8850 60  0000 C CNN
	1    4750 8850
	0    1    1    0   
$EndComp
$Comp
L GND #PWR808
U 1 1 5725DD7F
P 4750 9350
F 0 "#PWR808" H 4750 9350 30  0001 C CNN
F 1 "GND" H 4750 9280 30  0001 C CNN
F 2 "" H 4750 9350 60  0000 C CNN
F 3 "" H 4750 9350 60  0000 C CNN
	1    4750 9350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 9350 4750 9100
Wire Wire Line
	4750 8350 4750 8600
$Comp
L +5V #PWR807
U 1 1 5725DD87
P 4750 8350
F 0 "#PWR807" H 4750 8200 50  0001 C CNN
F 1 "+5V" H 4768 8524 50  0000 C CNN
F 2 "" H 4750 8350 50  0000 C CNN
F 3 "" H 4750 8350 50  0000 C CNN
	1    4750 8350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 8850 4400 8850
Wire Wire Line
	9550 2850 9550 4500
Wire Wire Line
	4400 2850 4400 4300
Wire Wire Line
	9500 8800 9500 4900
Wire Wire Line
	4400 8850 4400 4700
Text Notes 13700 8550 0    50   Italic 0
12V: 1327 (red)\ngnd: 1327G6 (black)
$EndSCHEMATC
