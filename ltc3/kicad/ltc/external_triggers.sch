EESchema Schematic File Version 2
LIBS:4n35
LIBS:741g08
LIBS:battery_single_cell
LIBS:BeagleBone_Black
LIBS:bq77PL900
LIBS:breakers
LIBS:CD74HC14
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
Sheet 6 6
Title "LTC3 External Device Triggers"
Date "2016-09-04"
Rev "A"
Comp "Portland State Aerospace Society <http://psas.pdx.edu/>"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L R R603
U 1 1 5721FE0D
P 1650 3000
F 0 "R603" V 1550 3000 50  0000 C CNN
F 1 "10k" V 1750 3000 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 1580 3000 30  0001 C CNN
F 3 "~" H 1650 3000 30  0000 C CNN
F 4 "1% 1/8W" H 0   -750 50  0001 C CNN "Mfg_Description"
F 5 "Yageo" H 0   -750 50  0001 C CNN "Mfg_Name"
F 6 "RC0805FR-0710KL" H 0   -750 50  0001 C CNN "Mfg_PN"
F 7 "-" H 0   -750 50  0001 C CNN "Note"
F 8 "-" H 0   -750 50  0001 C CNN "Spec"
	1    1650 3000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR607
U 1 1 5721FE15
P 1650 3350
F 0 "#PWR607" H 1650 3350 30  0001 C CNN
F 1 "GND" H 1650 3280 30  0001 C CNN
F 2 "" H 1650 3350 60  0000 C CNN
F 3 "" H 1650 3350 60  0000 C CNN
	1    1650 3350
	1    0    0    -1  
$EndComp
$Comp
L R R601
U 1 1 5721FE2F
P 2450 1800
F 0 "R601" V 2350 1800 50  0000 C CNN
F 1 "270" V 2550 1800 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 2380 1800 30  0001 C CNN
F 3 "~" H 2450 1800 30  0000 C CNN
F 4 "1% 1/8W" H 0   -750 50  0001 C CNN "Mfg_Description"
F 5 "Yageo" H 0   -750 50  0001 C CNN "Mfg_Name"
F 6 "RC0805FR-07270RL" H 0   -750 50  0001 C CNN "Mfg_PN"
F 7 "-" H 0   -750 50  0001 C CNN "Note"
F 8 "-" H 0   -750 50  0001 C CNN "Spec"
	1    2450 1800
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR601
U 1 1 5721FE44
P 2450 1500
F 0 "#PWR601" H 2450 1350 50  0001 C CNN
F 1 "+5V" H 2450 1640 50  0000 C CNN
F 2 "" H 2450 1500 60  0000 C CNN
F 3 "" H 2450 1500 60  0000 C CNN
	1    2450 1500
	1    0    0    -1  
$EndComp
$Comp
L R R604
U 1 1 5721FE4A
P 6850 3000
F 0 "R604" V 6750 3000 50  0000 C CNN
F 1 "10k" V 6950 3000 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 6780 3000 30  0001 C CNN
F 3 "~" H 6850 3000 30  0000 C CNN
F 4 "1% 1/8W" H 0   -750 50  0001 C CNN "Mfg_Description"
F 5 "Yageo" H 0   -750 50  0001 C CNN "Mfg_Name"
F 6 "RC0805FR-0710KL" H 0   -750 50  0001 C CNN "Mfg_PN"
F 7 "-" H 0   -750 50  0001 C CNN "Note"
F 8 "-" H 0   -750 50  0001 C CNN "Spec"
	1    6850 3000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR608
U 1 1 5721FE52
P 6850 3350
F 0 "#PWR608" H 6850 3350 30  0001 C CNN
F 1 "GND" H 6850 3280 30  0001 C CNN
F 2 "" H 6850 3350 60  0000 C CNN
F 3 "" H 6850 3350 60  0000 C CNN
	1    6850 3350
	1    0    0    -1  
$EndComp
$Comp
L R R602
U 1 1 5721FE6C
P 7650 1800
F 0 "R602" V 7550 1800 50  0000 C CNN
F 1 "270" V 7750 1800 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 7580 1800 30  0001 C CNN
F 3 "~" H 7650 1800 30  0000 C CNN
F 4 "1% 1/8W" H 0   -750 50  0001 C CNN "Mfg_Description"
F 5 "Yageo" H 0   -750 50  0001 C CNN "Mfg_Name"
F 6 "RC0805FR-07270RL" H 0   -750 50  0001 C CNN "Mfg_PN"
F 7 "-" H 0   -750 50  0001 C CNN "Note"
F 8 "-" H 0   -750 50  0001 C CNN "Spec"
	1    7650 1800
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR602
U 1 1 5721FE81
P 7650 1500
F 0 "#PWR602" H 7650 1350 50  0001 C CNN
F 1 "+5V" H 7650 1640 50  0000 C CNN
F 2 "" H 7650 1500 60  0000 C CNN
F 3 "" H 7650 1500 60  0000 C CNN
	1    7650 1500
	1    0    0    -1  
$EndComp
$Comp
L R R607
U 1 1 5721FE8D
P 1650 9000
F 0 "R607" V 1550 9000 50  0000 C CNN
F 1 "10k" V 1750 9000 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 1580 9000 30  0001 C CNN
F 3 "~" H 1650 9000 30  0000 C CNN
F 4 "1% 1/8W" H 0   -750 50  0001 C CNN "Mfg_Description"
F 5 "Yageo" H 0   -750 50  0001 C CNN "Mfg_Name"
F 6 "RC0805FR-0710KL" H 0   -750 50  0001 C CNN "Mfg_PN"
F 7 "-" H 0   -750 50  0001 C CNN "Note"
F 8 "-" H 0   -750 50  0001 C CNN "Spec"
	1    1650 9000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR616
U 1 1 5721FE95
P 1650 9350
F 0 "#PWR616" H 1650 9350 30  0001 C CNN
F 1 "GND" H 1650 9280 30  0001 C CNN
F 2 "" H 1650 9350 60  0000 C CNN
F 3 "" H 1650 9350 60  0000 C CNN
	1    1650 9350
	1    0    0    -1  
