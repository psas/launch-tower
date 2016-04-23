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
LIBS:NDS9407
LIBS:PI2127
LIBS:PMV45EN
LIBS:power_nodes
LIBS:PTN78020n
LIBS:relay_1c
LIBS:SNx52x0
LIBS:SUM110P08-11
LIBS:switches
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
LIBS:N_MOS_SOT_26
LIBS:Launch_Tower_Computer_III-cache
EELAYER 25 0
EELAYER END
$Descr B 17000 11000
encoding utf-8
Sheet 8 8
Title "LTC3 External Device Triggers"
Date "2016-04-16"
Rev "A"
Comp "Portland State Aerospace Society <http://psas.pdx.edu/>"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L R R?
U 1 1 5721FE0D
P 1600 3700
F 0 "R?" V 1680 3700 40  0000 C CNN
F 1 "10k" V 1607 3701 40  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 1530 3700 30  0001 C CNN
F 3 "~" H 1600 3700 30  0000 C CNN
	1    1600 3700
	1    0    0    -1  
$EndComp
Text HLabel 1450 3400 0    60   Input ~ 0
EXT_TRG_EN_1
$Comp
L GND #PWR?
U 1 1 5721FE15
P 1600 4050
F 0 "#PWR?" H 1600 4050 30  0001 C CNN
F 1 "GND" H 1600 3980 30  0001 C CNN
F 2 "" H 1600 4050 60  0000 C CNN
F 3 "" H 1600 4050 60  0000 C CNN
	1    1600 4050
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5721FE2F
P 2400 2500
F 0 "R?" V 2480 2500 40  0000 C CNN
F 1 "270" V 2407 2501 40  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 2330 2500 30  0001 C CNN
F 3 "~" H 2400 2500 30  0000 C CNN
	1    2400 2500
	1    0    0    -1  
$EndComp
$Comp
L PMV45EN Q?
U 1 1 5721FE36
P 1950 3350
F 0 "Q?" H 1700 3550 50  0000 L CNN
F 1 "PMV45EN" H 1550 3450 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 2150 3275 50  0001 L CIN
F 3 "" H 1950 3350 50  0000 L CNN
	1    1950 3350
	1    0    0    -1  
$EndComp
$Comp
L TLP3542 IC?
U 1 1 5721FE3D
P 2900 2950
F 0 "IC?" H 2690 3180 40  0000 C CNN
F 1 "TLP3542" H 3040 2810 40  0000 C CNN
F 2 "Housings_DIP:DIP-6_W7.62mm" H 2690 2820 30  0001 C CIN
F 3 "" H 2900 3000 60  0000 C CNN
	1    2900 2950
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 5721FE44
P 2400 2200
F 0 "#PWR?" H 2400 2050 50  0001 C CNN
F 1 "+5V" H 2400 2340 50  0000 C CNN
F 2 "" H 2400 2200 60  0000 C CNN
F 3 "" H 2400 2200 60  0000 C CNN
	1    2400 2200
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5721FE4A
P 6800 3700
F 0 "R?" V 6880 3700 40  0000 C CNN
F 1 "10k" V 6807 3701 40  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 6730 3700 30  0001 C CNN
F 3 "~" H 6800 3700 30  0000 C CNN
	1    6800 3700
	1    0    0    -1  
$EndComp
Text HLabel 6650 3400 0    60   Input ~ 0
EXT_TRG_EN_2
$Comp
L GND #PWR?
U 1 1 5721FE52
P 6800 4050
F 0 "#PWR?" H 6800 4050 30  0001 C CNN
F 1 "GND" H 6800 3980 30  0001 C CNN
F 2 "" H 6800 4050 60  0000 C CNN
F 3 "" H 6800 4050 60  0000 C CNN
	1    6800 4050
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5721FE6C
P 7600 2500
F 0 "R?" V 7680 2500 40  0000 C CNN
F 1 "270" V 7607 2501 40  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 7530 2500 30  0001 C CNN
F 3 "~" H 7600 2500 30  0000 C CNN
	1    7600 2500
	1    0    0    -1  
$EndComp
$Comp
L PMV45EN Q?
U 1 1 5721FE73
P 7150 3350
F 0 "Q?" H 6900 3550 50  0000 L CNN
F 1 "PMV45EN" H 6750 3450 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 7350 3275 50  0001 L CIN
F 3 "" H 7150 3350 50  0000 L CNN
	1    7150 3350
	1    0    0    -1  
$EndComp
$Comp
L TLP3542 IC?
U 1 1 5721FE7A
P 8100 2950
F 0 "IC?" H 7890 3180 40  0000 C CNN
F 1 "TLP3542" H 8240 2810 40  0000 C CNN
F 2 "Housings_DIP:DIP-6_W7.62mm" H 7890 2820 30  0001 C CIN
F 3 "" H 8100 3000 60  0000 C CNN
	1    8100 2950
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 5721FE81
P 7600 2200
F 0 "#PWR?" H 7600 2050 50  0001 C CNN
F 1 "+5V" H 7600 2340 50  0000 C CNN
F 2 "" H 7600 2200 60  0000 C CNN
F 3 "" H 7600 2200 60  0000 C CNN
	1    7600 2200
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5721FE8D
P 1600 9700
F 0 "R?" V 1680 9700 40  0000 C CNN
F 1 "10k" V 1607 9701 40  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 1530 9700 30  0001 C CNN
F 3 "~" H 1600 9700 30  0000 C CNN
	1    1600 9700
	1    0    0    -1  
$EndComp
Text HLabel 1450 9400 0    60   Input ~ 0
EXT_TRG_EN_3
$Comp
L GND #PWR?
U 1 1 5721FE95
P 1600 10050
F 0 "#PWR?" H 1600 10050 30  0001 C CNN
F 1 "GND" H 1600 9980 30  0001 C CNN
F 2 "" H 1600 10050 60  0000 C CNN
F 3 "" H 1600 10050 60  0000 C CNN
	1    1600 10050
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5721FEA9
P 2400 8500
F 0 "R?" V 2480 8500 40  0000 C CNN
F 1 "270" V 2407 8501 40  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 2330 8500 30  0001 C CNN
F 3 "~" H 2400 8500 30  0000 C CNN
	1    2400 8500
	1    0    0    -1  
$EndComp
$Comp
L PMV45EN Q?
U 1 1 5721FEB0
P 1950 9350
F 0 "Q?" H 1700 9550 50  0000 L CNN
F 1 "PMV45EN" H 1550 9450 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 2150 9275 50  0001 L CIN
F 3 "" H 1950 9350 50  0000 L CNN
	1    1950 9350
	1    0    0    -1  
$EndComp
$Comp
L TLP3542 IC?
U 1 1 5721FEB7
P 2900 8950
F 0 "IC?" H 2690 9180 40  0000 C CNN
F 1 "TLP3542" H 3040 8810 40  0000 C CNN
F 2 "Housings_DIP:DIP-6_W7.62mm" H 2690 8820 30  0001 C CIN
F 3 "" H 2900 9000 60  0000 C CNN
	1    2900 8950
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 5721FEBE
P 2400 8200
F 0 "#PWR?" H 2400 8050 50  0001 C CNN
F 1 "+5V" H 2400 8340 50  0000 C CNN
F 2 "" H 2400 8200 60  0000 C CNN
F 3 "" H 2400 8200 60  0000 C CNN
	1    2400 8200
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5721FEC4
P 6800 9700
F 0 "R?" V 6880 9700 40  0000 C CNN
F 1 "10k" V 6807 9701 40  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 6730 9700 30  0001 C CNN
F 3 "~" H 6800 9700 30  0000 C CNN
	1    6800 9700
	1    0    0    -1  
$EndComp
Text HLabel 6650 9400 0    60   Input ~ 0
EXT_TRG_EN_4
$Comp
L GND #PWR?
U 1 1 5721FECC
P 6800 10050
F 0 "#PWR?" H 6800 10050 30  0001 C CNN
F 1 "GND" H 6800 9980 30  0001 C CNN
F 2 "" H 6800 10050 60  0000 C CNN
F 3 "" H 6800 10050 60  0000 C CNN
	1    6800 10050
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5721FEE6
P 7600 8500
F 0 "R?" V 7680 8500 40  0000 C CNN
F 1 "270" V 7607 8501 40  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 7530 8500 30  0001 C CNN
F 3 "~" H 7600 8500 30  0000 C CNN
	1    7600 8500
	1    0    0    -1  
$EndComp
$Comp
L PMV45EN Q?
U 1 1 5721FEED
P 7150 9350
F 0 "Q?" H 6900 9550 50  0000 L CNN
F 1 "PMV45EN" H 6750 9450 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 7350 9275 50  0001 L CIN
F 3 "" H 7150 9350 50  0000 L CNN
	1    7150 9350
	1    0    0    -1  