$EndComp
$Comp
L R R605
U 1 1 5721FEA9
P 2450 7800
F 0 "R605" V 2350 7800 50  0000 C CNN
F 1 "270" V 2550 7800 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 2380 7800 30  0001 C CNN
F 3 "~" H 2450 7800 30  0000 C CNN
F 4 "1% 1/8W" H 0   -750 50  0001 C CNN "Mfg_Description"
F 5 "Yageo" H 0   -750 50  0001 C CNN "Mfg_Name"
F 6 "RC0805FR-07270RL" H 0   -750 50  0001 C CNN "Mfg_PN"
F 7 "-" H 0   -750 50  0001 C CNN "Note"
F 8 "-" H 0   -750 50  0001 C CNN "Spec"
	1    2450 7800
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR610
U 1 1 5721FEBE
P 2450 7500
F 0 "#PWR610" H 2450 7350 50  0001 C CNN
F 1 "+5V" H 2450 7640 50  0000 C CNN
F 2 "" H 2450 7500 60  0000 C CNN
F 3 "" H 2450 7500 60  0000 C CNN
	1    2450 7500
	1    0    0    -1  
$EndComp
$Comp
L R R608
U 1 1 5721FEC4
P 6850 9000
F 0 "R608" V 6750 9000 50  0000 C CNN
F 1 "10k" V 6950 9000 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 6780 9000 30  0001 C CNN
F 3 "~" H 6850 9000 30  0000 C CNN
F 4 "1% 1/8W" H 0   -750 50  0001 C CNN "Mfg_Description"
F 5 "Yageo" H 0   -750 50  0001 C CNN "Mfg_Name"
F 6 "RC0805FR-0710KL" H 0   -750 50  0001 C CNN "Mfg_PN"
F 7 "-" H 0   -750 50  0001 C CNN "Note"
F 8 "-" H 0   -750 50  0001 C CNN "Spec"
	1    6850 9000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR617
U 1 1 5721FECC
P 6850 9350
F 0 "#PWR617" H 6850 9350 30  0001 C CNN
F 1 "GND" H 6850 9280 30  0001 C CNN
F 2 "" H 6850 9350 60  0000 C CNN
F 3 "" H 6850 9350 60  0000 C CNN
	1    6850 9350
	1    0    0    -1  
$EndComp
$Comp
L R R606
U 1 1 5721FEE6
P 7650 7800
F 0 "R606" V 7550 7800 50  0000 C CNN
F 1 "270" V 7750 7800 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 7580 7800 30  0001 C CNN
F 3 "~" H 7650 7800 30  0000 C CNN
F 4 "1% 1/8W" H 0   -750 50  0001 C CNN "Mfg_Description"
F 5 "Yageo" H 0   -750 50  0001 C CNN "Mfg_Name"
F 6 "RC0805FR-07270RL" H 0   -750 50  0001 C CNN "Mfg_PN"
F 7 "-" H 0   -750 50  0001 C CNN "Note"
F 8 "-" H 0   -750 50  0001 C CNN "Spec"
	1    7650 7800
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR611
U 1 1 5721FEFB
P 7650 7500
F 0 "#PWR611" H 7650 7350 50  0001 C CNN
F 1 "+5V" H 7650 7640 50  0000 C CNN
F 2 "" H 7650 7500 60  0000 C CNN
F 3 "" H 7650 7500 60  0000 C CNN
	1    7650 7500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR609
U 1 1 5721FF7E
P 12850 7100
F 0 "#PWR609" H 12850 6850 50  0001 C CNN
F 1 "GND" H 12858 6927 50  0000 C CNN
F 2 "" H 12850 7100 50  0000 C CNN
F 3 "" H 12850 7100 50  0000 C CNN
	1    12850 7100
	1    0    0    -1  
$EndComp
$Comp
L JUMPER3 JP601
U 1 1 57255E04
P 4750 2100
F 0 "JP601" H 4800 2000 50  0000 L CNN
F 1 "Pin Head 1x3" H 4750 2250 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 4750 2100 60  0001 C CNN
F 3 "~" H 4750 2100 60  0000 C CNN
F 4 "-" H 0   -750 50  0001 C CNN "Mfg_Description"
F 5 "-" H 0   -750 50  0001 C CNN "Mfg_Name"
F 6 "-" H 0   -750 50  0001 C CNN "Mfg_PN"
F 7 "Trigger Level" H 0   -750 50  0001 C CNN "Note"
F 8 "-" H 0   -750 50  0001 C CNN "Spec"
	1    4750 2100
	0    1    1    0   
$EndComp
$Comp
L GND #PWR605
U 1 1 57255E0A
P 4750 2600
F 0 "#PWR605" H 4750 2600 30  0001 C CNN
F 1 "GND" H 4750 2530 30  0001 C CNN
F 2 "" H 4750 2600 60  0000 C CNN
F 3 "" H 4750 2600 60  0000 C CNN
	1    4750 2600
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR603
U 1 1 57255E12
P 4750 1600
F 0 "#PWR603" H 4750 1450 50  0001 C CNN
F 1 "+5V" H 4768 1774 50  0000 C CNN
F 2 "" H 4750 1600 50  0000 C CNN
F 3 "" H 4750 1600 50  0000 C CNN
	1    4750 1600
	1    0    0    -1  
$EndComp
$Comp
L JUMPER3 JP602
U 1 1 57258DF1
P 9900 2100
F 0 "JP602" H 9950 2000 50  0000 L CNN
F 1 "Pin Head 1x3" H 9900 2250 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 9900 2100 60  0001 C CNN
F 3 "~" H 9900 2100 60  0000 C CNN
F 4 "-" H 0   -750 50  0001 C CNN "Mfg_Description"
F 5 "-" H 0   -750 50  0001 C CNN "Mfg_Name"
F 6 "-" H 0   -750 50  0001 C CNN "Mfg_PN"
F 7 "Trigger Level" H 0   -750 50  0001 C CNN "Note"
F 8 "-" H 0   -750 50  0001 C CNN "Spec"
	1    9900 2100
	0    1    1    0   