$EndComp
$Comp
L TLP3542 IC?
U 1 1 5721FEF4
P 8100 8950
F 0 "IC?" H 7890 9180 40  0000 C CNN
F 1 "TLP3542" H 8240 8810 40  0000 C CNN
F 2 "Housings_DIP:DIP-6_W7.62mm" H 7890 8820 30  0001 C CIN
F 3 "" H 8100 9000 60  0000 C CNN
	1    8100 8950
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 5721FEFB
P 7600 8200
F 0 "#PWR?" H 7600 8050 50  0001 C CNN
F 1 "+5V" H 7600 8340 50  0000 C CNN
F 2 "" H 7600 8200 60  0000 C CNN
F 3 "" H 7600 8200 60  0000 C CNN
	1    7600 8200
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X08 P?
U 1 1 5721FF02
P 12900 4600
F 0 "P?" H 12900 5100 50  0000 L CNN
F 1 "43045-0800" V 13000 4200 50  0000 L CNN
F 2 "Connectors_Molex:Molex_Microfit3_Header_02x04_Angled_43045-080x" H 12900 4600 50  0001 C CNN
F 3 "" H 12900 4600 50  0000 C CNN
F 4 "MicroFit3 2x4 header" V 13100 4200 50  0000 L CNN "Note"
	1    12900 4600
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X08 P?
U 1 1 5721FF0A
P 13650 4600
F 0 "P?" H 13650 5100 50  0000 L CNN
F 1 "43025-0800" V 13750 4200 50  0000 L CNN
F 2 "Oddities:Dummy_Empty" H 13650 4600 50  0001 C CNN
F 3 "" H 13650 4600 50  0000 C CNN
F 4 "MicroFit3 2x4 recept." V 13850 4600 50  0000 C CNN "Note"
	1    13650 4600
	-1   0    0    -1  
$EndComp
$Comp
L BREAKER_1P M?
U 1 1 5721FF11
P 15400 5250
F 0 "M?" H 15400 5375 50  0000 C CNN
F 1 "W28-XQ1A-0.25" H 15400 5175 50  0000 C CNN
F 2 "Oddities:Dummy_Empty" H 15400 5250 50  0001 C CNN
F 3 "" H 15400 5250 50  0000 C CNN
	1    15400 5250
	0    -1   1    0   
$EndComp
$Comp
L BREAKER_1P M?
U 1 1 5721FF18
P 15800 5250
F 0 "M?" H 15800 5375 50  0000 C CNN
F 1 "W28-XQ1A-0.25" H 15800 5175 50  0000 C CNN
F 2 "Oddities:Dummy_Empty" H 15800 5250 50  0001 C CNN
F 3 "" H 15800 5250 50  0000 C CNN
	1    15800 5250
	0    -1   1    0   
$EndComp
$Comp
L BREAKER_1P M?
U 1 1 5721FF1F
P 14600 5250
F 0 "M?" H 14600 5375 50  0000 C CNN
F 1 "W28-XQ1A-0.25" H 14600 5175 50  0000 C CNN
F 2 "Oddities:Dummy_Empty" H 14600 5250 50  0001 C CNN
F 3 "" H 14600 5250 50  0000 C CNN
	1    14600 5250
	0    -1   1    0   
$EndComp
$Comp
L BREAKER_1P M?
U 1 1 5721FF26
P 15000 5250
F 0 "M?" H 15000 5375 50  0000 C CNN
F 1 "W28-XQ1A-0.25" H 15000 5175 50  0000 C CNN
F 2 "Oddities:Dummy_Empty" H 15000 5250 50  0001 C CNN
F 3 "" H 15000 5250 50  0000 C CNN
	1    15000 5250
	0    -1   1    0   
$EndComp
Text Notes 13350 6250 0    80   ~ 0
Circuit Breakers, 250mA x 4, Front Panel
Text Notes 12650 3350 0    80   ~ 0
Manual Override Switches, Front Panel
$Comp
L GND #PWR?
U 1 1 5721FF2F
P 11750 2150
F 0 "#PWR?" H 11750 1900 50  0001 C CNN
F 1 "GND" H 11758 1976 50  0001 C CNN
F 2 "" H 11750 2150 50  0000 C CNN
F 3 "" H 11750 2150 50  0000 C CNN
	1    11750 2150
	1    0    0    -1  
$EndComp
$Comp
L SP3T SW?
U 1 1 5721FF35
P 13700 2250
F 0 "SW?" V 13654 2098 50  0000 R CNN
F 1 "SP3T" V 13746 2098 50  0000 R CNN
F 2 "Oddities:Dummy_Empty" H 13075 2425 50  0001 C CNN
F 3 "" H 13075 2425 50  0000 C CNN
	1    13700 2250
	0    -1   1    0   
$EndComp
$Comp
L CONN_01X10 P?
U 1 1 5721FF3D
P 12200 1550
F 0 "P?" H 12200 2100 50  0000 L CNN
F 1 "43045-1000" V 12300 1050 50  0000 L CNN
F 2 "Connectors_Molex:Molex_Microfit3_Header_02x05_Angled_43045-100x" H 12200 1550 50  0001 C CNN
F 3 "" H 12200 1550 50  0000 C CNN
F 4 "MicroFit3 2x5 header" V 12400 1050 50  0000 L CNN "Note"
	1    12200 1550
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X10 P?
U 1 1 5721FF45
P 12950 1550
F 0 "P?" H 12950 2100 50  0000 L CNN
F 1 "43025-1000" V 13050 1050 50  0000 L CNN
F 2 "Oddities:Dummy_Empty" H 12950 1550 50  0001 C CNN
F 3 "" H 12950 1550 50  0000 C CNN
F 4 "MicroFit3 2x5 recept." V 13150 1050 50  0000 L CNN "Note"
	1    12950 1550
	-1   0    0    -1  
$EndComp
$Comp
L SP3T SW?
U 1 1 5721FF4C
P 14350 2250
F 0 "SW?" V 14396 2098 50  0000 R CNN
F 1 "SP3T" V 14304 2098 50  0000 R CNN
F 2 "Oddities:Dummy_Empty" H 13725 2425 50  0001 C CNN
F 3 "" H 13725 2425 50  0000 C CNN
	1    14350 2250
	0    -1   1    0   
$EndComp
$Comp
L SP3T SW?
U 1 1 5721FF53
P 15000 2250
F 0 "SW?" V 15046 2098 50  0000 R CNN
F 1 "SP3T" V 14954 2098 50  0000 R CNN
F 2 "Oddities:Dummy_Empty" H 14375 2425 50  0001 C CNN
F 3 "" H 14375 2425 50  0000 C CNN
	1    15000 2250
	0    -1   1    0   
$EndComp
$Comp
L SP3T SW?
U 1 1 5721FF5A
P 15650 2250
F 0 "SW?" V 15696 2098 50  0000 R CNN
F 1 "SP3T" V 15604 2098 50  0000 R CNN
F 2 "Oddities:Dummy_Empty" H 15025 2425 50  0001 C CNN
F 3 "" H 15025 2425 50  0000 C CNN
	1    15650 2250
	0    -1   1    0   
$EndComp
Text Notes 12650 3550 0    60   Italic 0
Toggle each optoisolator's LED between the FET, disconnected,\nor ground.  Use SP3T or SPDT w/ center-NC feature.
Text Label 11850 1300 2    50   ~ 0
EXT_TRG_2_FET_D
Text Label 11850 1400 2    50   ~ 0
EXT_TRG_2_LED_CATH
Text Label 11850 1100 2    50   ~ 0
EXT_TRG_1_FET_D
Text Label 11850 1200 2    50   ~ 0
EXT_TRG_1_LED_CATH
Text Label 11850 1500 2    50   ~ 0
EXT_TRG_3_FET_D
Text Label 11850 1600 2    50   ~ 0
EXT_TRG_3_LED_CATH
Text Label 11850 1700 2    50   ~ 0
EXT_TRG_4_FET_D
Text Label 11850 1800 2    50   ~ 0
EXT_TRG_4_LED_CATH
Text Label 12300 4350 2    50   ~ 0
EXT_TRG_1_OPTO_RELAY
Text Label 12300 4550 2    50   ~ 0
EXT_TRG_2_OPTO_RELAY
Text Label 12300 4750 2    50   ~ 0
EXT_TRG_3_OPTO_RELAY
Text Label 12300 4950 2    50   ~ 0
EXT_TRG_4_OPTO_RELAY
$Comp
L CONN_01X08 P?
U 1 1 5721FF6F
P 13150 7300
F 0 "P?" H 13150 7800 50  0000 L CNN
F 1 "43045-0800" V 13250 6900 50  0000 L CNN
F 2 "Connectors_Molex:Molex_Microfit3_Header_02x04_Angled_43045-080x" H 13150 7300 50  0001 C CNN
F 3 "" H 13150 7300 50  0000 C CNN
F 4 "MicroFit3 2x4 header" V 13350 6900 50  0000 L CNN "Note"
	1    13150 7300
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X08 P?
U 1 1 5721FF77
P 13900 7300
F 0 "P?" H 13900 7800 50  0000 L CNN
F 1 "43025-0800" V 14000 6900 50  0000 L CNN
F 2 "Oddities:Dummy_Empty" H 13900 7300 50  0001 C CNN
F 3 "" H 13900 7300 50  0000 C CNN
F 4 "MicroFit3 2x4 recept." V 14100 7300 50  0000 C CNN "Note"
	1    13900 7300
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5721FF7E
P 12800 7800
F 0 "#PWR?" H 12800 7550 50  0001 C CNN
F 1 "GND" H 12808 7627 50  0000 C CNN
F 2 "" H 12800 7800 50  0000 C CNN
F 3 "" H 12800 7800 50  0000 C CNN
	1    12800 7800
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P?
U 1 1 5721FF8A
P 14600 8100
F 0 "P?" V 14700 8050 50  0000 L CNN
F 1 "1327G6" H 14950 8100 50  0000 C CNN
F 2 "Oddities:Dummy_Empty" H 14600 8100 50  0001 C CNN
F 3 "" H 14600 8100 50  0000 C CNN
	1    14600 8100
	0    1    1    0   