$EndComp
$Comp
L GND #PWR606
U 1 1 57258DF7
P 9900 2600
F 0 "#PWR606" H 9900 2600 30  0001 C CNN
F 1 "GND" H 9900 2530 30  0001 C CNN
F 2 "" H 9900 2600 60  0000 C CNN
F 3 "" H 9900 2600 60  0000 C CNN
	1    9900 2600
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR604
U 1 1 57258DFF
P 9900 1600
F 0 "#PWR604" H 9900 1450 50  0001 C CNN
F 1 "+5V" H 9918 1774 50  0000 C CNN
F 2 "" H 9900 1600 50  0000 C CNN
F 3 "" H 9900 1600 50  0000 C CNN
	1    9900 1600
	1    0    0    -1  
$EndComp
$Comp
L JUMPER3 JP603
U 1 1 5725D3A8
P 9850 8100
F 0 "JP603" H 9900 8000 50  0000 L CNN
F 1 "Pin Head 1x3" H 9850 8250 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 9850 8100 60  0001 C CNN
F 3 "~" H 9850 8100 60  0000 C CNN
F 4 "-" H 0   -750 50  0001 C CNN "Mfg_Description"
F 5 "-" H 0   -750 50  0001 C CNN "Mfg_Name"
F 6 "-" H 0   -750 50  0001 C CNN "Mfg_PN"
F 7 "Trigger Level" H 0   -750 50  0001 C CNN "Note"
F 8 "-" H 0   -750 50  0001 C CNN "Spec"
	1    9850 8100
	0    1    1    0   
$EndComp
$Comp
L GND #PWR615
U 1 1 5725D3AE
P 9850 8600
F 0 "#PWR615" H 9850 8600 30  0001 C CNN
F 1 "GND" H 9850 8530 30  0001 C CNN
F 2 "" H 9850 8600 60  0000 C CNN
F 3 "" H 9850 8600 60  0000 C CNN
	1    9850 8600
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR613
U 1 1 5725D3B6
P 9850 7600
F 0 "#PWR613" H 9850 7450 50  0001 C CNN
F 1 "+5V" H 9868 7774 50  0000 C CNN
F 2 "" H 9850 7600 50  0000 C CNN
F 3 "" H 9850 7600 50  0000 C CNN
	1    9850 7600
	1    0    0    -1  
$EndComp
$Comp
L JUMPER3 JP604
U 1 1 5725DD79
P 4750 8100
F 0 "JP604" H 4800 8000 50  0000 L CNN
F 1 "Pin Head 1x3" H 4750 8250 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 4750 8100 60  0001 C CNN
F 3 "~" H 4750 8100 60  0000 C CNN
F 4 "-" H 0   -750 50  0001 C CNN "Mfg_Description"
F 5 "-" H 0   -750 50  0001 C CNN "Mfg_Name"
F 6 "-" H 0   -750 50  0001 C CNN "Mfg_PN"
F 7 "Trigger Level" H 0   -750 50  0001 C CNN "Note"
F 8 "-" H 0   -750 50  0001 C CNN "Spec"
	1    4750 8100
	0    1    1    0   
$EndComp
$Comp
L GND #PWR614
U 1 1 5725DD7F
P 4750 8600
F 0 "#PWR614" H 4750 8600 30  0001 C CNN
F 1 "GND" H 4750 8530 30  0001 C CNN
F 2 "" H 4750 8600 60  0000 C CNN
F 3 "" H 4750 8600 60  0000 C CNN
	1    4750 8600
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR612
U 1 1 5725DD87
P 4750 7600
F 0 "#PWR612" H 4750 7450 50  0001 C CNN
F 1 "+5V" H 4768 7774 50  0000 C CNN
F 2 "" H 4750 7600 50  0000 C CNN
F 3 "" H 4750 7600 50  0000 C CNN
	1    4750 7600
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P607
U 1 1 5773F41E
P 14650 7400
F 0 "P607" H 14750 7400 50  0000 L CNN
F 1 "PowerPole" H 14900 7400 50  0001 C CNN
F 2 "~" H 14650 7400 50  0001 C CNN
F 3 "https://github.com/psas/launch-tower/blob/master/ltc3/doc/datasheets/connectors/Anderson-Powerpole_Connectors_PP15_to_PP45.pdf" H 14650 7400 50  0001 C CNN
F 4 "-" H 0   -750 50  0001 C CNN "Mfg_Description"
F 5 "Anderson" H 14650 7400 60  0001 C CNN "Mfg_Name"
F 6 "1327G6" H 14650 7400 60  0001 C CNN "Mfg_PN"
F 7 "OFF-BOARD" H 14650 7300 50  0001 C CIN "Note"
F 8 "-" H 0   -750 50  0001 C CNN "Spec"
	1    14650 7400
	0    1    1    0   
$EndComp
$Comp
L CONN_01X01 P608
U 1 1 5773F428
P 14800 7400
F 0 "P608" H 14900 7400 50  0000 L CNN
F 1 "PowerPole" H 15000 7450 50  0001 C CNN
F 2 "~" H 14800 7400 50  0001 C CNN
F 3 "https://github.com/psas/launch-tower/blob/master/ltc3/doc/datasheets/connectors/Anderson-Powerpole_Connectors_PP15_to_PP45.pdf" H 14800 7400 50  0001 C CNN
F 4 "-" H 0   -750 50  0001 C CNN "Mfg_Description"
F 5 "Anderson" H 14800 7400 60  0001 C CNN "Mfg_Name"
F 6 "1327" H 14800 7400 60  0001 C CNN "Mfg_PN"
F 7 "OFF-BOARD" H 14800 7500 50  0001 C CIN "Note"
F 8 "-" H 0   -750 50  0001 C CNN "Spec"
	1    14800 7400
	0    1    1    0   
$EndComp
$Comp
L CONN_01X08 P605
U 1 1 5773F432
P 13200 6600
F 0 "P605" H 13200 7100 50  0000 L CNN
F 1 "MicroFit header" V 13300 6200 50  0000 L CNN
F 2 "Connectors_Molex:Molex_Microfit3_Header_02x04_Straight_43045-0828" H 13200 6600 50  0001 C CNN
F 3 "https://github.com/psas/launch-tower/blob/master/ltc3/doc/datasheets/connectors/Molex-43045-Micro_Fit_3_dual_row_vertical_through_hole_header.pdf" H 13200 6600 50  0001 C CNN
F 4 "8 pos vertical header" H 0   -750 50  0001 C CNN "Mfg_Description"
F 5 "Molex" H 13200 6600 60  0001 C CNN "Mfg_Name"
F 6 "43045-0828" H 13200 6600 60  0001 C CNN "Mfg_PN"
F 7 "to front panel" V 13400 6200 50  0001 L CNN "Note"
F 8 "-" H 0   -750 50  0001 C CNN "Spec"
	1    13200 6600
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X08 P606
U 1 1 5773F43C
P 13950 6600
F 0 "P606" H 13950 7100 50  0000 L CNN
F 1 "MicroFit connector" V 14050 6200 50  0000 L CNN
F 2 "~" H 13950 6600 50  0001 C CNN
F 3 "https://github.com/psas/launch-tower/blob/master/ltc3/doc/datasheets/connectors/Molex-Micro_Fit_3_Family.pdf" H 13950 6600 50  0001 C CNN
F 4 "8 pos connector" H 0   -750 50  0001 C CNN "Mfg_Description"
F 5 "Molex" H 13950 6600 60  0001 C CNN "Mfg_Name"
F 6 "43025-0800" H 13950 6600 60  0001 C CNN "Mfg_PN"
F 7 "OFF-BOARD; mates to P605" V 14150 6600 50  0001 C CNN "Note"
F 8 "-" H 0   -750 50  0001 C CNN "Spec"
	1    13950 6600
	-1   0    0    -1  
$EndComp
$Comp
L CONN_01X01 P609
U 1 1 577401C4
P 15050 7400
F 0 "P609" H 15150 7400 50  0000 L CNN
F 1 "PowerPole" H 15300 7400 50  0001 C CNN
F 2 "~" H 15050 7400 50  0001 C CNN
F 3 "https://github.com/psas/launch-tower/blob/master/ltc3/doc/datasheets/connectors/Anderson-Powerpole_Connectors_PP15_to_PP45.pdf" H 15050 7400 50  0001 C CNN
F 4 "-" H 0   -750 50  0001 C CNN "Mfg_Description"
F 5 "Anderson" H 15050 7400 60  0001 C CNN "Mfg_Name"
F 6 "1327G6" H 15050 7400 60  0001 C CNN "Mfg_PN"
F 7 "OFF-BOARD" H 15050 7300 50  0001 C CIN "Note"
F 8 "-" H 0   -750 50  0001 C CNN "Spec"
	1    15050 7400
	0    1    1    0   
$EndComp
$Comp
L CONN_01X01 P610
U 1 1 577401CD
P 15200 7400
F 0 "P610" H 15300 7400 50  0000 L CNN
F 1 "PowerPole" H 15400 7450 50  0001 C CNN
F 2 "~" H 15200 7400 50  0001 C CNN
F 3 "https://github.com/psas/launch-tower/blob/master/ltc3/doc/datasheets/connectors/Anderson-Powerpole_Connectors_PP15_to_PP45.pdf" H 15200 7400 50  0001 C CNN
F 4 "-" H 0   -750 50  0001 C CNN "Mfg_Description"
F 5 "Anderson" H 15200 7400 60  0001 C CNN "Mfg_Name"
F 6 "1327" H 15200 7400 60  0001 C CNN "Mfg_PN"
F 7 "OFF-BOARD" H 15200 7500 50  0001 C CIN "Note"
F 8 "-" H 0   -750 50  0001 C CNN "Spec"
	1    15200 7400
	0    1    1    0   
$EndComp
$Comp
L CONN_01X01 P611
U 1 1 577402C2
P 15450 7400
F 0 "P611" H 15550 7400 50  0000 L CNN
F 1 "PowerPole" H 15700 7400 50  0001 C CNN
F 2 "~" H 15450 7400 50  0001 C CNN
F 3 "https://github.com/psas/launch-tower/blob/master/ltc3/doc/datasheets/connectors/Anderson-Powerpole_Connectors_PP15_to_PP45.pdf" H 15450 7400 50  0001 C CNN
F 4 "-" H 0   -750 50  0001 C CNN "Mfg_Description"
F 5 "Anderson" H 15450 7400 60  0001 C CNN "Mfg_Name"
F 6 "1327G6" H 15450 7400 60  0001 C CNN "Mfg_PN"
F 7 "OFF-BOARD" H 15450 7300 50  0001 C CIN "Note"
F 8 "-" H 0   -750 50  0001 C CNN "Spec"
	1    15450 7400
	0    1    1    0   
$EndComp
$Comp
L CONN_01X01 P612
U 1 1 577402CB
P 15600 7400
F 0 "P612" H 15700 7400 50  0000 L CNN
F 1 "PowerPole" H 15800 7450 50  0001 C CNN
F 2 "~" H 15600 7400 50  0001 C CNN
F 3 "https://github.com/psas/launch-tower/blob/master/ltc3/doc/datasheets/connectors/Anderson-Powerpole_Connectors_PP15_to_PP45.pdf" H 15600 7400 50  0001 C CNN
F 4 "-" H 0   -750 50  0001 C CNN "Mfg_Description"
F 5 "Anderson" H 15600 7400 60  0001 C CNN "Mfg_Name"
F 6 "1327" H 15600 7400 60  0001 C CNN "Mfg_PN"
F 7 "OFF-BOARD" H 15600 7500 50  0001 C CIN "Note"
F 8 "-" H 0   -750 50  0001 C CNN "Spec"
	1    15600 7400
	0    1    1    0   