$EndComp
$Comp
L CONN_01X01 P?
U 1 1 5721FF91
P 14750 8100
F 0 "P?" V 14850 8050 50  0000 L CNN
F 1 "1327" H 15050 8100 50  0000 C CNN
F 2 "Oddities:Dummy_Empty" H 14750 8100 50  0001 C CNN
F 3 "" H 14750 8100 50  0000 C CNN
	1    14750 8100
	0    1    1    0   
$EndComp
Text Notes 13600 8900 0    80   ~ 0
Trigger Outlets, Front Panel
Text Notes 13600 9000 0    60   Italic 0
Anderson PowerPole PP15-45
$Comp
L CONN_01X01 P?
U 1 1 5721FF9A
P 15000 8100
F 0 "P?" V 15100 8050 50  0000 L CNN
F 1 "1327G6" H 15350 8100 50  0000 C CNN
F 2 "Oddities:Dummy_Empty" H 15000 8100 50  0001 C CNN
F 3 "" H 15000 8100 50  0000 C CNN
	1    15000 8100
	0    1    1    0   
$EndComp
$Comp
L CONN_01X01 P?
U 1 1 5721FFA1
P 15150 8100
F 0 "P?" V 15250 8050 50  0000 L CNN
F 1 "1327" H 15450 8100 50  0000 C CNN
F 2 "Oddities:Dummy_Empty" H 15150 8100 50  0001 C CNN
F 3 "" H 15150 8100 50  0000 C CNN
	1    15150 8100
	0    1    1    0   
$EndComp
$Comp
L CONN_01X01 P?
U 1 1 5721FFA8
P 15400 8100
F 0 "P?" V 15500 8050 50  0000 L CNN
F 1 "1327G6" H 15750 8100 50  0000 C CNN
F 2 "Oddities:Dummy_Empty" H 15400 8100 50  0001 C CNN
F 3 "" H 15400 8100 50  0000 C CNN
	1    15400 8100
	0    1    1    0   
$EndComp
$Comp
L CONN_01X01 P?
U 1 1 5721FFAF
P 15550 8100
F 0 "P?" V 15650 8050 50  0000 L CNN
F 1 "1327" H 15850 8100 50  0000 C CNN
F 2 "Oddities:Dummy_Empty" H 15550 8100 50  0001 C CNN
F 3 "" H 15550 8100 50  0000 C CNN
	1    15550 8100
	0    1    1    0   
$EndComp
$Comp
L CONN_01X01 P?
U 1 1 5721FFB6
P 15800 8100
F 0 "P?" V 15900 8050 50  0000 L CNN
F 1 "1327G6" H 16150 8100 50  0000 C CNN
F 2 "Oddities:Dummy_Empty" H 15800 8100 50  0001 C CNN
F 3 "" H 15800 8100 50  0000 C CNN
	1    15800 8100
	0    1    1    0   
$EndComp
$Comp
L CONN_01X01 P?
U 1 1 5721FFBD
P 15950 8100
F 0 "P?" V 16050 8050 50  0000 L CNN
F 1 "1327" H 16250 8100 50  0000 C CNN
F 2 "Oddities:Dummy_Empty" H 15950 8100 50  0001 C CNN
F 3 "" H 15950 8100 50  0000 C CNN
	1    15950 8100
	0    1    1    0   
$EndComp
Wire Wire Line
	3250 2800 4200 2800
Connection ~ 1600 3950
Wire Wire Line
	1600 3950 2050 3950
Wire Wire Line
	2050 3950 2050 3550
Wire Wire Line
	1600 3850 1600 4050
Wire Wire Line
	3250 3000 4100 3000
Wire Wire Line
	2200 3000 2550 3000
Wire Wire Line
	2400 2800 2550 2800
Wire Wire Line
	2400 2650 2400 2800
Wire Wire Line
	1600 3550 1600 3400
Wire Wire Line
	2400 2200 2400 2350
Wire Wire Line
	1450 3400 1750 3400
Connection ~ 1600 3400
Wire Wire Line
	8450 2800 8700 2800
Connection ~ 6800 3950
Wire Wire Line
	6800 3950 7250 3950
Wire Wire Line
	7250 3950 7250 3550
Wire Wire Line
	6800 3850 6800 4050
Wire Wire Line
	8450 3000 9300 3000
Wire Wire Line
	7400 3000 7750 3000
Wire Wire Line
	7600 2800 7750 2800
Wire Wire Line
	7600 2650 7600 2800
Wire Wire Line
	6800 3550 6800 3400
Wire Wire Line
	7600 2200 7600 2350
Wire Wire Line
	6650 3400 6950 3400
Connection ~ 6800 3400
Wire Wire Line
	4200 8800 3250 8800
Connection ~ 1600 9950
Wire Wire Line
	1600 9950 2050 9950
Wire Wire Line
	2050 9950 2050 9550
Wire Wire Line
	1600 9850 1600 10050
Wire Wire Line
	2050 7600 2050 9150
Wire Wire Line
	3250 9000 4100 9000
Wire Wire Line
	2400 8800 2550 8800
Wire Wire Line
	2400 8650 2400 8800
Wire Wire Line
	1600 9550 1600 9400
Wire Wire Line
	2400 8200 2400 8350
Wire Wire Line
	1450 9400 1750 9400
Connection ~ 1600 9400
Wire Wire Line
	8800 8800 8450 8800
Connection ~ 6800 9950
Wire Wire Line
	6800 9950 7250 9950
Wire Wire Line
	7250 9950 7250 9550
Wire Wire Line
	6800 9850 6800 10050
Wire Wire Line
	7250 7700 7250 9150
Wire Wire Line
	8450 9000 9300 9000
Wire Wire Line
	7600 8800 7750 8800
Wire Wire Line
	7600 8650 7600 8800
Wire Wire Line
	6800 9550 6800 9400
Wire Wire Line
	7600 8200 7600 8350
Wire Wire Line
	6650 9400 6950 9400
Connection ~ 6800 9400
Wire Wire Line
	4350 4250 12700 4250
Wire Wire Line
	9500 4450 12700 4450
Wire Wire Line
	4350 4650 12700 4650
Wire Wire Line
	9450 4850 12700 4850
Wire Wire Line
	13850 4250 14600 4250
Wire Wire Line
	14600 4250 14600 5000
Wire Wire Line
	13850 4450 15000 4450
Wire Wire Line
	15000 4450 15000 5000
Wire Wire Line
	13850 4650 15400 4650
Wire Wire Line
	15400 4650 15400 5000
Wire Wire Line
	13850 4850 15800 4850
Wire Wire Line
	15800 4850 15800 5000
Wire Wire Line
	13850 4350 14400 4350
Wire Wire Line
	14400 4350 14400 5650
Wire Wire Line
	14400 5650 14600 5650
Wire Wire Line
	14600 5650 14600 5500
Wire Wire Line
	13850 4550 14300 4550
Wire Wire Line
	14300 4550 14300 5750
Wire Wire Line
	14300 5750 15000 5750
Wire Wire Line
	15000 5750 15000 5500
Wire Wire Line
	13850 4750 14200 4750
Wire Wire Line
	14200 4750 14200 5850
Wire Wire Line
	14200 5850 15400 5850
Wire Wire Line
	15400 5850 15400 5500
Wire Wire Line
	13850 4950 14100 4950
Wire Wire Line
	14100 4950 14100 5950
Wire Wire Line
	14100 5950 15800 5950
Wire Wire Line
	15800 5950 15800 5500
Wire Wire Line
	8800 4950 12700 4950
Wire Wire Line
	8700 4750 12700 4750
Wire Notes Line
	13350 3900 16150 3900
Wire Notes Line
	16150 3900 16150 6100
Wire Notes Line
	16150 6100 13350 6100
Wire Notes Line
	13350 6100 13350 3900
Wire Notes Line
	12650 850  16150 850 
Wire Notes Line
	16150 850  16150 3200
Wire Notes Line
	16150 3200 12650 3200
Wire Notes Line
	12650 3200 12650 850 
Wire Wire Line
	11750 1900 11750 2150
Wire Wire Line
	11750 2000 12000 2000
Connection ~ 11750 2000
Wire Wire Line
	11750 1900 12000 1900
Wire Wire Line
	13700 1950 13700 1100
Wire Wire Line
	13700 1100 13150 1100
Wire Wire Line
	14350 1950 14350 1300
Wire Wire Line
	14350 1300 13150 1300
Wire Wire Line
	15000 1950 15000 1500
Wire Wire Line
	15000 1500 13150 1500
Wire Wire Line
	15650 1950 15650 1700
Wire Wire Line
	15650 1700 13150 1700
Wire Wire Line
	13600 2550 13600 2700
Wire Wire Line
	13600 2700 13450 2700
Wire Wire Line
	13450 2700 13450 1200
Wire Wire Line
	13450 1200 13150 1200
Wire Wire Line
	14100 1400 14100 2700
Wire Wire Line
	14100 1400 13150 1400
Wire Wire Line
	14100 2700 14250 2700
Wire Wire Line
	14250 2700 14250 2550
Wire Wire Line
	14900 2550 14900 2700
Wire Wire Line
	14900 2700 14750 2700