$EndComp
$Comp
L CONN_01X01 P613
U 1 1 577402D4
P 15850 7400
F 0 "P613" H 15950 7400 50  0000 L CNN
F 1 "PowerPole" H 16100 7400 50  0001 C CNN
F 2 "~" H 15850 7400 50  0001 C CNN
F 3 "https://github.com/psas/launch-tower/blob/master/ltc3/doc/datasheets/connectors/Anderson-Powerpole_Connectors_PP15_to_PP45.pdf" H 15850 7400 50  0001 C CNN
F 4 "-" H 0   -750 50  0001 C CNN "Mfg_Description"
F 5 "Anderson" H 15850 7400 60  0001 C CNN "Mfg_Name"
F 6 "1327G6" H 15850 7400 60  0001 C CNN "Mfg_PN"
F 7 "OFF-BOARD" H 15850 7300 50  0001 C CIN "Note"
F 8 "-" H 0   -750 50  0001 C CNN "Spec"
	1    15850 7400
	0    1    1    0   
$EndComp
$Comp
L CONN_01X01 P614
U 1 1 577402DD
P 16000 7400
F 0 "P614" H 16100 7400 50  0000 L CNN
F 1 "PowerPole" H 16200 7450 50  0001 C CNN
F 2 "~" H 16000 7400 50  0001 C CNN
F 3 "https://github.com/psas/launch-tower/blob/master/ltc3/doc/datasheets/connectors/Anderson-Powerpole_Connectors_PP15_to_PP45.pdf" H 16000 7400 50  0001 C CNN
F 4 "-" H 0   -750 50  0001 C CNN "Mfg_Description"
F 5 "Anderson" H 16000 7400 60  0001 C CNN "Mfg_Name"
F 6 "1327" H 16000 7400 60  0001 C CNN "Mfg_PN"
F 7 "OFF-BOARD" H 16000 7500 50  0001 C CIN "Note"
F 8 "-" H 0   -750 50  0001 C CNN "Spec"
	1    16000 7400
	0    1    1    0   
$EndComp
$Comp
L PMV45EN Q601
U 1 1 577760A5
P 2000 2650
F 0 "Q601" H 1750 2850 50  0000 L CNN
F 1 "PMV45EN" H 1600 2750 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 2200 2575 50  0001 L CIN
F 3 "https://github.com/psas/launch-tower/blob/master/ltc3/doc/datasheets/semiconductors/NXP-PMV45EN-N_Channel_TrenchMOS_logic_level_FET.pdf" H 2000 2650 50  0001 L CNN
F 4 "MOSFET N-CH 30V" H 0   -750 50  0001 C CNN "Mfg_Description"
F 5 "NXP" H 2000 2650 60  0001 C CNN "Mfg_Name"
F 6 "PMV45EN2R" H 2000 2650 60  0001 C CNN "Mfg_PN"
F 7 "-" H 2000 2650 60  0001 C CNN "Note"
F 8 "-" H 2000 2650 60  0001 C CNN "Spec"
	1    2000 2650
	1    0    0    -1  
$EndComp
$Comp
L TLP3542 U601
U 1 1 577793D1
P 2950 2250
F 0 "U601" H 2740 2480 40  0000 C CNN
F 1 "TLP3542" H 3090 2110 40  0000 C CNN
F 2 "Housings_DIP:DIP-6_W7.62mm" H 2740 2120 30  0001 C CIN
F 3 "https://github.com/psas/launch-tower/blob/master/ltc3/doc/datasheets/semiconductors/Toshiba-TLP3542-Photo_Relay.pdf" H 2950 2300 60  0001 C CNN
F 4 "-" H 0   -750 50  0001 C CNN "Mfg_Description"
F 5 "Toshiba" H 2950 2250 60  0001 C CNN "Mfg_Name"
F 6 "TLP3542" H 2950 2250 60  0001 C CNN "Mfg_PN"
F 7 "-" H 2950 2250 60  0001 C CNN "Note"
F 8 "-" H 2950 2250 60  0001 C CNN "Spec"
	1    2950 2250
	1    0    0    -1  
$EndComp
$Comp
L PMV45EN Q602
U 1 1 577833A7
P 7200 2650
F 0 "Q602" H 6950 2850 50  0000 L CNN
F 1 "PMV45EN" H 6800 2750 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 7400 2575 50  0001 L CIN
F 3 "https://github.com/psas/launch-tower/blob/master/ltc3/doc/datasheets/semiconductors/NXP-PMV45EN-N_Channel_TrenchMOS_logic_level_FET.pdf" H 7200 2650 50  0001 L CNN
F 4 "MOSFET N-CH 30V" H 0   -750 50  0001 C CNN "Mfg_Description"
F 5 "NXP" H 7200 2650 60  0001 C CNN "Mfg_Name"
F 6 "PMV45EN2R" H 7200 2650 60  0001 C CNN "Mfg_PN"
F 7 "-" H 7200 2650 60  0001 C CNN "Note"
F 8 "-" H 7200 2650 60  0001 C CNN "Spec"
	1    7200 2650
	1    0    0    -1  
$EndComp
$Comp
L TLP3542 U602
U 1 1 57783488
P 8150 2250
F 0 "U602" H 7940 2480 40  0000 C CNN
F 1 "TLP3542" H 8290 2110 40  0000 C CNN
F 2 "Housings_DIP:DIP-6_W7.62mm" H 7940 2120 30  0001 C CIN
F 3 "https://github.com/psas/launch-tower/blob/master/ltc3/doc/datasheets/semiconductors/Toshiba-TLP3542-Photo_Relay.pdf" H 8150 2300 60  0001 C CNN
F 4 "-" H 0   -750 50  0001 C CNN "Mfg_Description"
F 5 "Toshiba" H 8150 2250 60  0001 C CNN "Mfg_Name"
F 6 "TLP3542" H 8150 2250 60  0001 C CNN "Mfg_PN"
F 7 "-" H 8150 2250 60  0001 C CNN "Note"
F 8 "-" H 8150 2250 60  0001 C CNN "Spec"
	1    8150 2250
	1    0    0    -1  
$EndComp
$Comp
L PMV45EN Q603
U 1 1 57784F80
P 2000 8650
F 0 "Q603" H 1750 8850 50  0000 L CNN
F 1 "PMV45EN" H 1600 8750 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 2200 8575 50  0001 L CIN
F 3 "https://github.com/psas/launch-tower/blob/master/ltc3/doc/datasheets/semiconductors/NXP-PMV45EN-N_Channel_TrenchMOS_logic_level_FET.pdf" H 2000 8650 50  0001 L CNN
F 4 "MOSFET N-CH 30V" H 0   -750 50  0001 C CNN "Mfg_Description"
F 5 "NXP" H 2000 8650 60  0001 C CNN "Mfg_Name"
F 6 "PMV45EN2R" H 2000 8650 60  0001 C CNN "Mfg_PN"
F 7 "-" H 2000 8650 60  0001 C CNN "Note"
F 8 "-" H 2000 8650 60  0001 C CNN "Spec"
	1    2000 8650
	1    0    0    -1  