Wire Wire Line
	14750 2700 14750 1600
Wire Wire Line
	14750 1600 13150 1600
Wire Wire Line
	15550 2550 15550 2700
Wire Wire Line
	15550 2700 15400 2700
Wire Wire Line
	15400 2700 15400 1800
Wire Wire Line
	15400 1800 13150 1800
Wire Wire Line
	13800 2550 13800 2850
Wire Wire Line
	13300 2850 15750 2850
Wire Wire Line
	13300 1900 13300 2850
Wire Wire Line
	13300 2000 13150 2000
Wire Wire Line
	13300 1900 13150 1900
Connection ~ 13300 2000
Wire Wire Line
	14450 2850 14450 2550
Connection ~ 13800 2850
Wire Wire Line
	15100 2850 15100 2550
Connection ~ 14450 2850
Wire Wire Line
	15750 2850 15750 2550
Connection ~ 15100 2850
Wire Wire Line
	7400 1400 7400 3000
Wire Wire Line
	7250 1300 7250 3150
Wire Wire Line
	2200 1200 2200 3000
Wire Wire Line
	2050 3150 2050 1100
Wire Wire Line
	2050 1100 12000 1100
Wire Wire Line
	12000 1200 2200 1200
Wire Wire Line
	7400 1400 12000 1400
Wire Wire Line
	12000 1300 7250 1300
Wire Wire Line
	2550 9000 2200 9000
Wire Wire Line
	2200 9000 2200 7700
Wire Wire Line
	7750 9000 7400 9000
Wire Wire Line
	7400 9000 7400 7600
Wire Wire Line
	5150 1500 12000 1500
Wire Wire Line
	5250 1600 12000 1600
Wire Wire Line
	5450 1800 12000 1800
Wire Wire Line
	5350 1700 12000 1700
Wire Wire Line
	8700 4550 12700 4550
Wire Wire Line
	4200 4350 12700 4350
Wire Wire Line
	14100 6950 15950 6950
Wire Wire Line
	14100 7150 15550 7150
Wire Wire Line
	14100 7350 15150 7350
Wire Wire Line
	14100 7550 14750 7550
Wire Wire Line
	14100 7050 15800 7050
Wire Wire Line
	14100 7250 15400 7250
Wire Wire Line
	14100 7450 15000 7450
Wire Wire Line
	14100 7650 14600 7650
Wire Notes Line
	13600 6600 16150 6600
Wire Notes Line
	13600 8750 13600 6600
Wire Notes Line
	16150 6600 16150 8750
Wire Notes Line
	16150 8750 13600 8750
Wire Wire Line
	12800 7050 12800 7800
Wire Wire Line
	12800 7650 12950 7650
Wire Wire Line
	12800 7450 12950 7450
Connection ~ 12800 7650
Wire Wire Line
	12800 7250 12950 7250
Connection ~ 12800 7450
Wire Wire Line
	12800 7050 12950 7050
Connection ~ 12800 7250
Wire Wire Line
	2050 7600 5150 7600
Wire Wire Line
	5150 7600 5150 1500
Wire Wire Line
	2200 7700 5250 7700
Wire Wire Line
	5250 7700 5250 1600
Wire Wire Line
	7250 7700 5350 7700
Wire Wire Line
	5350 7700 5350 1700
Wire Wire Line
	7400 7600 5450 7600
Wire Wire Line
	5450 7600 5450 1800
Wire Wire Line
	4100 6950 12950 6950
Wire Wire Line
	9300 7150 12950 7150
Wire Wire Line
	4100 7350 12950 7350
Wire Wire Line
	9300 7550 12950 7550
Wire Wire Line
	14600 7650 14600 7900
Wire Wire Line
	14750 7550 14750 7900
Wire Wire Line
	15000 7450 15000 7900
Wire Wire Line
	15150 7350 15150 7900
Wire Wire Line
	15400 7250 15400 7900
Wire Wire Line
	15550 7150 15550 7900
Wire Wire Line
	15950 6950 15950 7900
Wire Wire Line
	15800 7050 15800 7900
Wire Wire Line
	8700 2800 8700 4550
Wire Wire Line
	9300 3000 9300 7150
Wire Wire Line
	4100 3000 4100 6950
Wire Wire Line
	4200 2800 4200 4350
Wire Wire Line
	4100 9000 4100 7350
Wire Wire Line
	8700 4750 8700 7250
Wire Wire Line
	8700 7250 4200 7250
Wire Wire Line
	4200 7250 4200 8800
Wire Wire Line
	8800 4950 8800 8800
Wire Wire Line
	9300 9000 9300 7550
$Comp
L JUMPER3 JP?
U 1 1 57255E04
P 4700 2800
F 0 "JP?" H 4750 2700 40  0000 L CNN
F 1 "Trigger Level" H 4700 2900 40  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 4700 2800 60  0001 C CNN
F 3 "~" H 4700 2800 60  0000 C CNN
	1    4700 2800
	0    1    1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 57255E0A
P 4700 3300
F 0 "#PWR?" H 4700 3300 30  0001 C CNN
F 1 "GND" H 4700 3230 30  0001 C CNN
F 2 "" H 4700 3300 60  0000 C CNN
F 3 "" H 4700 3300 60  0000 C CNN
	1    4700 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 3300 4700 3050
Wire Wire Line
	4700 2300 4700 2550
$Comp
L +5V #PWR?
U 1 1 57255E12
P 4700 2300
F 0 "#PWR?" H 4700 2150 50  0001 C CNN
F 1 "+5V" H 4718 2474 50  0000 C CNN
F 2 "" H 4700 2300 50  0000 C CNN
F 3 "" H 4700 2300 50  0000 C CNN
	1    4700 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 2800 4350 2800
$Comp
L JUMPER3 JP?
U 1 1 57258DF1
P 9850 2800
F 0 "JP?" H 9900 2700 40  0000 L CNN
F 1 "Trigger Level" H 9850 2900 40  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 9850 2800 60  0001 C CNN
F 3 "~" H 9850 2800 60  0000 C CNN
	1    9850 2800
	0    1    1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 57258DF7
P 9850 3300
F 0 "#PWR?" H 9850 3300 30  0001 C CNN
F 1 "GND" H 9850 3230 30  0001 C CNN
F 2 "" H 9850 3300 60  0000 C CNN
F 3 "" H 9850 3300 60  0000 C CNN
	1    9850 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 3300 9850 3050
Wire Wire Line
	9850 2300 9850 2550
$Comp
L +5V #PWR?
U 1 1 57258DFF
P 9850 2300
F 0 "#PWR?" H 9850 2150 50  0001 C CNN
F 1 "+5V" H 9868 2474 50  0000 C CNN
F 2 "" H 9850 2300 50  0000 C CNN
F 3 "" H 9850 2300 50  0000 C CNN
	1    9850 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 2800 9500 2800
$Comp
L JUMPER3 JP?
U 1 1 5725D3A8
P 9800 8750
F 0 "JP?" H 9850 8650 40  0000 L CNN
F 1 "Trigger Level" H 9800 8850 40  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 9800 8750 60  0001 C CNN
F 3 "~" H 9800 8750 60  0000 C CNN
	1    9800 8750
	0    1    1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 5725D3AE
P 9800 9250
F 0 "#PWR?" H 9800 9250 30  0001 C CNN
F 1 "GND" H 9800 9180 30  0001 C CNN
F 2 "" H 9800 9250 60  0000 C CNN
F 3 "" H 9800 9250 60  0000 C CNN
	1    9800 9250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 9250 9800 9000
Wire Wire Line
	9800 8250 9800 8500
$Comp
L +5V #PWR?
U 1 1 5725D3B6
P 9800 8250
F 0 "#PWR?" H 9800 8100 50  0001 C CNN
F 1 "+5V" H 9818 8424 50  0000 C CNN
F 2 "" H 9800 8250 50  0000 C CNN
F 3 "" H 9800 8250 50  0000 C CNN
	1    9800 8250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 8750 9450 8750
$Comp
L JUMPER3 JP?
U 1 1 5725DD79
P 4700 8800
F 0 "JP?" H 4750 8700 40  0000 L CNN
F 1 "Trigger Level" H 4700 8900 40  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 4700 8800 60  0001 C CNN
F 3 "~" H 4700 8800 60  0000 C CNN
	1    4700 8800
	0    1    1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 5725DD7F
P 4700 9300
F 0 "#PWR?" H 4700 9300 30  0001 C CNN
F 1 "GND" H 4700 9230 30  0001 C CNN
F 2 "" H 4700 9300 60  0000 C CNN
F 3 "" H 4700 9300 60  0000 C CNN
	1    4700 9300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 9300 4700 9050
Wire Wire Line
	4700 8300 4700 8550
$Comp
L +5V #PWR?
U 1 1 5725DD87
P 4700 8300
F 0 "#PWR?" H 4700 8150 50  0001 C CNN
F 1 "+5V" H 4718 8474 50  0000 C CNN
F 2 "" H 4700 8300 50  0000 C CNN
F 3 "" H 4700 8300 50  0000 C CNN
	1    4700 8300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 8800 4350 8800
Wire Wire Line
	9500 2800 9500 4450
Wire Wire Line
	4350 2800 4350 4250
Wire Wire Line
	9450 8750 9450 4850
Wire Wire Line
	4350 8800 4350 4650
$EndSCHEMATC