$EndComp
$Comp
L TLP3542 U603
U 1 1 577857B5
P 2950 8250
F 0 "U603" H 2740 8480 40  0000 C CNN
F 1 "TLP3542" H 3090 8110 40  0000 C CNN
F 2 "Housings_DIP:DIP-6_W7.62mm" H 2740 8120 30  0001 C CIN
F 3 "https://github.com/psas/launch-tower/blob/master/ltc3/doc/datasheets/semiconductors/Toshiba-TLP3542-Photo_Relay.pdf" H 2950 8300 60  0001 C CNN
F 4 "-" H 0   -750 50  0001 C CNN "Mfg_Description"
F 5 "Toshiba" H 2950 8250 60  0001 C CNN "Mfg_Name"
F 6 "TLP3542" H 2950 8250 60  0001 C CNN "Mfg_PN"
F 7 "-" H 2950 8250 60  0001 C CNN "Note"
F 8 "-" H 2950 8250 60  0001 C CNN "Spec"
	1    2950 8250
	1    0    0    -1  
$EndComp
$Comp
L PMV45EN Q604
U 1 1 57787017
P 7200 8650
F 0 "Q604" H 6950 8850 50  0000 L CNN
F 1 "PMV45EN" H 6800 8750 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 7400 8575 50  0001 L CIN
F 3 "https://github.com/psas/launch-tower/blob/master/ltc3/doc/datasheets/semiconductors/NXP-PMV45EN-N_Channel_TrenchMOS_logic_level_FET.pdf" H 7200 8650 50  0001 L CNN
F 4 "MOSFET N-CH 30V" H 0   -750 50  0001 C CNN "Mfg_Description"
F 5 "NXP" H 7200 8650 60  0001 C CNN "Mfg_Name"
F 6 "PMV45EN2R" H 7200 8650 60  0001 C CNN "Mfg_PN"
F 7 "-" H 7200 8650 60  0001 C CNN "Note"
F 8 "-" H 7200 8650 60  0001 C CNN "Spec"
	1    7200 8650
	1    0    0    -1  
$EndComp
$Comp
L TLP3542 U604
U 1 1 57787114
P 8150 8250
F 0 "U604" H 7940 8480 40  0000 C CNN
F 1 "TLP3542" H 8290 8110 40  0000 C CNN
F 2 "Housings_DIP:DIP-6_W7.62mm" H 7940 8120 30  0001 C CIN
F 3 "https://github.com/psas/launch-tower/blob/master/ltc3/doc/datasheets/semiconductors/Toshiba-TLP3542-Photo_Relay.pdf" H 8150 8300 60  0001 C CNN
F 4 "-" H 0   -750 50  0001 C CNN "Mfg_Description"
F 5 "Toshiba" H 8150 8250 60  0001 C CNN "Mfg_Name"
F 6 "TLP3542" H 8150 8250 60  0001 C CNN "Mfg_PN"
F 7 "-" H 8150 8250 60  0001 C CNN "Note"
F 8 "-" H 8150 8250 60  0001 C CNN "Spec"
	1    8150 8250
	1    0    0    -1  
$EndComp
$Comp
L R R610
U 1 1 57D0E30A
P 8900 2100
F 0 "R610" V 8800 2100 50  0000 C CNN
F 1 "100" V 9000 2100 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 8830 2100 50  0001 C CNN
F 3 "~" H 8900 2100 50  0000 C CNN
F 4 "1% 1/8W" H 0   -750 50  0001 C CNN "Mfg_Description"
F 5 "Yageo" H 0   -750 50  0001 C CNN "Mfg_Name"
F 6 "RC0805FR-07100RL" H 0   -750 50  0001 C CNN "Mfg_PN"
F 7 "-" H 0   -750 50  0001 C CNN "Note"
F 8 "-" H 0   -750 50  0001 C CNN "Spec"
	1    8900 2100
	0    1    1    0   
$EndComp
$Comp
L R R609
U 1 1 57D0EA50
P 3700 2100
F 0 "R609" V 3600 2100 50  0000 C CNN
F 1 "100" V 3800 2100 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 3630 2100 50  0001 C CNN
F 3 "~" H 3700 2100 50  0000 C CNN
F 4 "1% 1/8W" H 0   -750 50  0001 C CNN "Mfg_Description"
F 5 "Yageo" H 0   -750 50  0001 C CNN "Mfg_Name"
F 6 "RC0805FR-07100RL" H 0   -750 50  0001 C CNN "Mfg_PN"
F 7 "-" H 0   -750 50  0001 C CNN "Note"
F 8 "-" H 0   -750 50  0001 C CNN "Spec"
	1    3700 2100
	0    1    1    0   
$EndComp
$Comp
L R R611
U 1 1 57D108BE
P 3700 8100
F 0 "R611" V 3600 8100 50  0000 C CNN
F 1 "100" V 3800 8100 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 3630 8100 50  0001 C CNN
F 3 "~" H 3700 8100 50  0000 C CNN
F 4 "1% 1/8W" H 0   -750 50  0001 C CNN "Mfg_Description"
F 5 "Yageo" H 0   -750 50  0001 C CNN "Mfg_Name"
F 6 "RC0805FR-07100RL" H 0   -750 50  0001 C CNN "Mfg_PN"
F 7 "-" H 0   -750 50  0001 C CNN "Note"
F 8 "-" H 0   -750 50  0001 C CNN "Spec"
	1    3700 8100
	0    1    1    0   
$EndComp
$Comp
L R R612
U 1 1 57D11C48
P 8900 8100
F 0 "R612" V 8800 8100 50  0000 C CNN
F 1 "100" V 9000 8100 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 8830 8100 50  0001 C CNN
F 3 "~" H 8900 8100 50  0000 C CNN
F 4 "1% 1/8W" H 0   -750 50  0001 C CNN "Mfg_Description"
F 5 "Yageo" H 0   -750 50  0001 C CNN "Mfg_Name"
F 6 "RC0805FR-07100RL" H 0   -750 50  0001 C CNN "Mfg_PN"
F 7 "-" H 0   -750 50  0001 C CNN "Note"
F 8 "-" H 0   -750 50  0001 C CNN "Spec"
	1    8900 8100
	0    1    1    0   
$EndComp
$Comp
L SW_PUSH_SMALL SW601
U 1 1 57D11EA0
P 2550 2650
F 0 "SW601" H 2350 2600 50  0000 L CNN
F 1 "MOMENTARY" H 2350 2500 50  0000 L CNN
F 2 "Buttons_Switches_SMD:SW_SPST_EVQQ2" H 2550 2650 50  0001 C CNN
F 3 "https://github.com/psas/launch-tower/blob/master/ltc3/doc/datasheets/Panasonic-EVQQ2-6mm_Square_Thin_SMD_Touch_Switches.pdf" H 2550 2650 50  0001 C CNN
F 4 "Tactile SPST-NO Top Actuated SMD" H 0   0   50  0001 C CNN "Mfg_Description"
F 5 "Panasonic" H 2550 2650 60  0001 C CNN "Mfg_Name"
F 6 "EVQ-Q2K03W" H 2550 2650 60  0001 C CNN "Mfg_PN"
F 7 "ENABLE" H 2350 2400 50  0000 L CNN "Note"
F 8 "-" H 2550 2650 60  0001 C CNN "Spec"
	1    2550 2650
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH_SMALL SW602
U 1 1 57D11F75
P 7750 2650
F 0 "SW602" H 7550 2600 50  0000 L CNN
F 1 "MOMENTARY" H 7550 2500 50  0000 L CNN
F 2 "Buttons_Switches_SMD:SW_SPST_EVQQ2" H 7750 2650 50  0001 C CNN
F 3 "https://github.com/psas/launch-tower/blob/master/ltc3/doc/datasheets/Panasonic-EVQQ2-6mm_Square_Thin_SMD_Touch_Switches.pdf" H 7750 2650 50  0001 C CNN
F 4 "Tactile SPST-NO Top Actuated SMD" H 0   0   50  0001 C CNN "Mfg_Description"
F 5 "Panasonic" H 7750 2650 60  0001 C CNN "Mfg_Name"
F 6 "EVQ-Q2K03W" H 7750 2650 60  0001 C CNN "Mfg_PN"
F 7 "ENABLE" H 7550 2400 50  0000 L CNN "Note"
F 8 "-" H 7750 2650 60  0001 C CNN "Spec"
	1    7750 2650
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH_SMALL SW603
U 1 1 57D121A1
P 2550 8650
F 0 "SW603" H 2350 8600 50  0000 L CNN
F 1 "MOMENTARY" H 2350 8500 50  0000 L CNN
F 2 "Buttons_Switches_SMD:SW_SPST_EVQQ2" H 2550 8650 50  0001 C CNN
F 3 "https://github.com/psas/launch-tower/blob/master/ltc3/doc/datasheets/Panasonic-EVQQ2-6mm_Square_Thin_SMD_Touch_Switches.pdf" H 2550 8650 50  0001 C CNN
F 4 "Tactile SPST-NO Top Actuated SMD" H 0   0   50  0001 C CNN "Mfg_Description"
F 5 "Panasonic" H 2550 8650 60  0001 C CNN "Mfg_Name"
F 6 "EVQ-Q2K03W" H 2550 8650 60  0001 C CNN "Mfg_PN"
F 7 "ENABLE" H 2350 8400 50  0000 L CNN "Note"
F 8 "-" H 2550 8650 60  0001 C CNN "Spec"
	1    2550 8650
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH_SMALL SW604
U 1 1 57D12222
P 7750 8650
F 0 "SW604" H 7550 8600 50  0000 L CNN
F 1 "MOMENTARY" H 7550 8500 50  0000 L CNN
F 2 "Buttons_Switches_SMD:SW_SPST_EVQQ2" H 7750 8650 50  0001 C CNN
F 3 "https://github.com/psas/launch-tower/blob/master/ltc3/doc/datasheets/Panasonic-EVQQ2-6mm_Square_Thin_SMD_Touch_Switches.pdf" H 7750 8650 50  0001 C CNN
F 4 "Tactile SPST-NO Top Actuated SMD" H 0   0   50  0001 C CNN "Mfg_Description"
F 5 "Panasonic" H 7750 8650 60  0001 C CNN "Mfg_Name"
F 6 "EVQ-Q2K03W" H 7750 8650 60  0001 C CNN "Mfg_PN"
F 7 "ENABLE" H 7550 8400 50  0000 L CNN "Note"
F 8 "-" H 7750 8650 60  0001 C CNN "Spec"
	1    7750 8650
	1    0    0    -1  
$EndComp
Text HLabel 1500 2700 0    60   Input ~ 0
EXT_TRG_EN_1
Text HLabel 6700 2700 0    60   Input ~ 0
EXT_TRG_EN_2
Text HLabel 1500 8700 0    60   Input ~ 0
EXT_TRG_EN_3
Text HLabel 6700 8700 0    60   Input ~ 0
EXT_TRG_EN_4
Text Notes 13650 8000 0    80   ~ 0
Trigger Outlets, Front Panel
Text Notes 13650 8100 0    60   Italic 0
Anderson PowerPole PP15-45
Text Label 12600 6250 2    50   ~ 0
EXT_TRG_1_OUT
Text Label 12600 6450 2    50   ~ 0
EXT_TRG_2_OUT
Text Label 12600 6650 2    50   ~ 0
EXT_TRG_3_OUT
Text Label 12600 6850 2    50   ~ 0
EXT_TRG_4_OUT
Text Notes 12100 4500 0    100  Italic 20
TODO: add MicroFit housing\ncontacts to BOM
Wire Wire Line
	3300 2100 3550 2100
Wire Wire Line
	1650 3250 2650 3250
Wire Wire Line
	2100 3250 2100 2850
Wire Wire Line
	1650 3150 1650 3350
Wire Wire Line
	3300 2300 4150 2300
Wire Wire Line
	2100 2300 2600 2300
Wire Wire Line
	2450 2100 2600 2100
Wire Wire Line
	2450 1950 2450 2100
Wire Wire Line
	1650 2850 1650 2700
Wire Wire Line
	2450 1500 2450 1650
Wire Wire Line
	1500 2700 1800 2700
Wire Wire Line
	8500 2100 8750 2100
Wire Wire Line
	6850 3250 7850 3250
Wire Wire Line
	7300 3250 7300 2850
Wire Wire Line
	6850 3150 6850 3350
Wire Wire Line
	8500 2300 9350 2300
Wire Wire Line
	7650 2100 7800 2100
Wire Wire Line
	7650 1950 7650 2100
Wire Wire Line
	6850 2850 6850 2700
Wire Wire Line
	7650 1500 7650 1650
Wire Wire Line
	6700 2700 7000 2700
Wire Wire Line
	3550 8100 3300 8100
Wire Wire Line
	1650 9250 2650 9250
Wire Wire Line
	2100 9250 2100 8850
Wire Wire Line
	1650 9150 1650 9350
Wire Wire Line
	3300 8300 4150 8300
Wire Wire Line
	2450 8100 2600 8100
Wire Wire Line
	2450 7950 2450 8100
Wire Wire Line
	1650 8850 1650 8700
Wire Wire Line
	2450 7500 2450 7650
Wire Wire Line
	1500 8700 1800 8700
Wire Wire Line
	8750 8100 8500 8100
Wire Wire Line
	6850 9250 7850 9250
Wire Wire Line
	7300 9250 7300 8850
Wire Wire Line
	6850 9150 6850 9350
Wire Wire Line
	8500 8300 9350 8300
Wire Wire Line
	7650 8100 7800 8100
Wire Wire Line
	7650 7950 7650 8100
Wire Wire Line
	6850 8850 6850 8700
Wire Wire Line
	7650 7500 7650 7650
Wire Wire Line
	6700 8700 7000 8700
Wire Wire Line
	2100 8300 2600 8300
Wire Wire Line
	7300 8300 7800 8300
Wire Wire Line
	14150 6250 16000 6250
Wire Wire Line
	14150 6450 15600 6450
Wire Wire Line
	14150 6650 15200 6650
Wire Wire Line
	14150 6850 14800 6850
Wire Wire Line
	14150 6350 15850 6350
Wire Wire Line
	14150 6550 15450 6550
Wire Wire Line
	14150 6750 15050 6750
Wire Wire Line
	14150 6950 14650 6950
Wire Notes Line
	13650 5900 16200 5900
Wire Notes Line
	13650 7850 13650 5900
Wire Notes Line
	16200 5900 16200 7850
Wire Notes Line
	16200 7850 13650 7850
Wire Wire Line
	12850 6350 12850 7100
Wire Wire Line
	12850 6950 13000 6950
Wire Wire Line
	12850 6750 13000 6750
Wire Wire Line
	12850 6550 13000 6550
Wire Wire Line
	12850 6350 13000 6350
Wire Wire Line
	4150 6250 13000 6250
Wire Wire Line
	9350 6450 13000 6450
Wire Wire Line
	4150 6650 13000 6650
Wire Wire Line
	9350 6850 13000 6850
Wire Wire Line
	14650 6950 14650 7200
Wire Wire Line
	14800 6850 14800 7200
Wire Wire Line
	15050 6750 15050 7200
Wire Wire Line
	15200 6650 15200 7200
Wire Wire Line
	15450 6550 15450 7200
Wire Wire Line
	15600 6450 15600 7200
Wire Wire Line
	16000 6250 16000 7200
Wire Wire Line
	15850 6350 15850 7200
Wire Wire Line
	9350 2300 9350 6450
Wire Wire Line
	4150 2300 4150 6250
Wire Wire Line
	4150 8300 4150 6650
Wire Wire Line
	9350 8300 9350 6850
Wire Wire Line
	4750 2600 4750 2350
Wire Wire Line
	4750 1600 4750 1850
Wire Wire Line
	4650 2100 3850 2100
Wire Wire Line
	9900 2600 9900 2350
Wire Wire Line
	9900 1600 9900 1850
Wire Wire Line
	9800 2100 9050 2100
Wire Wire Line
	9850 8600 9850 8350
Wire Wire Line
	9850 7600 9850 7850
Wire Wire Line
	9750 8100 9050 8100
Wire Wire Line
	4750 8600 4750 8350
Wire Wire Line
	4750 7600 4750 7850
Wire Wire Line
	4650 8100 3850 8100
Wire Wire Line
	2650 3250 2650 2750
Wire Wire Line
	7850 3250 7850 2750
Wire Wire Line
	2650 9250 2650 8750
Wire Wire Line
	7850 9250 7850 8750
Wire Wire Line
	2100 2450 2100 2300
Wire Wire Line
	2450 2550 2450 2300
Wire Wire Line
	7650 2550 7650 2300
Wire Wire Line
	7300 2450 7300 2300
Wire Wire Line
	7300 2300 7800 2300
Wire Wire Line
	7300 8450 7300 8300
Wire Wire Line
	7650 8550 7650 8300
Wire Wire Line
	2450 8550 2450 8300
Wire Wire Line
	2100 8450 2100 8300
Connection ~ 1650 3250
Connection ~ 1650 2700
Connection ~ 6850 3250
Connection ~ 6850 2700
Connection ~ 1650 9250
Connection ~ 1650 8700
Connection ~ 6850 9250
Connection ~ 6850 8700
Connection ~ 12850 6950
Connection ~ 12850 6750
Connection ~ 12850 6550
Connection ~ 2100 3250
Connection ~ 2450 2300
Connection ~ 7300 3250
Connection ~ 7650 2300
Connection ~ 7300 9250
Connection ~ 7650 8300
Connection ~ 2450 8300
Connection ~ 2100 9250
$EndSCHEMATC
