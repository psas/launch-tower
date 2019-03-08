EESchema Schematic File Version 4
LIBS:LTC3_Cell_Protection-cache
EELAYER 26 0
EELAYER END
$Descr B 17000 11000
encoding utf-8
Sheet 1 1
Title "Cell Protection"
Date "2016-09-13"
Rev "A"
Comp "Portland State Aerospace Society <http://psas.pdx.edu/>"
Comment1 "2019-02-10: Converted from KiCad v4 to v5."
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L bq77PL900:BQ77PL900 U1
U 1 1 562DD532
P 5700 7150
F 0 "U1" H 5700 7100 60  0000 C CNN
F 1 "BQ77PL900" H 5700 7200 60  0000 C CNN
F 2 "LTC3:BQ77PL900" H 5700 7150 60  0001 C CNN
F 3 "https://github.com/psas/launch-tower/tree/master/ltc3/doc/datasheets/bq77PL900" H 5700 7150 60  0001 C CNN
F 4 "-" H 0   0   50  0001 C CNN "Mfg_Description"
F 5 "TI" H 0   0   50  0001 C CNN "Mfg_Name"
F 6 "BQ77PL900DLR" H 0   0   50  0001 C CNN "Mfg_PN"
F 7 "-" H 0   0   50  0001 C CNN "Note"
F 8 "-" H 0   0   50  0001 C CNN "Spec"
	1    5700 7150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR12
U 1 1 564DE030
P 5450 8800
F 0 "#PWR12" H 5450 8550 50  0001 C CNN
F 1 "GND" H 5450 8650 50  0001 C CNN
F 2 "" H 5450 8800 60  0000 C CNN
F 3 "" H 5450 8800 60  0000 C CNN
	1    5450 8800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R14
U 1 1 564DE467
P 8500 5350
F 0 "R14" V 8400 5350 50  0000 C CNN
F 1 "510" V 8600 5350 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 8430 5350 30  0001 C CNN
F 3 "~" H 8500 5350 30  0000 C CNN
F 4 "1% 1/8W" H 0   0   50  0001 C CNN "Mfg_Description"
F 5 "Yageo" H 0   0   50  0001 C CNN "Mfg_Name"
F 6 "RC0805FR-07510RL" H 0   0   50  0001 C CNN "Mfg_PN"
F 7 "-" H 0   0   50  0001 C CNN "Note"
F 8 "1/16W" H 0   0   50  0001 C CNN "Spec"
	1    8500 5350
	0    1    1    0   
$EndComp
$Comp
L Device:R R15
U 1 1 564DF5B1
P 8500 5850
F 0 "R15" V 8400 5850 50  0000 C CNN
F 1 "510" V 8600 5850 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 8430 5850 30  0001 C CNN
F 3 "~" H 8500 5850 30  0000 C CNN
F 4 "1% 1/8W" H 0   0   50  0001 C CNN "Mfg_Description"
F 5 "Yageo" H 0   0   50  0001 C CNN "Mfg_Name"
F 6 "RC0805FR-07510RL" H 0   0   50  0001 C CNN "Mfg_PN"
F 7 "-" H 0   0   50  0001 C CNN "Note"
F 8 "1/16W" H 0   0   50  0001 C CNN "Spec"
	1    8500 5850
	0    1    1    0   
$EndComp
$Comp
L Device:R R16
U 1 1 564DF695
P 8500 6350
F 0 "R16" V 8400 6350 50  0000 C CNN
F 1 "510" V 8600 6350 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 8430 6350 30  0001 C CNN
F 3 "~" H 8500 6350 30  0000 C CNN
F 4 "1% 1/8W" H 0   0   50  0001 C CNN "Mfg_Description"
F 5 "Yageo" H 0   0   50  0001 C CNN "Mfg_Name"
F 6 "RC0805FR-07510RL" H 0   0   50  0001 C CNN "Mfg_PN"
F 7 "-" H 0   0   50  0001 C CNN "Note"
F 8 "1/16W" H 0   0   50  0001 C CNN "Spec"
	1    8500 6350
	0    1    1    0   
$EndComp
$Comp
L Device:R R17
U 1 1 564DF6A1
P 8500 6850
F 0 "R17" V 8400 6850 50  0000 C CNN
F 1 "510" V 8600 6850 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 8430 6850 30  0001 C CNN
F 3 "~" H 8500 6850 30  0000 C CNN
F 4 "1% 1/8W" H 0   0   50  0001 C CNN "Mfg_Description"
F 5 "Yageo" H 0   0   50  0001 C CNN "Mfg_Name"
F 6 "RC0805FR-07510RL" H 0   0   50  0001 C CNN "Mfg_PN"
F 7 "-" H 0   0   50  0001 C CNN "Note"
F 8 "1/16W" H 0   0   50  0001 C CNN "Spec"
	1    8500 6850
	0    1    1    0   
$EndComp
$Comp
L Device:R R18
U 1 1 564DF8A5
P 8500 7350
F 0 "R18" V 8400 7350 50  0000 C CNN
F 1 "510" V 8600 7350 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 8430 7350 30  0001 C CNN
F 3 "~" H 8500 7350 30  0000 C CNN
F 4 "1% 1/8W" H 0   0   50  0001 C CNN "Mfg_Description"
F 5 "Yageo" H 0   0   50  0001 C CNN "Mfg_Name"
F 6 "RC0805FR-07510RL" H 0   0   50  0001 C CNN "Mfg_PN"
F 7 "-" H 0   0   50  0001 C CNN "Note"
F 8 "1/16W" H 0   0   50  0001 C CNN "Spec"
	1    8500 7350
	0    1    1    0   
$EndComp
$Comp
L Device:R R19
U 1 1 564DF8B1
P 8500 7850
F 0 "R19" V 8400 7850 50  0000 C CNN
F 1 "510" V 8600 7850 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 8430 7850 30  0001 C CNN
F 3 "~" H 8500 7850 30  0000 C CNN
F 4 "1% 1/8W" H 0   0   50  0001 C CNN "Mfg_Description"
F 5 "Yageo" H 0   0   50  0001 C CNN "Mfg_Name"
F 6 "RC0805FR-07510RL" H 0   0   50  0001 C CNN "Mfg_PN"
F 7 "-" H 0   0   50  0001 C CNN "Note"
F 8 "1/16W" H 0   0   50  0001 C CNN "Spec"
	1    8500 7850
	0    1    1    0   
$EndComp
$Comp
L Device:R R20
U 1 1 564DF8BD
P 8500 8350
F 0 "R20" V 8400 8350 50  0000 C CNN
F 1 "510" V 8600 8350 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 8430 8350 30  0001 C CNN
F 3 "~" H 8500 8350 30  0000 C CNN
F 4 "1% 1/8W" H 0   0   50  0001 C CNN "Mfg_Description"
F 5 "Yageo" H 0   0   50  0001 C CNN "Mfg_Name"
F 6 "RC0805FR-07510RL" H 0   0   50  0001 C CNN "Mfg_PN"
F 7 "-" H 0   0   50  0001 C CNN "Note"
F 8 "1/16W" H 0   0   50  0001 C CNN "Spec"
	1    8500 8350
	0    1    1    0   
$EndComp
$Comp
L Device:R R21
U 1 1 564DF8C9
P 8500 8850
F 0 "R21" V 8400 8850 50  0000 C CNN
F 1 "510" V 8600 8850 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 8430 8850 30  0001 C CNN
F 3 "~" H 8500 8850 30  0000 C CNN
F 4 "1% 1/8W" H 0   0   50  0001 C CNN "Mfg_Description"
F 5 "Yageo" H 0   0   50  0001 C CNN "Mfg_Name"
F 6 "RC0805FR-07510RL" H 0   0   50  0001 C CNN "Mfg_PN"
F 7 "-" H 0   0   50  0001 C CNN "Note"
F 8 "1/16W" H 0   0   50  0001 C CNN "Spec"
	1    8500 8850
	0    1    1    0   
$EndComp
$Comp
L Device:C C8
U 1 1 565000E9
P 4500 5600
F 0 "C8" H 4500 5700 50  0000 R CNN
F 1 "1μ" H 4500 5500 50  0000 R CNN
F 2 "Capacitors_SMD:C_0805" H 4538 5450 30  0001 C CNN
F 3 "~" H 4500 5600 60  0000 C CNN
F 4 "25V X7R 10%" H 0   0   50  0001 C CNN "Mfg_Description"
F 5 "Murata" H 0   0   50  0001 C CNN "Mfg_Name"
F 6 "GRM21BR71E105KA99K" H 0   0   50  0001 C CNN "Mfg_PN"
F 7 "-" H 0   0   50  0001 C CNN "Note"
F 8 "10V" H 0   0   50  0001 C CNN "Spec"
	1    4500 5600
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 56500DCE
P 4000 5600
F 0 "C7" H 4000 5700 50  0000 R CNN
F 1 "1μ" H 4000 5500 50  0000 R CNN
F 2 "Capacitors_SMD:C_0805" H 4038 5450 30  0001 C CNN
F 3 "~" H 4000 5600 60  0000 C CNN
F 4 "25V X7R 10%" H 0   0   50  0001 C CNN "Mfg_Description"
F 5 "Murata" H 0   0   50  0001 C CNN "Mfg_Name"
F 6 "GRM21BR71E105KA99K" H 0   0   50  0001 C CNN "Mfg_PN"
F 7 "-" H 0   0   50  0001 C CNN "Note"
F 8 "10V" H 0   0   50  0001 C CNN "Spec"
	1    4000 5600
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 56500E33
P 3600 5600
F 0 "C5" H 3600 5700 50  0000 R CNN
F 1 "4.7μ" H 3600 5500 50  0000 R CNN
F 2 "Capacitors_SMD:C_0805" H 3638 5450 30  0001 C CNN
F 3 "~" H 3600 5600 60  0000 C CNN
F 4 "16V X7R 10%" H 0   0   50  0001 C CNN "Mfg_Description"
F 5 "Murata" H 0   0   50  0001 C CNN "Mfg_Name"
F 6 "GRM21BR71C475KA73L" H 0   0   50  0001 C CNN "Mfg_PN"
F 7 "-" H 0   0   50  0001 C CNN "Note"
F 8 "10V" H 0   0   50  0001 C CNN "Spec"
	1    3600 5600
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR7
U 1 1 5650209A
P 3600 6000
F 0 "#PWR7" H 3600 5750 50  0001 C CNN
F 1 "GND" H 3600 5850 50  0001 C CNN
F 2 "" H 3600 6000 60  0000 C CNN
F 3 "" H 3600 6000 60  0000 C CNN
	1    3600 6000
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5650649F
P 2000 6750
F 0 "C1" H 2000 6850 50  0000 L CNN
F 1 "2.2μ" H 2000 6650 50  0000 L CNN
F 2 "Capacitors_SMD:C_1210" H 2038 6600 30  0001 C CNN
F 3 "~" H 2000 6750 60  0000 C CNN
F 4 "100V X7R 10%" H 0   0   50  0001 C CNN "Mfg_Description"
F 5 "Murata" H 0   0   50  0001 C CNN "Mfg_Name"
F 6 "GRM32ER72A225KA35L" H 0   0   50  0001 C CNN "Mfg_PN"
F 7 "-" H 0   0   50  0001 C CNN "Note"
F 8 "50V X7R" H 0   0   50  0001 C CNN "Spec"
	1    2000 6750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5650651A
P 2400 6750
F 0 "C3" H 2400 6850 50  0000 L CNN
F 1 "2.2μ" H 2400 6650 50  0000 L CNN
F 2 "Capacitors_SMD:C_1210" H 2438 6600 30  0001 C CNN
F 3 "~" H 2400 6750 60  0000 C CNN
F 4 "100V X7R 10%" H 0   0   50  0001 C CNN "Mfg_Description"
F 5 "Murata" H 0   0   50  0001 C CNN "Mfg_Name"
F 6 "GRM32ER72A225KA35L" H 0   0   50  0001 C CNN "Mfg_PN"
F 7 "-" H 0   0   50  0001 C CNN "Note"
F 8 "50V X7R" H 0   0   50  0001 C CNN "Spec"
	1    2400 6750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR3
U 1 1 5650665C
P 2000 7200
F 0 "#PWR3" H 2000 6950 50  0001 C CNN
F 1 "GND" H 2000 7050 50  0001 C CNN
F 2 "" H 2000 7200 60  0000 C CNN
F 3 "" H 2000 7200 60  0000 C CNN
	1    2000 7200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 565245D0
P 4650 4125
F 0 "R7" V 4575 4125 50  0000 C CNN
F 1 "1k" V 4725 4125 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 4580 4125 30  0001 C CNN
F 3 "~" H 4650 4125 30  0000 C CNN
F 4 "1% 1/8W" H 0   0   50  0001 C CNN "Mfg_Description"
F 5 "Yageo" H 0   0   50  0001 C CNN "Mfg_Name"
F 6 "RC0805FR-071KL" H 0   0   50  0001 C CNN "Mfg_PN"
F 7 "-" H 0   0   50  0001 C CNN "Note"
F 8 "-" H 0   0   50  0001 C CNN "Spec"
	1    4650 4125
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5652475C
P 4650 3000
F 0 "R6" V 4550 3000 50  0000 C CNN
F 1 "1M" V 4750 3000 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 4580 3000 30  0001 C CNN
F 3 "~" H 4650 3000 30  0000 C CNN
F 4 "1% 1/8W" H 0   0   50  0001 C CNN "Mfg_Description"
F 5 "Yageo" H 0   0   50  0001 C CNN "Mfg_Name"
F 6 "RC0805FR-071ML" H 0   0   50  0001 C CNN "Mfg_PN"
F 7 "-" H 0   0   50  0001 C CNN "Note"
F 8 "-" H 0   0   50  0001 C CNN "Spec"
	1    4650 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 56524937
P 3850 3250
F 0 "C6" H 3850 3350 50  0000 L CNN
F 1 "4.7n" H 3850 3150 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 3888 3100 30  0001 C CNN
F 3 "~" H 3850 3250 60  0000 C CNN
F 4 "100V X7R 10%" H 0   0   50  0001 C CNN "Mfg_Description"
F 5 "Murata" H 0   0   50  0001 C CNN "Mfg_Name"
F 6 "GRM219R72A472KA01D" H 0   0   50  0001 C CNN "Mfg_PN"
F 7 "-" H 0   0   50  0001 C CNN "Note"
F 8 "75V X7R" H 0   0   50  0001 C CNN "Spec"
	1    3850 3250
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Zener D2
U 1 1 56525C55
P 4250 3000
F 0 "D2" H 4250 3100 50  0000 C CNN
F 1 "SMAZ16" H 4250 2900 50  0000 C CNN
F 2 "Diodes_SMD:SMA_Standard" H 4250 3000 60  0001 C CNN
F 3 "https://github.com/psas/launch-tower/blob/master/ltc3/doc/datasheets/semiconductors/Diodes_Inc-SMAZnn-1W_Surface_Mount_Zener_Diode.pdf" H 4250 3000 60  0001 C CNN
F 4 "-" H 0   0   50  0001 C CNN "Spec"
F 5 "-" H 4250 2825 50  0001 C CIN "Note"
F 6 "Diodes, Inc." H 0   0   50  0001 C CNN "Mfg_Name"
F 7 " SMAZ16-13-F " H 0   0   50  0001 C CNN "Mfg_PN"
F 8 "Zener 16V 1W ±5%" H 0   0   50  0001 C CNN "Mfg_Description"
	1    4250 3000
	0    -1   -1   0   
$EndComp
$Comp
L Device:D D1
U 1 1 5652EBFB
P 2750 3000
F 0 "D1" H 2750 2900 50  0000 C CNN
F 1 "CDSU4148" H 2750 3100 50  0000 C CNN
F 2 "Diodes_SMD:SOD-523" H 2750 3000 60  0001 C CNN
F 3 "https://github.com/psas/launch-tower/blob/master/ltc3/doc/datasheets/semiconductors/ComChip-CDSU4148-SMD_Switching_Diode.pdf" H 2750 3000 60  0001 C CNN
F 4 "Standard 75V 150mA" H 0   0   50  0001 C CNN "Mfg_Description"
F 5 "Comchip" H 0   0   50  0001 C CNN "Mfg_Name"
F 6 "CDSU4148" H 0   0   50  0001 C CNN "Mfg_PN"
F 7 "-" H 0   0   50  0001 C CNN "Note"
F 8 "-" H 0   0   50  0001 C CNN "Spec"
	1    2750 3000
	0    1    -1   0   
$EndComp
$Comp
L Device:R R1
U 1 1 5652ED02
P 1600 3000
F 0 "R1" V 1500 3000 50  0000 C CNN
F 1 "10k" V 1700 3000 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 1530 3000 30  0001 C CNN
F 3 "~" H 1600 3000 30  0000 C CNN
F 4 "1% 1/8W" H 0   0   50  0001 C CNN "Mfg_Description"
F 5 "Yageo" H 0   0   50  0001 C CNN "Mfg_Name"
F 6 "RC0805FR-0710KL" H 0   0   50  0001 C CNN "Mfg_PN"
F 7 "-" H 0   0   50  0001 C CNN "Note"
F 8 "-" H 0   0   50  0001 C CNN "Spec"
	1    1600 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5652EDBF
P 1600 3500
F 0 "C2" H 1600 3600 50  0000 L CNN
F 1 "2.2μ" H 1600 3400 50  0000 L CNN
F 2 "Capacitors_SMD:C_1210" H 1638 3350 30  0001 C CNN
F 3 "~" H 1600 3500 60  0000 C CNN
F 4 "100V X7R 10%" H 0   0   50  0001 C CNN "Mfg_Description"
F 5 "Murata" H 0   0   50  0001 C CNN "Mfg_Name"
F 6 "GRM32ER72A225KA35L" H 0   0   50  0001 C CNN "Mfg_PN"
F 7 "-" H 0   0   50  0001 C CNN "Note"
F 8 "50V X7R" H 0   0   50  0001 C CNN "Spec"
	1    1600 3500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR2
U 1 1 5652F47D
P 1600 3800
F 0 "#PWR2" H 1600 3550 50  0001 C CNN
F 1 "GND" H 1600 3650 50  0001 C CNN
F 2 "" H 1600 3800 60  0000 C CNN
F 3 "" H 1600 3800 60  0000 C CNN
	1    1600 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R13
U 1 1 56535C31
P 6850 4150
F 0 "R13" V 6950 4150 50  0000 C CNN
F 1 "1k" V 6750 4150 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 6780 4150 30  0001 C CNN
F 3 "~" H 6850 4150 30  0000 C CNN
F 4 "1% 1/8W" H 0   0   50  0001 C CNN "Mfg_Description"
F 5 "Yageo" H 0   0   50  0001 C CNN "Mfg_Name"
F 6 "RC0805FR-071KL" H 0   0   50  0001 C CNN "Mfg_PN"
F 7 "-" H 0   0   50  0001 C CNN "Note"
F 8 "-" H 0   0   50  0001 C CNN "Spec"
	1    6850 4150
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R12
U 1 1 56535C37
P 6850 3000
F 0 "R12" V 6950 3000 50  0000 C CNN
F 1 "1M" V 6750 3000 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 6780 3000 30  0001 C CNN
F 3 "~" H 6850 3000 30  0000 C CNN
F 4 "1% 1/8W" H 0   0   50  0001 C CNN "Mfg_Description"
F 5 "Yageo" H 0   0   50  0001 C CNN "Mfg_Name"
F 6 "RC0805FR-071ML" H 0   0   50  0001 C CNN "Mfg_PN"
F 7 "-" H 0   0   50  0001 C CNN "Note"
F 8 "-" H 0   0   50  0001 C CNN "Spec"
	1    6850 3000
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x08_Male P4
U 1 1 5657F8B3
P 10350 7050
F 0 "P4" H 10450 7550 50  0000 C CNN
F 1 "XH header" V 10250 7050 50  0000 C CNN
F 2 "Connectors_JST:JST_XH_B08B-XH-A_08x2.50mm_Straight" H 10350 7050 60  0001 C CNN
F 3 "https://github.com/psas/launch-tower/blob/master/ltc3/doc/datasheets/connectors/JST-XH-2.5mm_pitch_Disconnectable_Crimp_style_connectors.pdf" H 10350 7050 60  0001 C CNN
F 4 "8 pos vertical header" H 0   -50 50  0001 C CNN "Mfg_Description"
F 5 "JST" H 10350 7050 60  0001 C CNN "Mfg_Name"
F 6 "B8B-XH-A(LF)(SN)" H 10350 7050 60  0001 C CNN "Mfg_PN"
F 7 "CONN_BATT_SENSE" V 10150 7050 50  0000 C CIN "Note"
F 8 "-" H 10350 7050 60  0001 C CNN "Spec"
	1    10350 7050
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C20
U 1 1 5659CAA6
P 15200 1350
F 0 "C20" H 15200 1450 50  0000 L CNN
F 1 "0.1μ" H 15200 1250 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 15238 1200 30  0001 C CNN
F 3 "~" H 15200 1350 60  0000 C CNN
F 4 "100V X7R 10%" H 0   0   50  0001 C CNN "Mfg_Description"
F 5 "Murata" H 0   0   50  0001 C CNN "Mfg_Name"
F 6 "GCM21BR72A104KA37L" H 0   0   50  0001 C CNN "Mfg_PN"
F 7 "-" H 0   0   50  0001 C CNN "Note"
F 8 "75V X7R" H 0   0   50  0001 C CNN "Spec"
	1    15200 1350
	1    0    0    -1  
$EndComp
$Comp
L LTC299x:LTC2990 U2
U 1 1 5659CAC2
P 14300 1800
F 0 "U2" H 13850 2250 50  0000 L CNN
F 1 "LTC2990" H 14450 1300 50  0000 L CNN
F 2 "LTC3:MSOP-10" H 13600 2200 50  0001 C CNN
F 3 "https://github.com/psas/launch-tower/tree/master/ltc3/doc/datasheets/LTC299x" H 13700 2300 50  0001 C CNN
F 4 "-" H 0   0   50  0001 C CNN "Mfg_Description"
F 5 "Linear" H 0   0   50  0001 C CNN "Mfg_Name"
F 6 "LTC2990IMS#PBF" H 0   0   50  0001 C CNN "Mfg_PN"
F 7 "-" H 0   0   50  0001 C CNN "Note"
F 8 "industrial-strength version" H 0   0   50  0001 C CNN "Spec"
	1    14300 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_BCE Q6
U 1 1 5659DDDC
P 10950 2050
F 0 "Q6" H 11300 2150 50  0000 R CNN
F 1 "MMBT3904" H 11550 2000 50  0000 R CNN
F 2 "~" H 11150 2150 29  0001 C CNN
F 3 "https://github.com/psas/launch-tower/blob/master/ltc3/doc/datasheets/semiconductors/Fairchild-2N3904-NPN_General_Purpose_Amplifier.pdf" H 10950 2050 60  0001 C CNN
F 4 "NPN 40V 0.2A" H 0   0   50  0001 C CNN "Mfg_Description"
F 5 "Fairchild" H 10950 2050 60  0001 C CNN "Mfg_Name"
F 6 "MMBT3904" H 10950 2050 60  0001 C CNN "Mfg_PN"
F 7 "OFFBOARD" H 10950 2050 60  0001 C CNN "Note"
F 8 "-" H 10950 2050 60  0001 C CNN "Spec"
	1    10950 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C19
U 1 1 5659DDE3
P 10600 2350
F 0 "C19" H 10600 2450 50  0000 L CNN
F 1 "470p" H 10600 2250 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 10638 2200 30  0001 C CNN
F 3 "~" H 10600 2350 60  0000 C CNN
F 4 "25V X7R 10%" H 0   0   50  0001 C CNN "Mfg_Description"
F 5 "Murata" H 10600 2350 60  0001 C CNN "Mfg_Name"
F 6 "GRM216R71E471KA01D" H 10600 2350 60  0001 C CNN "Mfg_PN"
F 7 "OFFBOARD" H 10600 2350 60  0001 C CNN "Note"
F 8 "2V" H 10600 2350 60  0001 C CNN "Spec"
	1    10600 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R23
U 1 1 565A1DCC
P 2250 2700
F 0 "R23" V 2350 2700 50  0000 C CNN
F 1 "60m" V 2150 2700 50  0000 C CNN
F 2 "Resistors_SMD:R_2512" V 2180 2700 30  0001 C CNN
F 3 "~" H 2250 2700 30  0000 C CNN
F 4 "1% 2W" H 0   0   50  0001 C CNN "Mfg_Description"
F 5 "Yageo" H 0   0   50  0001 C CNN "Mfg_Name"
F 6 "PE2512FKE7W0R06L" H 0   0   50  0001 C CNN "Mfg_PN"
F 7 "-" H 0   0   50  0001 C CNN "Note"
F 8 "1% 2W" H 0   0   50  0001 C CNN "Spec"
	1    2250 2700
	0    1    -1   0   
$EndComp
$Comp
L Device:R R24
U 1 1 565BF325
P 15650 1350
F 0 "R24" V 15550 1350 50  0000 C CNN
F 1 "5.6k" V 15750 1350 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 15580 1350 30  0001 C CNN
F 3 "~" H 15650 1350 30  0000 C CNN
F 4 "1% 1/8W" H 0   0   50  0001 C CNN "Mfg_Description"
F 5 "Yageo" H 0   0   50  0001 C CNN "Mfg_Name"
F 6 "RC0805FR-075K6L" H 0   0   50  0001 C CNN "Mfg_PN"
F 7 "-" H 0   0   50  0001 C CNN "Note"
F 8 "-" H 0   0   50  0001 C CNN "Spec"
	1    15650 1350
	1    0    0    -1  
$EndComp
$Comp
L Device:D D6
U 1 1 565B72A6
P 8550 3000
F 0 "D6" H 8550 3100 50  0000 C CNN
F 1 "CDSU4148" H 8550 2900 50  0000 C CNN
F 2 "Diodes_SMD:SOD-523" H 8550 3000 60  0001 C CNN
F 3 "https://github.com/psas/launch-tower/blob/master/ltc3/doc/datasheets/semiconductors/ComChip-CDSU4148-SMD_Switching_Diode.pdf" H 8550 3000 60  0001 C CNN
F 4 "Standard 75V 150mA" H 0   0   50  0001 C CNN "Mfg_Description"
F 5 "Comchip" H 0   0   50  0001 C CNN "Mfg_Name"
F 6 "CDSU4148" H 0   0   50  0001 C CNN "Mfg_PN"
F 7 "-" H 0   0   50  0001 C CNN "Note"
F 8 "-" H 0   0   50  0001 C CNN "Spec"
	1    8550 3000
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R22
U 1 1 565B72AC
P 8950 3000
F 0 "R22" V 9050 3000 50  0000 C CNN
F 1 "100k" V 8850 3000 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 8880 3000 30  0001 C CNN
F 3 "~" H 8950 3000 30  0000 C CNN
F 4 "1% 1/8W" H 0   0   50  0001 C CNN "Mfg_Description"
F 5 "Yageo" H 0   0   50  0001 C CNN "Mfg_Name"
F 6 "RC0805FR-07100KL" H 0   0   50  0001 C CNN "Mfg_PN"
F 7 "-" H 0   0   50  0001 C CNN "Note"
F 8 "-" H 0   0   50  0001 C CNN "Spec"
	1    8950 3000
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C18
U 1 1 565B72B2
P 8950 3500
F 0 "C18" H 8950 3600 50  0000 R CNN
F 1 "2.2μ" H 8950 3400 50  0000 R CNN
F 2 "Capacitors_SMD:C_1210" H 8988 3350 30  0001 C CNN
F 3 "~" H 8950 3500 60  0000 C CNN
F 4 "100V X7R 10%" H 0   0   50  0001 C CNN "Mfg_Description"
F 5 "Murata" H 0   0   50  0001 C CNN "Mfg_Name"
F 6 "GRM32ER72A225KA35L" H 0   0   50  0001 C CNN "Mfg_PN"
F 7 "-" H 0   0   50  0001 C CNN "Note"
F 8 "50V X7R" H 0   0   50  0001 C CNN "Spec"
	1    8950 3500
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR15
U 1 1 565B72B8
P 8950 3800
F 0 "#PWR15" H 8950 3550 50  0001 C CNN
F 1 "GND" H 8950 3650 50  0001 C CNN
F 2 "" H 8950 3800 60  0000 C CNN
F 3 "" H 8950 3800 60  0000 C CNN
	1    8950 3800
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR11
U 1 1 565D2BB8
P 5000 5700
F 0 "#PWR11" H 5000 5450 50  0001 C CNN
F 1 "GND" H 5000 5550 50  0001 C CNN
F 2 "" H 5000 5700 60  0000 C CNN
F 3 "" H 5000 5700 60  0000 C CNN
	1    5000 5700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR9
U 1 1 565F5A93
P 3975 7850
F 0 "#PWR9" H 3975 7600 50  0001 C CNN
F 1 "GND" H 3975 7700 50  0001 C CNN
F 2 "" H 3975 7850 60  0000 C CNN
F 3 "" H 3975 7850 60  0000 C CNN
	1    3975 7850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 565F91E7
P 2600 7450
F 0 "C4" H 2625 7550 50  0000 L CNN
F 1 "10n" H 2625 7350 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 2638 7300 30  0001 C CNN
F 3 "~" H 2600 7450 60  0000 C CNN
F 4 "50V X7R 10%" H 0   0   50  0001 C CNN "Mfg_Description"
F 5 "Murata" H 0   0   50  0001 C CNN "Mfg_Name"
F 6 "GRM216R71H103KA01D" H 0   0   50  0001 C CNN "Mfg_PN"
F 7 "-" H 0   0   50  0001 C CNN "Note"
F 8 "10V" H 0   0   50  0001 C CNN "Spec"
	1    2600 7450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 565F9268
P 3550 7450
F 0 "R5" V 3450 7450 50  0000 C CNN
F 1 "61.9k" V 3650 7450 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 3480 7450 30  0001 C CNN
F 3 "~" H 3550 7450 30  0000 C CNN
F 4 "1% 1/8W" H 0   0   50  0001 C CNN "Mfg_Description"
F 5 "Yageo" H 0   0   50  0001 C CNN "Mfg_Name"
F 6 "RC0805FR-0761K9L" H 0   0   50  0001 C CNN "Mfg_PN"
F 7 "-" H 0   0   50  0001 C CNN "Note"
F 8 "-" H 0   0   50  0001 C CNN "Spec"
	1    3550 7450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 565FA442
P 3550 6850
F 0 "R4" V 3450 6850 50  0000 C CNN
F 1 "6.98k" V 3650 6850 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 3480 6850 30  0001 C CNN
F 3 "~" H 3550 6850 30  0000 C CNN
F 4 "1% 1/8W" H 0   0   50  0001 C CNN "Mfg_Description"
F 5 "Yageo" H 0   0   50  0001 C CNN "Mfg_Name"
F 6 "RC0805FR-076K98L" H 0   0   50  0001 C CNN "Mfg_PN"
F 7 "-" H 0   0   50  0001 C CNN "Note"
F 8 "-" H 0   0   50  0001 C CNN "Spec"
	1    3550 6850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR5
U 1 1 565FA5A2
P 2600 7900
F 0 "#PWR5" H 2600 7650 50  0001 C CNN
F 1 "GND" H 2600 7750 50  0001 C CNN
F 2 "" H 2600 7900 60  0000 C CNN
F 3 "" H 2600 7900 60  0000 C CNN
	1    2600 7900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 5660E5E9
P 5850 9250
F 0 "R9" V 5750 9250 50  0000 C CNN
F 1 "200" V 5950 9250 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 5780 9250 30  0001 C CNN
F 3 "~" H 5850 9250 30  0000 C CNN
F 4 "1% 1/8W" H 0   0   50  0001 C CNN "Mfg_Description"
F 5 "Yageo" H 0   0   50  0001 C CNN "Mfg_Name"
F 6 "RC0805FR-07200RL" H 0   0   50  0001 C CNN "Mfg_PN"
F 7 "-" H 0   0   50  0001 C CNN "Note"
F 8 "-" H 0   0   50  0001 C CNN "Spec"
	1    5850 9250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R11
U 1 1 5660E706
P 6450 9250
F 0 "R11" V 6350 9250 50  0000 C CNN
F 1 "200" V 6550 9250 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 6380 9250 30  0001 C CNN
F 3 "~" H 6450 9250 30  0000 C CNN
F 4 "1% 1/8W" H 0   0   50  0001 C CNN "Mfg_Description"
F 5 "Yageo" H 0   0   50  0001 C CNN "Mfg_Name"
F 6 "RC0805FR-07200RL" H 0   0   50  0001 C CNN "Mfg_PN"
F 7 "-" H 0   0   50  0001 C CNN "Note"
F 8 "-" H 0   0   50  0001 C CNN "Spec"
	1    6450 9250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 5660EC21
P 6150 8950
F 0 "C9" V 6100 9000 50  0000 L CNN
F 1 "0.1μ" V 6100 8900 50  0000 R CNN
F 2 "Capacitors_SMD:C_0805" H 6188 8800 30  0001 C CNN
F 3 "~" H 6150 8950 60  0000 C CNN
F 4 "100V X7R 10%" H 0   0   50  0001 C CNN "Mfg_Description"
F 5 "Murata" H 0   0   50  0001 C CNN "Mfg_Name"
F 6 "GCM21BR72A104KA37L" H 0   0   50  0001 C CNN "Mfg_PN"
F 7 "-" H 0   0   50  0001 C CNN "Note"
F 8 "75V X7R" H 0   0   50  0001 C CNN "Spec"
	1    6150 8950
	0    -1   1    0   
$EndComp
$Comp
L power:GND #PWR13
U 1 1 565E5619
P 5850 10000
F 0 "#PWR13" H 5850 9750 50  0001 C CNN
F 1 "GND" H 5850 9850 50  0001 C CNN
F 2 "" H 5850 10000 60  0000 C CNN
F 3 "" H 5850 10000 60  0000 C CNN
	1    5850 10000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 566E0665
P 6150 9750
F 0 "R10" V 6250 9750 50  0000 C CNN
F 1 "1m" V 6050 9750 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 6080 9750 30  0001 C CNN
F 3 "~" H 6150 9750 30  0000 C CNN
F 4 "1% 1W ±50ppm" H 0   0   50  0001 C CNN "Mfg_Description"
F 5 "Stackpole" H 0   0   50  0001 C CNN "Mfg_Name"
F 6 "CSNL1206FT1L00" H 0   0   50  0001 C CNN "Mfg_PN"
F 7 "1W ±275ppm" V 5950 9750 50  0000 C CIN "Note"
	1    6150 9750
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C11
U 1 1 566EC4D3
P 8750 5600
F 0 "C11" H 8750 5700 50  0000 L CNN
F 1 "0.1μ" H 8750 5500 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 8788 5450 30  0001 C CNN
F 3 "~" H 8750 5600 60  0000 C CNN
F 4 "100V X7R 10%" H 0   0   50  0001 C CNN "Mfg_Description"
F 5 "Murata" H 0   0   50  0001 C CNN "Mfg_Name"
F 6 "GCM21BR72A104KA37L" H 0   0   50  0001 C CNN "Mfg_PN"
F 7 "-" H 0   0   50  0001 C CNN "Note"
F 8 "75V X7R" H 0   0   50  0001 C CNN "Spec"
	1    8750 5600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C12
U 1 1 566EDC6B
P 8750 6100
F 0 "C12" H 8750 6200 50  0000 L CNN
F 1 "0.1μ" H 8750 6000 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 8788 5950 30  0001 C CNN
F 3 "~" H 8750 6100 60  0000 C CNN
F 4 "100V X7R 10%" H 0   0   50  0001 C CNN "Mfg_Description"
F 5 "Murata" H 0   0   50  0001 C CNN "Mfg_Name"
F 6 "GCM21BR72A104KA37L" H 0   0   50  0001 C CNN "Mfg_PN"
F 7 "-" H 0   0   50  0001 C CNN "Note"
F 8 "75V X7R" H 0   0   50  0001 C CNN "Spec"
	1    8750 6100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C13
U 1 1 566EDD2D
P 8750 6600
F 0 "C13" H 8750 6700 50  0000 L CNN
F 1 "0.1μ" H 8750 6500 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 8788 6450 30  0001 C CNN
F 3 "~" H 8750 6600 60  0000 C CNN
F 4 "100V X7R 10%" H 0   0   50  0001 C CNN "Mfg_Description"
F 5 "Murata" H 0   0   50  0001 C CNN "Mfg_Name"
F 6 "GCM21BR72A104KA37L" H 0   0   50  0001 C CNN "Mfg_PN"
F 7 "-" H 0   0   50  0001 C CNN "Note"
F 8 "75V X7R" H 0   0   50  0001 C CNN "Spec"
	1    8750 6600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C14
U 1 1 566EDDEE
P 8750 7100
F 0 "C14" H 8750 7200 50  0000 L CNN
F 1 "0.1μ" H 8750 7000 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 8788 6950 30  0001 C CNN
F 3 "~" H 8750 7100 60  0000 C CNN
F 4 "100V X7R 10%" H 0   0   50  0001 C CNN "Mfg_Description"
F 5 "Murata" H 0   0   50  0001 C CNN "Mfg_Name"
F 6 "GCM21BR72A104KA37L" H 0   0   50  0001 C CNN "Mfg_PN"
F 7 "-" H 0   0   50  0001 C CNN "Note"
F 8 "75V X7R" H 0   0   50  0001 C CNN "Spec"
	1    8750 7100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C15
U 1 1 566EDEAE
P 8750 7600
F 0 "C15" H 8750 7700 50  0000 L CNN
F 1 "0.1μ" H 8750 7500 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 8788 7450 30  0001 C CNN
F 3 "~" H 8750 7600 60  0000 C CNN
F 4 "100V X7R 10%" H 0   0   50  0001 C CNN "Mfg_Description"
F 5 "Murata" H 0   0   50  0001 C CNN "Mfg_Name"
F 6 "GCM21BR72A104KA37L" H 0   0   50  0001 C CNN "Mfg_PN"
F 7 "-" H 0   0   50  0001 C CNN "Note"
F 8 "75V X7R" H 0   0   50  0001 C CNN "Spec"
	1    8750 7600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C16
U 1 1 566EDF75
P 8750 8100
F 0 "C16" H 8750 8200 50  0000 L CNN
F 1 "0.1μ" H 8750 8000 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 8788 7950 30  0001 C CNN
F 3 "~" H 8750 8100 60  0000 C CNN
F 4 "100V X7R 10%" H 0   0   50  0001 C CNN "Mfg_Description"
F 5 "Murata" H 0   0   50  0001 C CNN "Mfg_Name"
F 6 "GCM21BR72A104KA37L" H 0   0   50  0001 C CNN "Mfg_PN"
F 7 "-" H 0   0   50  0001 C CNN "Note"
F 8 "75V X7R" H 0   0   50  0001 C CNN "Spec"
	1    8750 8100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C17
U 1 1 566EE03D
P 8750 8600
F 0 "C17" H 8750 8700 50  0000 L CNN
F 1 "0.1μ" H 8750 8500 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 8788 8450 30  0001 C CNN
F 3 "~" H 8750 8600 60  0000 C CNN
F 4 "100V X7R 10%" H 0   0   50  0001 C CNN "Mfg_Description"
F 5 "Murata" H 0   0   50  0001 C CNN "Mfg_Name"
F 6 "GCM21BR72A104KA37L" H 0   0   50  0001 C CNN "Mfg_PN"
F 7 "-" H 0   0   50  0001 C CNN "Note"
F 8 "75V X7R" H 0   0   50  0001 C CNN "Spec"
	1    8750 8600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 5671582A
P 4750 1900
F 0 "R8" V 4650 1900 50  0000 C CNN
F 1 "1.78k" V 4850 1900 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 4680 1900 30  0001 C CNN
F 3 "~" H 4750 1900 30  0000 C CNN
F 4 "1% 1/8W" H 0   0   50  0001 C CNN "Mfg_Description"
F 5 "Yageo" H 0   0   50  0001 C CNN "Mfg_Name"
F 6 "RC0805FR-071K78L" H 0   0   50  0001 C CNN "Mfg_PN"
F 7 "-" H 0   0   50  0001 C CNN "Note"
F 8 "-" H 0   0   50  0001 C CNN "Spec"
	1    4750 1900
	0    -1   1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 567164D7
P 3150 3000
F 0 "R2" V 3250 3000 50  0000 C CNN
F 1 "390k" V 3050 3000 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 3080 3000 30  0001 C CNN
F 3 "~" H 3150 3000 30  0000 C CNN
F 4 "1% 1/8W" H 0   0   50  0001 C CNN "Mfg_Description"
F 5 "Yageo" H 0   0   50  0001 C CNN "Mfg_Name"
F 6 "RC0805FR-07390KL" H 0   0   50  0001 C CNN "Mfg_PN"
F 7 "-" H 0   0   50  0001 C CNN "Note"
F 8 "-" H 0   0   50  0001 C CNN "Spec"
	1    3150 3000
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 56716568
P 3150 3500
F 0 "R3" V 3250 3500 50  0000 C CNN
F 1 "820k" V 3050 3500 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 3080 3500 30  0001 C CNN
F 3 "~" H 3150 3500 30  0000 C CNN
F 4 "1% 1/8W" H 0   0   50  0001 C CNN "Mfg_Description"
F 5 "Yageo" H 0   0   50  0001 C CNN "Mfg_Name"
F 6 "RC0805FR-07820KL" H 0   0   50  0001 C CNN "Mfg_PN"
F 7 "-" H 0   0   50  0001 C CNN "Note"
F 8 "-" H 0   0   50  0001 C CNN "Spec"
	1    3150 3500
	-1   0    0    -1  
$EndComp
$Comp
L SUM110P08-11:SUM110P08-11 Q1
U 1 1 5674ABE5
P 5200 3000
F 0 "Q1" V 5250 2925 50  0000 R CNN
F 1 "SUM110P08-11" V 5700 3000 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:TO-263-3Lead" H 5650 2905 50  0001 L CNN
F 3 "https://github.com/psas/launch-tower/blob/master/ltc3/doc/datasheets/semiconductors/Vishay-SUM110P08_11L-P_Channel_80V_MOSFET.pdf" H 5400 2950 50  0001 L CNN
F 4 "MOSFET P-CH 80V 110A" H 0   0   50  0001 C CNN "Mfg_Description"
F 5 "Vishay" H 0   0   50  0001 C CNN "Mfg_Name"
F 6 "SUM110P08-11L-E3" H 0   0   50  0001 C CNN "Mfg_PN"
F 7 "-" H 0   0   50  0001 C CNN "Note"
F 8 "-" H 0   0   50  0001 C CNN "Spec"
	1    5200 3000
	0    -1   -1   0   
$EndComp
$Comp
L SUM110P08-11:SUM110P08-11 Q4
U 1 1 5674C33A
P 6300 3000
F 0 "Q4" V 6350 2950 50  0000 R CNN
F 1 "SUM110P08-11" V 6800 3000 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:TO-263-3Lead" H 6750 2905 50  0001 L CNN
F 3 "https://github.com/psas/launch-tower/blob/master/ltc3/doc/datasheets/semiconductors/Vishay-SUM110P08_11L-P_Channel_80V_MOSFET.pdf" H 6500 2950 50  0001 L CNN
F 4 "MOSFET P-CH 80V 110A" H 0   0   50  0001 C CNN "Mfg_Description"
F 5 "Vishay" H 0   0   50  0001 C CNN "Mfg_Name"
F 6 "SUM110P08-11L-E3" H 0   0   50  0001 C CNN "Mfg_PN"
F 7 "-" H 0   0   50  0001 C CNN "Note"
F 8 "-" H 0   0   50  0001 C CNN "Spec"
	1    6300 3000
	0    1    -1   0   
$EndComp
$Comp
L SUM110P08-11:SUM110P08-11 Q2
U 1 1 5674CE19
P 5200 3500
F 0 "Q2" V 5250 3425 50  0000 R CNN
F 1 "SUM110P08-11" V 5750 3450 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:TO-263-3Lead" H 5650 3405 50  0001 L CNN
F 3 "https://github.com/psas/launch-tower/blob/master/ltc3/doc/datasheets/semiconductors/Vishay-SUM110P08_11L-P_Channel_80V_MOSFET.pdf" H 5400 3450 50  0001 L CNN
F 4 "MOSFET P-CH 80V 110A" H 0   0   50  0001 C CNN "Mfg_Description"
F 5 "Vishay" H 0   0   50  0001 C CNN "Mfg_Name"
F 6 "SUM110P08-11L-E3" H 0   0   50  0001 C CNN "Mfg_PN"
F 7 "-" H 0   0   50  0001 C CNN "Note"
F 8 "-" H 0   0   50  0001 C CNN "Spec"
	1    5200 3500
	0    -1   1    0   
$EndComp
$Comp
L SUM110P08-11:SUM110P08-11 Q5
U 1 1 5674E133
P 6300 3500
F 0 "Q5" V 6400 3450 50  0000 R CNN
F 1 "SUM110P08-11" V 6850 3500 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:TO-263-3Lead" H 6750 3405 50  0001 L CNN
F 3 "https://github.com/psas/launch-tower/blob/master/ltc3/doc/datasheets/semiconductors/Vishay-SUM110P08_11L-P_Channel_80V_MOSFET.pdf" H 6500 3450 50  0001 L CNN
F 4 "MOSFET P-CH 80V 110A" H 0   0   50  0001 C CNN "Mfg_Description"
F 5 "Vishay" H 0   0   50  0001 C CNN "Mfg_Name"
F 6 "SUM110P08-11L-E3" H 0   0   50  0001 C CNN "Mfg_PN"
F 7 "-" H 0   0   50  0001 C CNN "Note"
F 8 "-" H 0   0   50  0001 C CNN "Spec"
	1    6300 3500
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x08_Male P6
U 1 1 5672D5CE
P 11050 6250
F 0 "P6" H 11150 5700 50  0000 C CNN
F 1 "XH connector" V 10950 6250 50  0000 C CNN
F 2 "~" H 11050 6250 60  0001 C CNN
F 3 "https://github.com/psas/launch-tower/blob/master/ltc3/doc/datasheets/connectors/JST-XH-2.5mm_pitch_Disconnectable_Crimp_style_connectors.pdf" H 11050 6250 60  0001 C CNN
F 4 "8 pos connector" H 0   -50 50  0001 C CNN "Mfg_Description"
F 5 "JST" H 0   -50 50  0001 C CNN "Mfg_Name"
F 6 "XHP-8" H 0   -50 50  0001 C CNN "Mfg_PN"
F 7 "OFFBOARD; mates to P4" H 0   -50 50  0001 C CNN "Note"
F 8 "-" H 0   -50 50  0001 C CNN "Spec"
	1    11050 6250
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male P5
U 1 1 567314A2
P 11050 5000
F 0 "P5" H 11150 5250 50  0000 C CNN
F 1 "MicroFit connector" V 10950 4950 50  0000 C CNN
F 2 "~" H 11050 5000 60  0001 C CNN
F 3 "https://github.com/psas/launch-tower/blob/master/ltc3/doc/datasheets/connectors/Molex-Micro_Fit_3_Family.pdf" H 11050 5000 60  0001 C CNN
F 4 "4 pos connector" H 0   -50 50  0001 C CNN "Mfg_Description"
F 5 "Molex" H 0   -50 50  0001 C CNN "Mfg_Name"
F 6 "43025-0400" H 0   -50 50  0001 C CNN "Mfg_PN"
F 7 "OFFBOARD; mates to P3" H 0   -50 50  0001 C CNN "Note"
F 8 "-" H 0   -50 50  0001 C CNN "Spec"
	1    11050 5000
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male P1
U 1 1 56AD9DCA
P 3100 7400
F 0 "P1" H 3200 7550 50  0000 C CNN
F 1 "XH header" V 3050 7350 50  0000 C CNN
F 2 "Connectors_JST:JST_XH_B02B-XH-A_08x2.50mm_Straight" H 3100 7400 60  0001 C CNN
F 3 "https://github.com/psas/launch-tower/blob/master/ltc3/doc/datasheets/connectors/JST-XH-2.5mm_pitch_Disconnectable_Crimp_style_connectors.pdf" H 3100 7400 60  0001 C CNN
F 4 "2 pos vertical header" H 0   -50 50  0001 C CNN "Mfg_Description"
F 5 "JST" H 0   -50 50  0001 C CNN "Mfg_Name"
F 6 "B2B-XH-A(LF)(SN)" H 0   -50 50  0001 C CNN "Mfg_PN"
F 7 "to thermistor" V 2950 7350 50  0000 C CIN "Note"
F 8 "-" H 0   -50 50  0001 C CNN "Spec"
	1    3100 7400
	-1   0    0    -1  
$EndComp
$Comp
L battery_single_cell:1Cell_Battery BT1
U 1 1 56B6A739
P 12000 5850
F 0 "BT1" H 12118 5850 50  0000 L CNN
F 1 "~" H 12118 5804 50  0000 L CNN
F 2 "~" V 12000 5860 60  0001 C CNN
F 3 "~" V 12000 5860 60  0000 C CNN
F 4 "-" H 0   0   50  0001 C CNN "Mfg_Description"
F 5 "-" H 0   0   50  0001 C CNN "Mfg_Name"
F 6 "-" H 0   0   50  0001 C CNN "Mfg_PN"
F 7 "OFFBOARD" H 0   0   50  0001 C CNN "Note"
F 8 "-" H 0   0   50  0001 C CNN "Spec"
	1    12000 5850
	1    0    0    -1  
$EndComp
$Comp
L battery_single_cell:1Cell_Battery BT2
U 1 1 56B6AEE5
P 12000 6250
F 0 "BT2" H 12118 6250 50  0000 L CNN
F 1 "~" H 12118 6204 50  0000 L CNN
F 2 "~" V 12000 6260 60  0001 C CNN
F 3 "~" V 12000 6260 60  0000 C CNN
F 4 "-" H 0   0   50  0001 C CNN "Mfg_Description"
F 5 "-" H 0   0   50  0001 C CNN "Mfg_Name"
F 6 "-" H 0   0   50  0001 C CNN "Mfg_PN"
F 7 "OFFBOARD" H 0   0   50  0001 C CNN "Note"
F 8 "-" H 0   0   50  0001 C CNN "Spec"
	1    12000 6250
	1    0    0    -1  
$EndComp
$Comp
L battery_single_cell:1Cell_Battery BT3
U 1 1 56B6B5DC
P 12000 6650
F 0 "BT3" H 12118 6650 50  0000 L CNN
F 1 "~" H 12118 6604 50  0000 L CNN
F 2 "~" V 12000 6660 60  0001 C CNN
F 3 "~" V 12000 6660 60  0000 C CNN
F 4 "-" H 0   0   50  0001 C CNN "Mfg_Description"
F 5 "-" H 0   0   50  0001 C CNN "Mfg_Name"
F 6 "-" H 0   0   50  0001 C CNN "Mfg_PN"
F 7 "OFFBOARD" H 0   0   50  0001 C CNN "Note"
F 8 "-" H 0   0   50  0001 C CNN "Spec"
	1    12000 6650
	1    0    0    -1  
$EndComp
$Comp
L battery_single_cell:1Cell_Battery BT4
U 1 1 56B6BF82
P 12000 7050
F 0 "BT4" H 12118 7050 50  0000 L CNN
F 1 "~" H 12118 7004 50  0000 L CNN
F 2 "~" V 12000 7060 60  0001 C CNN
F 3 "~" V 12000 7060 60  0000 C CNN
F 4 "-" H 0   0   50  0001 C CNN "Mfg_Description"
F 5 "-" H 0   0   50  0001 C CNN "Mfg_Name"
F 6 "-" H 0   0   50  0001 C CNN "Mfg_PN"
F 7 "OFFBOARD" H 0   0   50  0001 C CNN "Note"
F 8 "-" H 0   0   50  0001 C CNN "Spec"
	1    12000 7050
	1    0    0    -1  
$EndComp
$Comp
L battery_single_cell:1Cell_Battery BT5
U 1 1 56B6C66C
P 12000 7450
F 0 "BT5" H 12118 7450 50  0000 L CNN
F 1 "~" H 12118 7404 50  0000 L CNN
F 2 "~" V 12000 7460 60  0001 C CNN
F 3 "~" V 12000 7460 60  0000 C CNN
F 4 "-" H 0   0   50  0001 C CNN "Mfg_Description"
F 5 "-" H 0   0   50  0001 C CNN "Mfg_Name"
F 6 "-" H 0   0   50  0001 C CNN "Mfg_PN"
F 7 "OFFBOARD" H 0   0   50  0001 C CNN "Note"
F 8 "-" H 0   0   50  0001 C CNN "Spec"
	1    12000 7450
	1    0    0    -1  
$EndComp
$Comp
L battery_single_cell:1Cell_Battery BT6
U 1 1 56B6C754
P 12000 7850
F 0 "BT6" H 12118 7850 50  0000 L CNN
F 1 "~" H 12118 7804 50  0000 L CNN
F 2 "~" V 12000 7860 60  0001 C CNN
F 3 "~" V 12000 7860 60  0000 C CNN
F 4 "-" H 0   0   50  0001 C CNN "Mfg_Description"
F 5 "-" H 0   0   50  0001 C CNN "Mfg_Name"
F 6 "-" H 0   0   50  0001 C CNN "Mfg_PN"
F 7 "OFFBOARD" H 0   0   50  0001 C CNN "Note"
F 8 "-" H 0   0   50  0001 C CNN "Spec"
	1    12000 7850
	1    0    0    -1  
$EndComp
$Comp
L battery_single_cell:1Cell_Battery BT7
U 1 1 56B6CDE8
P 12000 8250
F 0 "BT7" H 12118 8250 50  0000 L CNN
F 1 "~" H 12118 8204 50  0000 L CNN
F 2 "~" V 12000 8260 60  0001 C CNN
F 3 "~" V 12000 8260 60  0000 C CNN
F 4 "-" H 0   0   50  0001 C CNN "Mfg_Description"
F 5 "-" H 0   0   50  0001 C CNN "Mfg_Name"
F 6 "-" H 0   0   50  0001 C CNN "Mfg_PN"
F 7 "OFFBOARD" H 0   0   50  0001 C CNN "Note"
F 8 "-" H 0   0   50  0001 C CNN "Spec"
	1    12000 8250
	1    0    0    -1  
$EndComp
$Comp
L battery_single_cell:1Cell_Battery BT8
U 1 1 56B6D4DE
P 12000 8650
F 0 "BT8" H 12118 8650 50  0000 L CNN
F 1 "~" H 12118 8604 50  0000 L CNN
F 2 "~" V 12000 8660 60  0001 C CNN
F 3 "~" V 12000 8660 60  0000 C CNN
F 4 "-" H 0   0   50  0001 C CNN "Mfg_Description"
F 5 "-" H 0   0   50  0001 C CNN "Mfg_Name"
F 6 "-" H 0   0   50  0001 C CNN "Mfg_PN"
F 7 "OFFBOARD" H 0   0   50  0001 C CNN "Note"
F 8 "-" H 0   0   50  0001 C CNN "Spec"
	1    12000 8650
	1    0    0    -1  
$EndComp
$Comp
L Device:Fuse F1
U 1 1 56BFBDDD
P 10000 4200
F 0 "F1" H 10100 4250 50  0000 C CNN
F 1 "10A" H 9900 4150 50  0000 C CNN
F 2 "LTC3:Fuseholder_Auto_Blade_Regular_Keystone_3557-2" H 10000 4200 60  0001 C CNN
F 3 "https://github.com/psas/launch-tower/blob/master/ltc3/doc/datasheets/fuses/Keystone-3557_2-automotive_fuse_holder_vertical.pdf" H 10000 4200 60  0001 C CNN
F 4 "FUSE BLOCK BLADE 500V 30A" H 0   0   50  0001 C CNN "Mfg_Description"
F 5 "Keystone" H 10000 4200 60  0001 C CNN "Mfg_Name"
F 6 "3557-2" H 10000 4200 60  0001 C CNN "Mfg_PN"
F 7 "-" H 10000 4200 60  0001 C CNN "Note"
F 8 "-" H 10000 4200 60  0001 C CNN "Spec"
	1    10000 4200
	-1   0    0    1   
$EndComp
$Comp
L Connector:TestPoint_2Pole W1
U 1 1 56CBE593
P 3400 3600
F 0 "W1" H 3400 3660 40  0000 C CNN
F 1 "TEST" H 3400 3530 40  0001 C CNN
F 2 "Measurement_Points:Test_Point_2Pads" H 3400 3600 60  0001 C CNN
F 3 "~" H 3400 3600 60  0000 C CNN
F 4 "-" H 0   0   50  0001 C CNN "Mfg_Description"
F 5 "-" H 0   0   50  0001 C CNN "Mfg_Name"
F 6 "-" H 0   0   50  0001 C CNN "Mfg_PN"
F 7 "-" H 0   0   50  0001 C CNN "Note"
F 8 "-" H 0   0   50  0001 C CNN "Spec"
	1    3400 3600
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint_2Pole W7
U 1 1 56CBF2AC
P 6850 5000
F 0 "W7" H 6850 5060 40  0000 C CNN
F 1 "TEST" H 6850 4930 40  0001 C CNN
F 2 "Measurement_Points:Test_Point_2Pads" H 6850 5000 60  0001 C CNN
F 3 "~" H 6850 5000 60  0000 C CNN
F 4 "-" H 0   0   50  0001 C CNN "Mfg_Description"
F 5 "-" H 0   0   50  0001 C CNN "Mfg_Name"
F 6 "-" H 0   0   50  0001 C CNN "Mfg_PN"
F 7 "-" H 0   0   50  0001 C CNN "Note"
F 8 "-" H 0   0   50  0001 C CNN "Spec"
	1    6850 5000
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR14
U 1 1 56CBF3B2
P 6850 5450
F 0 "#PWR14" H 6850 5200 50  0001 C CNN
F 1 "GND" H 6850 5300 50  0001 C CNN
F 2 "" H 6850 5450 60  0000 C CNN
F 3 "" H 6850 5450 60  0000 C CNN
	1    6850 5450
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint_2Pole W6
U 1 1 56CC03DD
P 6600 5000
F 0 "W6" H 6600 5060 40  0000 C CNN
F 1 "TEST" H 6600 4930 40  0001 C CNN
F 2 "Measurement_Points:Test_Point_2Pads" H 6600 5000 60  0001 C CNN
F 3 "~" H 6600 5000 60  0000 C CNN
F 4 "-" H 0   0   50  0001 C CNN "Mfg_Description"
F 5 "-" H 0   0   50  0001 C CNN "Mfg_Name"
F 6 "-" H 0   0   50  0001 C CNN "Mfg_PN"
F 7 "-" H 0   0   50  0001 C CNN "Note"
F 8 "-" H 0   0   50  0001 C CNN "Spec"
	1    6600 5000
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x02_Male P2
U 1 1 56E4B014
P 3450 8300
F 0 "P2" H 3500 8500 50  0000 C CNN
F 1 "pin header" V 3350 8250 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 3450 8300 60  0001 C CNN
F 3 "~" H 3450 8300 60  0000 C CNN
F 4 "1x2 pin header" H 0   -50 50  0001 C CNN "Mfg_Description"
F 5 "-" H 0   -50 50  0001 C CNN "Mfg_Name"
F 6 "-" H 0   -50 50  0001 C CNN "Mfg_PN"
F 7 "-" H 0   -50 50  0001 C CNN "Note"
F 8 "-" H 0   -50 50  0001 C CNN "Spec"
	1    3450 8300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR8
U 1 1 56E4B689
P 3800 8550
F 0 "#PWR8" H 3800 8300 50  0001 C CNN
F 1 "GND" H 3800 8400 50  0001 C CNN
F 2 "" H 3800 8550 60  0000 C CNN
F 3 "" H 3800 8550 60  0000 C CNN
	1    3800 8550
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint W4
U 1 1 56E52A3E
P 4500 7950
F 0 "W4" V 4500 8200 50  0000 C CNN
F 1 "TEST_1P" V 4600 8000 50  0001 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 4700 7950 50  0001 C CNN
F 3 "~" H 4700 7950 50  0000 C CNN
F 4 "-" H 0   0   50  0001 C CNN "Mfg_Description"
F 5 "-" H 0   0   50  0001 C CNN "Mfg_Name"
F 6 "-" H 0   0   50  0001 C CNN "Mfg_PN"
F 7 "-" H 0   0   50  0001 C CNN "Note"
F 8 "-" H 0   0   50  0001 C CNN "Spec"
	1    4500 7950
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint W5
U 1 1 56E52E4F
P 4500 8050
F 0 "W5" V 4500 8300 50  0000 C CNN
F 1 "TEST_1P" V 4400 8100 50  0001 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 4700 8050 50  0001 C CNN
F 3 "~" H 4700 8050 50  0000 C CNN
F 4 "-" H 0   0   50  0001 C CNN "Mfg_Description"
F 5 "-" H 0   0   50  0001 C CNN "Mfg_Name"
F 6 "-" H 0   0   50  0001 C CNN "Mfg_PN"
F 7 "-" H 0   0   50  0001 C CNN "Note"
F 8 "-" H 0   0   50  0001 C CNN "Spec"
	1    4500 8050
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint W3
U 1 1 56E4A2F0
P 4400 8400
F 0 "W3" H 4200 8550 50  0000 L CNN
F 1 "TEST_1P" H 4458 8429 50  0001 L CNN
F 2 "Measurement_Points:Measurement_Point_Round-TH_Small" H 4600 8400 50  0001 C CNN
F 3 "~" H 4600 8400 50  0000 C CNN
F 4 "-" H 0   0   50  0001 C CNN "Mfg_Description"
F 5 "-" H 0   0   50  0001 C CNN "Mfg_Name"
F 6 "-" H 0   0   50  0001 C CNN "Mfg_PN"
F 7 "-" H 0   0   50  0001 C CNN "Note"
F 8 "-" H 0   0   50  0001 C CNN "Spec"
	1    4400 8400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR10
U 1 1 56E4A519
P 4400 8550
F 0 "#PWR10" H 4400 8300 50  0001 C CNN
F 1 "GND" H 4408 8377 50  0001 C CNN
F 2 "" H 4400 8550 50  0000 C CNN
F 3 "" H 4400 8550 50  0000 C CNN
	1    4400 8550
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Zener D3
U 1 1 5712BF3F
P 4250 3500
F 0 "D3" H 4250 3600 50  0000 C CNN
F 1 "SMAZ16" H 4250 3400 50  0000 C CNN
F 2 "Diodes_SMD:SMA_Standard" H 4250 3500 60  0001 C CNN
F 3 "https://github.com/psas/launch-tower/blob/master/ltc3/doc/datasheets/semiconductors/Diodes_Inc-SMAZnn-1W_Surface_Mount_Zener_Diode.pdf" H 4250 3500 60  0001 C CNN
F 4 "-" H 0   0   50  0001 C CNN "Spec"
F 5 "-" H 4250 3325 50  0001 C CIN "Note"
F 6 "Diodes, Inc." H 0   0   50  0001 C CNN "Mfg_Name"
F 7 " SMAZ16-13-F " H 0   0   50  0001 C CNN "Mfg_PN"
F 8 "Zener 16V 1W ±5%" H 0   0   50  0001 C CNN "Mfg_Description"
	1    4250 3500
	0    -1   1    0   
$EndComp
$Comp
L Device:D_Zener D4
U 1 1 5712E30D
P 7250 3000
F 0 "D4" H 7250 3100 50  0000 C CNN
F 1 "SMAZ16" H 7250 2900 50  0000 C CNN
F 2 "Diodes_SMD:SMA_Standard" H 7250 3000 60  0001 C CNN
F 3 "https://github.com/psas/launch-tower/blob/master/ltc3/doc/datasheets/semiconductors/Diodes_Inc-SMAZnn-1W_Surface_Mount_Zener_Diode.pdf" H 7250 3000 60  0001 C CNN
F 4 "Zener 16V 1W ±5%" H 0   0   50  0001 C CNN "Mfg_Description"
F 5 "Diodes, Inc." H 0   0   50  0001 C CNN "Mfg_Name"
F 6 " SMAZ16-13-F " H 0   0   50  0001 C CNN "Mfg_PN"
F 7 "-" H 7250 2800 50  0001 C CIN "Note"
F 8 "-" H 0   0   50  0001 C CNN "Spec"
	1    7250 3000
	0    -1   -1   0   
$EndComp
$Comp
L Device:D_Zener D5
U 1 1 5712E57B
P 7250 3500
F 0 "D5" H 7250 3600 50  0000 C CNN
F 1 "SMAZ16" H 7250 3400 50  0000 C CNN
F 2 "Diodes_SMD:SMA_Standard" H 7250 3500 60  0001 C CNN
F 3 "https://github.com/psas/launch-tower/blob/master/ltc3/doc/datasheets/semiconductors/Diodes_Inc-SMAZnn-1W_Surface_Mount_Zener_Diode.pdf" H 7250 3500 60  0001 C CNN
F 4 "Zener 16V 1W ±5%" H 0   0   50  0001 C CNN "Mfg_Description"
F 5 "Diodes, Inc." H 0   0   50  0001 C CNN "Mfg_Name"
F 6 " SMAZ16-13-F " H 0   0   50  0001 C CNN "Mfg_PN"
F 7 "-" H 7250 3300 50  0001 C CIN "Note"
F 8 "-" H 0   0   50  0001 C CNN "Spec"
	1    7250 3500
	0    -1   1    0   
$EndComp
$Comp
L Connector:TestPoint W2
U 1 1 5713EEC1
P 4350 6750
F 0 "W2" V 4350 7000 50  0000 C CNN
F 1 "TEST_1P" V 4454 6824 50  0001 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 4550 6750 50  0001 C CNN
F 3 "~" H 4550 6750 50  0000 C CNN
F 4 "-" H 0   0   50  0001 C CNN "Mfg_Description"
F 5 "-" H 0   0   50  0001 C CNN "Mfg_Name"
F 6 "-" H 0   0   50  0001 C CNN "Mfg_PN"
F 7 "-" H 0   0   50  0001 C CNN "Note"
F 8 "-" H 0   0   50  0001 C CNN "Spec"
	1    4350 6750
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C10
U 1 1 5738DB41
P 7650 3250
F 0 "C10" H 7650 3350 50  0000 L CNN
F 1 "4.7n" H 7650 3150 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 7688 3100 50  0001 C CNN
F 3 "~" H 7650 3250 50  0000 C CNN
F 4 "100V X7R 10%" H 0   0   50  0001 C CNN "Mfg_Description"
F 5 "Murata" H 0   0   50  0001 C CNN "Mfg_Name"
F 6 "GRM219R72A472KA01D" H 0   0   50  0001 C CNN "Mfg_PN"
F 7 "-" H 0   0   50  0001 C CNN "Note"
F 8 "75V X7R" H 0   0   50  0001 C CNN "Spec"
	1    7650 3250
	1    0    0    -1  
$EndComp
$Comp
L MOSFET_SO8:Q_PMOS_SO8 Q3
U 1 1 572A8490
P 5250 2200
F 0 "Q3" V 5778 2150 50  0000 C CNN
F 1 "NDS9407" V 5687 2150 50  0000 C CNN
F 2 "Power_Integrations:SO-8" H 5700 2105 50  0001 L CNN
F 3 "https://github.com/psas/launch-tower/blob/master/ltc3/doc/datasheets/semiconductors/Fairchild-NDS9407-60V_PChannel_PowerTrench_MOSFET.pdf" H 5450 2150 50  0001 L CNN
F 4 "MOSFET P-CH 60V 3A" H 0   0   50  0001 C CNN "Mfg_Description"
F 5 "Fairchild" H 0   0   50  0001 C CNN "Mfg_Name"
F 6 "NDS9407" H 0   0   50  0001 C CNN "Mfg_PN"
F 7 "-" H 0   0   50  0001 C CNN "Note"
F 8 "-" H 0   0   50  0001 C CNN "Spec"
	1    5250 2200
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR6
U 1 1 573455B4
P 3400 3900
F 0 "#PWR6" H 3400 3650 50  0001 C CNN
F 1 "GND" H 3405 3727 50  0000 C CNN
F 2 "" H 3400 3900 50  0000 C CNN
F 3 "" H 3400 3900 50  0000 C CNN
	1    3400 3900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR1
U 1 1 579182C2
P 1350 2700
F 0 "#PWR1" H 1350 2450 50  0001 C CNN
F 1 "GND" H 1350 2550 50  0000 C CNN
F 2 "" H 1350 2700 50  0000 C CNN
F 3 "" H 1350 2700 50  0000 C CNN
	1    1350 2700
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male P9
U 1 1 578C7D35
P 16050 3650
F 0 "P9" H 16100 3900 50  0000 C CNN
F 1 "XH header" V 15950 3600 50  0000 C CNN
F 2 "Connectors_JST:JST_XH_B04B-XH-A_02x2.50mm_Straight" H 16050 3650 60  0001 C CNN
F 3 "https://github.com/psas/launch-tower/blob/master/ltc3/doc/datasheets/connectors/JST-XH-2.5mm_pitch_Disconnectable_Crimp_style_connectors.pdf" H 16050 3650 60  0001 C CNN
F 4 "4 pos vertical header" H 0   -50 50  0001 C CNN "Mfg_Description"
F 5 "JST" H 16050 3650 60  0001 C CNN "Mfg_Name"
F 6 "B4B-XH-A(LF)(SN)" H 16050 3650 60  0001 C CNN "Mfg_PN"
F 7 "to LTC" V 15850 3600 50  0000 C CIN "Note"
F 8 "-" H 16050 3650 60  0001 C CNN "Spec"
	1    16050 3650
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R25
U 1 1 57CCA534
P 2050 1700
F 0 "R25" V 1950 1700 50  0000 C CNN
F 1 "12k" V 2150 1700 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 1980 1700 50  0001 C CNN
F 3 "~" H 2050 1700 50  0001 C CNN
F 4 "1% 1/8W" H 0   0   50  0001 C CNN "Mfg_Description"
F 5 "Yageo" H 2050 1700 60  0001 C CNN "Mfg_Name"
F 6 "RC0805FR-0712KL" H 2050 1700 60  0001 C CNN "Mfg_PN"
F 7 "-" H 2050 1700 60  0001 C CNN "Note"
F 8 "1%" H 2050 1700 60  0001 C CNN "Spec"
	1    2050 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R27
U 1 1 57CCA5FB
P 2050 2150
F 0 "R27" V 1950 2150 50  0000 C CNN
F 1 "75k" V 2150 2150 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 1980 2150 50  0001 C CNN
F 3 "~" H 2050 2150 50  0000 C CNN
F 4 "1% 1/8W" H 0   0   50  0001 C CNN "Mfg_Description"
F 5 "Yageo" H 0   0   50  0001 C CNN "Mfg_Name"
F 6 "RC0805FR-0775KL" H 0   0   50  0001 C CNN "Mfg_PN"
F 7 "-" H 0   0   50  0001 C CNN "Note"
F 8 "1%" H 0   0   50  0001 C CNN "Spec"
	1    2050 2150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR4
U 1 1 57CCAA03
P 2250 1550
F 0 "#PWR4" H 2250 1300 50  0001 C CNN
F 1 "GND" H 2250 1400 50  0001 C CNN
F 2 "" H 2250 1550 50  0000 C CNN
F 3 "" H 2250 1550 50  0000 C CNN
	1    2250 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R26
U 1 1 57CCC48A
P 2450 1700
F 0 "R26" V 2350 1700 50  0000 C CNN
F 1 "12k" V 2550 1700 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 2380 1700 50  0001 C CNN
F 3 "~" H 2450 1700 50  0001 C CNN
F 4 "1% 1/8W" H 0   0   50  0001 C CNN "Mfg_Description"
F 5 "Yageo" H 2450 1700 60  0001 C CNN "Mfg_Name"
F 6 "RC0805FR-0712KL" H 2450 1700 60  0001 C CNN "Mfg_PN"
F 7 "-" H 2450 1700 60  0001 C CNN "Note"
F 8 "1%" H 2450 1700 60  0001 C CNN "Spec"
	1    2450 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R28
U 1 1 57CCC5AC
P 2450 2150
F 0 "R28" V 2350 2150 50  0000 C CNN
F 1 "75k" V 2550 2150 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 2380 2150 50  0001 C CNN
F 3 "~" H 2450 2150 50  0001 C CNN
F 4 "1% 1/8W" H 0   0   50  0001 C CNN "Mfg_Description"
F 5 "Yageo" H 0   0   50  0001 C CNN "Mfg_Name"
F 6 "RC0805FR-0775KL" H 0   0   50  0001 C CNN "Mfg_PN"
F 7 "-" H 0   0   50  0001 C CNN "Note"
F 8 "1%" H 0   0   50  0001 C CNN "Spec"
	1    2450 2150
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male P10
U 1 1 57CF6173
P 12050 2100
F 0 "P10" H 12100 2250 50  0000 C CNN
F 1 "XH connector" V 11950 2100 50  0000 C CNN
F 2 "~" H 12050 2100 60  0001 C CNN
F 3 "https://github.com/psas/launch-tower/blob/master/ltc3/doc/datasheets/connectors/JST-XH-2.5mm_pitch_Disconnectable_Crimp_style_connectors.pdf" H 12050 2100 60  0001 C CNN
F 4 "2 pos connector" H 0   -50 50  0001 C CNN "Mfg_Description"
F 5 "JST" H 12050 2100 60  0001 C CNN "Mfg_Name"
F 6 "XHP-2" H 12050 2100 60  0001 C CNN "Mfg_PN"
F 7 "OFFBOARD; mates to P11" V 12250 2100 50  0001 C CIN "Note"
F 8 "-" H 12050 2100 60  0001 C CNN "Spec"
	1    12050 2100
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male P11
U 1 1 57CFFDDA
P 12550 2100
F 0 "P11" H 12650 2250 50  0000 C CNN
F 1 "XH header" V 12500 2100 50  0000 C CNN
F 2 "Connectors_JST:JST_EH_B02B-EH-A_02x2.50mm_Straight" H 12550 2100 60  0001 C CNN
F 3 "https://github.com/psas/launch-tower/blob/master/ltc3/doc/datasheets/connectors/JST-XH-2.5mm_pitch_Disconnectable_Crimp_style_connectors.pdf" H 12550 2100 60  0001 C CNN
F 4 "2 pos vertical header" H 0   -50 50  0001 C CNN "Mfg_Description"
F 5 "JST" H 12550 2100 60  0001 C CNN "Mfg_Name"
F 6 "B2B-XH-A(LF)(SN)" H 12550 2100 60  0001 C CNN "Mfg_PN"
F 7 "to batt temp sense" V 12750 2100 50  0001 C CIN "Note"
F 8 "-" H 12550 2100 60  0001 C CNN "Spec"
	1    12550 2100
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR16
U 1 1 57D06FAE
P 14300 2550
F 0 "#PWR16" H 14300 2300 50  0001 C CNN
F 1 "GNDREF" H 14300 2400 50  0001 C CNN
F 2 "" H 14300 2550 50  0000 C CNN
F 3 "" H 14300 2550 50  0000 C CNN
	1    14300 2550
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR17
U 1 1 57D073A4
P 15200 2550
F 0 "#PWR17" H 15200 2300 50  0001 C CNN
F 1 "GNDREF" H 15200 2400 50  0001 C CNN
F 2 "" H 15200 2550 50  0000 C CNN
F 3 "" H 15200 2550 50  0000 C CNN
	1    15200 2550
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR18
U 1 1 57D080E8
P 15700 4000
F 0 "#PWR18" H 15700 3750 50  0001 C CNN
F 1 "GNDREF" H 15700 3850 50  0001 C CNN
F 2 "" H 15700 4000 50  0000 C CNN
F 3 "" H 15700 4000 50  0000 C CNN
	1    15700 4000
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male P8
U 1 1 57D8F6AB
P 900 2550
F 0 "P8" H 1000 2800 50  0000 C CNN
F 1 "MicroFit header" V 800 2600 50  0000 C CNN
F 2 "Connectors_Molex:Molex_Microfit3_Header_02x02_Straight_43045-0428" H 900 2550 60  0001 C CNN
F 3 "https://github.com/psas/launch-tower/blob/master/ltc3/doc/datasheets/connectors/Molex-43045-Micro_Fit_3_dual_row_vertical_through_hole_header.pdf" H 900 2550 60  0001 C CNN
F 4 "4 pos vertical header" H -15150 -1150 50  0001 C CNN "Mfg_Description"
F 5 "Molex" H 900 2550 60  0001 C CNN "Mfg_Name"
F 6 "43045-0428" H 900 2550 60  0001 C CNN "Mfg_PN"
F 7 "DC_IN_OUT (to Charge Cont.)" V 700 2300 50  0000 L CIN "Note"
F 8 "-" H 900 2550 60  0001 C CNN "Spec"
	1    900  2550
	1    0    0    1   
$EndComp
$Comp
L Connector:Conn_01x04_Male P7
U 1 1 57D905AB
P 900 1850
F 0 "P7" H 950 1500 50  0000 C CNN
F 1 "MicroFit header" V 800 1700 50  0000 C CNN
F 2 "Connectors_Molex:Molex_Microfit3_Header_02x02_Straight_43045-0428" H 900 1850 60  0001 C CNN
F 3 "https://github.com/psas/launch-tower/blob/master/ltc3/doc/datasheets/connectors/Molex-43045-Micro_Fit_3_dual_row_vertical_through_hole_header.pdf" H 900 1850 60  0001 C CNN
F 4 "4 pos vertical header" H -15150 -1850 50  0001 C CNN "Mfg_Description"
F 5 "Molex" H 900 1850 60  0001 C CNN "Mfg_Name"
F 6 "43045-0428" H 900 1850 60  0001 C CNN "Mfg_PN"
F 7 "DC_IN_OUT (to LTC)" V 700 2000 50  0000 R CIN "Note"
F 8 "-" H 900 1850 60  0001 C CNN "Spec"
	1    900  1850
	1    0    0    1   
$EndComp
$Comp
L Connector:Conn_01x04_Male P3
U 1 1 57D96F09
P 10350 5800
F 0 "P3" H 10450 6100 50  0000 C CNN
F 1 "MicroFit header" V 10250 5750 50  0000 C CNN
F 2 "Connectors_Molex:Molex_Microfit3_Header_02x02_Straight_43045-0428" H 10350 5800 60  0001 C CNN
F 3 "https://github.com/psas/launch-tower/blob/master/ltc3/doc/datasheets/connectors/Molex-43045-Micro_Fit_3_dual_row_vertical_through_hole_header.pdf" H 10350 5800 60  0001 C CNN
F 4 "4 pos vertical header" H -5700 2100 50  0001 C CNN "Mfg_Description"
F 5 "Molex" H 10350 5800 60  0001 C CNN "Mfg_Name"
F 6 "43045-0428" H 10350 5800 60  0001 C CNN "Mfg_PN"
F 7 "BATT_MAIN_CONN" V 10150 5750 50  0000 C CIN "Note"
F 8 "-" H 10350 5800 60  0001 C CNN "Spec"
	1    10350 5800
	-1   0    0    -1  
$EndComp
Text HLabel 4400 7200 0    50   3State ~ 0
BQ_XALERT
Text Notes 4300 6350 2    50   Italic 0
5.0VDC
Text Notes 4300 6450 2    50   Italic 0
3.3VDC
Text Notes 13000 3000 0    100  ~ 0
Voltage, Current, Temp Sense
Text Notes 13050 2750 0    50   Italic 0
I2C addr 0x9A
Text Notes 11900 2950 2    60   ~ 0
Temp. Sense, Battery, Off-Board
Text Notes 12900 9150 0    80   ~ 0
NOTES:\n* Page references are to the bq datasheet.\n* Do not assign footprints to off-board components.\n* bq77PL900 I2C addr is 0x10 (p.38).\n* D301 and D304 are used to peak detect transients,\n  and may not be necessary.  Include footprints on PCB,\n  but do not place parts.\n\nUNCONNECTED PINS\n* VOUT and IOUT are internally connected to ground\n  when disabled (pp. 30, 33).\n* XRST is an open-drain output with an internal\n  3k pull-up to VLOG (p. 35).
Text Notes 10850 4300 0    100  ~ 0
Main Battery
Text Notes 5350 6850 0    80   Italic 0
Li-Ion Cell\nBalance and\nProtection
Text Notes 10850 4550 0    60   Italic 0
* Off-Board\n* Voltage Min/Max: 25.6/33.6
Text Notes 5100 4250 0    60   Italic 0
Charge
Text Notes 6050 4250 0    60   Italic 0
Discharge
Text Label 1700 2700 0    50   ~ 0
VBATT
Text Label 3950 7000 0    50   ~ 0
I2C_DATA
Text Label 3950 7100 0    50   ~ 0
I2C_CLK
Text Label 15550 2450 1    50   ~ 0
I2C_DATA
Text Label 15450 2450 1    50   ~ 0
I2C_CLK
Wire Wire Line
	5450 3800 5500 3800
Wire Wire Line
	5500 3800 5600 3800
Wire Wire Line
	4500 5450 4500 5250
Wire Wire Line
	4500 5900 4500 5750
Wire Wire Line
	4750 5300 4750 5900
Wire Wire Line
	5000 5550 5600 5550
Wire Wire Line
	5600 5550 5800 5550
Wire Wire Line
	5000 5700 5000 5550
Wire Wire Line
	3800 8400 3650 8400
Wire Wire Line
	3800 8550 3800 8400
Wire Wire Line
	3800 8300 3650 8300
Wire Wire Line
	3800 7300 3800 8300
Wire Wire Line
	4650 6750 4350 6750
Wire Notes Line
	10850 9050 10850 4600
Wire Notes Line
	12400 9050 10850 9050
Wire Notes Line
	12400 4600 12400 9050
Wire Notes Line
	10850 4600 12400 4600
Wire Wire Line
	4400 8550 4400 8400
Wire Wire Line
	4500 8050 4650 8050
Wire Wire Line
	4500 7950 4650 7950
Wire Wire Line
	6850 5200 6850 5300
Wire Wire Line
	6850 5300 6850 5450
Wire Wire Line
	3150 3650 3150 6250
Wire Wire Line
	10000 5800 10000 5700
Wire Wire Line
	10000 5700 10000 4350
Wire Wire Line
	10000 2700 10000 4050
Wire Wire Line
	11600 8450 12000 8450
Wire Wire Line
	11600 6650 11600 8450
Wire Wire Line
	11250 6650 11600 6650
Wire Wire Line
	11650 8050 12000 8050
Wire Wire Line
	11650 6550 11650 8050
Wire Wire Line
	11250 6550 11650 6550
Wire Wire Line
	11700 7650 12000 7650
Wire Wire Line
	11700 6450 11700 7650
Wire Wire Line
	11250 6450 11700 6450
Wire Wire Line
	11750 7250 12000 7250
Wire Wire Line
	11750 6350 11750 7250
Wire Wire Line
	11250 6350 11750 6350
Wire Wire Line
	11800 6850 12000 6850
Wire Wire Line
	11800 6250 11800 6850
Wire Wire Line
	11250 6250 11800 6250
Wire Wire Line
	11850 6450 12000 6450
Wire Wire Line
	11850 6150 11850 6450
Wire Wire Line
	11250 6150 11850 6150
Wire Wire Line
	11250 6050 12000 6050
Wire Wire Line
	11850 5950 11850 5000
Wire Wire Line
	11250 5950 11850 5950
Wire Wire Line
	12000 8900 12000 8750
Wire Wire Line
	11500 8900 12000 8900
Wire Wire Line
	11500 5100 11500 5200
Wire Wire Line
	11500 5200 11500 8900
Wire Wire Line
	11250 5100 11500 5100
Wire Wire Line
	12000 5000 12000 5750
Wire Wire Line
	11250 5000 11500 5000
Wire Wire Line
	11500 5000 11850 5000
Wire Wire Line
	11850 5000 12000 5000
Wire Wire Line
	12000 8350 12000 8450
Wire Wire Line
	12000 8450 12000 8550
Wire Wire Line
	12000 7950 12000 8050
Wire Wire Line
	12000 8050 12000 8150
Wire Wire Line
	12000 7550 12000 7650
Wire Wire Line
	12000 7650 12000 7750
Wire Wire Line
	12000 7150 12000 7250
Wire Wire Line
	12000 7250 12000 7350
Wire Wire Line
	12000 6750 12000 6850
Wire Wire Line
	12000 6850 12000 6950
Wire Wire Line
	12000 6350 12000 6450
Wire Wire Line
	12000 6450 12000 6550
Wire Wire Line
	12000 5950 12000 6050
Wire Wire Line
	12000 6050 12000 6150
Wire Wire Line
	5200 3300 4650 3300
Wire Wire Line
	6300 3300 6850 3300
Wire Wire Line
	3150 3150 3150 3250
Wire Wire Line
	3150 3250 3150 3350
Wire Wire Line
	5850 9750 5850 10000
Wire Wire Line
	6450 9550 6450 9400
Wire Wire Line
	6350 9550 6450 9550
Wire Wire Line
	6350 9550 6350 9750
Wire Wire Line
	5850 9550 5850 9400
Wire Wire Line
	5950 9550 5850 9550
Wire Wire Line
	5950 9550 5950 9750
Wire Wire Line
	5700 5100 3600 5100
Wire Wire Line
	4000 5200 5500 5200
Wire Wire Line
	4500 5250 5400 5250
Wire Wire Line
	4750 5300 5300 5300
Wire Wire Line
	6300 9750 6350 9750
Wire Wire Line
	6350 9750 10000 9750
Wire Wire Line
	9750 7450 10150 7450
Wire Wire Line
	9650 7350 10150 7350
Wire Wire Line
	9550 7250 10150 7250
Wire Wire Line
	9450 7150 10150 7150
Wire Wire Line
	9450 7050 10150 7050
Wire Wire Line
	9550 6950 10150 6950
Wire Wire Line
	9650 6850 10150 6850
Wire Wire Line
	9750 6750 10150 6750
Wire Wire Line
	5950 8700 6450 8700
Wire Wire Line
	6450 8700 6450 8950
Wire Wire Line
	6450 8950 6450 9100
Wire Wire Line
	6300 8950 6450 8950
Wire Wire Line
	5850 8950 6000 8950
Wire Wire Line
	5850 8600 5850 8950
Wire Wire Line
	5850 8950 5850 9100
Wire Wire Line
	10150 5800 10000 5800
Wire Wire Line
	3700 7100 3700 6650
Wire Wire Line
	3700 6650 4650 6650
Wire Wire Line
	3550 7800 3550 7600
Wire Wire Line
	2600 7600 2600 7800
Wire Wire Line
	2600 7800 2600 7900
Wire Wire Line
	3550 6700 3550 6550
Wire Wire Line
	3550 7000 3550 7100
Wire Wire Line
	3550 7100 3550 7300
Wire Wire Line
	3550 6550 4650 6550
Wire Wire Line
	2900 7100 2900 7400
Wire Wire Line
	2600 7100 2600 7300
Wire Wire Line
	2600 7100 2900 7100
Wire Wire Line
	2900 7100 3550 7100
Wire Wire Line
	3550 7100 3700 7100
Wire Wire Line
	2600 7800 2900 7800
Wire Wire Line
	2900 7800 3550 7800
Wire Wire Line
	3975 7400 4650 7400
Wire Wire Line
	3600 5100 3600 5450
Wire Wire Line
	4000 5200 4000 5450
Wire Wire Line
	4650 7300 3800 7300
Wire Wire Line
	4400 7200 4650 7200
Wire Wire Line
	4650 7100 3950 7100
Wire Wire Line
	3950 7000 4650 7000
Wire Wire Line
	3975 7700 4650 7700
Wire Wire Line
	3975 7400 3975 7600
Wire Wire Line
	3975 7600 3975 7700
Wire Wire Line
	3975 7700 3975 7850
Wire Wire Line
	3975 7600 4650 7600
Wire Wire Line
	4500 7500 4650 7500
Wire Wire Line
	2400 6450 2400 6600
Wire Wire Line
	4650 6450 2400 6450
Wire Wire Line
	2000 6350 2000 6600
Wire Wire Line
	2000 6350 4500 6350
Wire Wire Line
	4500 6350 4650 6350
Wire Wire Line
	4500 6350 4500 6850
Wire Wire Line
	4500 6850 4500 7500
Wire Wire Line
	4650 6850 4500 6850
Wire Wire Line
	8550 4700 7650 4700
Wire Wire Line
	6100 4450 6100 5700
Wire Wire Line
	6000 4450 6000 4650
Wire Wire Line
	6000 4650 6000 5700
Wire Wire Line
	5900 4550 5900 5700
Wire Wire Line
	5800 5550 5800 5700
Wire Wire Line
	5700 5100 5700 5700
Wire Wire Line
	5600 5550 5600 5700
Wire Wire Line
	5500 5200 5500 5700
Wire Wire Line
	5400 5250 5400 5700
Wire Wire Line
	5300 5300 5300 5700
Wire Wire Line
	4750 5900 4500 5900
Wire Wire Line
	5900 2700 5900 3800
Wire Wire Line
	5900 3800 6000 3800
Wire Wire Line
	6000 3800 6050 3800
Wire Wire Line
	5600 3800 5600 2700
Wire Wire Line
	6600 3800 6600 2700
Wire Wire Line
	6450 3800 6600 3800
Wire Wire Line
	4900 2700 4900 3800
Wire Wire Line
	4900 3800 5050 3800
Wire Wire Line
	6850 2700 6850 2850
Wire Wire Line
	6300 3000 6300 3300
Wire Wire Line
	6300 3300 6300 3500
Wire Wire Line
	5200 3000 5200 3300
Wire Wire Line
	5200 3300 5200 3500
Wire Wire Line
	4650 2700 4650 2850
Wire Wire Line
	5450 2700 5500 2700
Wire Wire Line
	5500 2700 5600 2700
Wire Wire Line
	5600 2700 5750 2700
Wire Wire Line
	5750 2700 5900 2700
Wire Wire Line
	5900 2700 6000 2700
Wire Wire Line
	6000 2700 6050 2700
Wire Wire Line
	7650 4700 7650 6350
Wire Wire Line
	8950 2700 8950 2850
Wire Wire Line
	8550 2700 8550 2850
Wire Wire Line
	8550 3150 8550 3250
Wire Wire Line
	8550 3250 8550 4700
Wire Wire Line
	8950 3800 8950 3650
Wire Wire Line
	8550 3250 8950 3250
Wire Wire Line
	8950 3150 8950 3250
Wire Wire Line
	8950 3250 8950 3350
Wire Wire Line
	2750 4550 5900 4550
Wire Wire Line
	15650 1800 15650 1500
Wire Wire Line
	15650 1100 15650 1200
Wire Wire Line
	13300 1700 13550 1700
Wire Wire Line
	13300 1100 13300 1700
Wire Wire Line
	2700 1100 13300 1100
Wire Wire Line
	13400 1600 13550 1600
Wire Wire Line
	13400 1000 13400 1600
Wire Wire Line
	1800 1000 13400 1000
Wire Wire Line
	11700 1650 11700 2100
Wire Wire Line
	11700 2100 11850 2100
Wire Wire Line
	11700 2650 11700 2200
Wire Wire Line
	11700 2200 11850 2200
Wire Wire Line
	10600 2650 10600 2500
Wire Wire Line
	10600 2650 11050 2650
Wire Wire Line
	11050 2650 11700 2650
Wire Wire Line
	11050 2250 11050 2650
Wire Wire Line
	11050 1650 11050 1850
Wire Wire Line
	10600 1650 11050 1650
Wire Wire Line
	11050 1650 11700 1650
Wire Wire Line
	10600 2050 10750 2050
Wire Wire Line
	10600 1650 10600 2050
Wire Wire Line
	10600 2050 10600 2200
Wire Wire Line
	14300 1100 15200 1100
Wire Wire Line
	15200 1100 15650 1100
Wire Wire Line
	15200 1200 15200 1100
Wire Wire Line
	14300 2550 14300 2400
Wire Wire Line
	14300 950  14300 1100
Wire Wire Line
	14300 1100 14300 1200
Wire Notes Line
	13000 2800 13000 750 
Wire Notes Line
	15950 2800 13000 2800
Wire Notes Line
	15950 750  15950 2800
Wire Notes Line
	13000 750  15950 750 
Wire Wire Line
	15050 2000 15450 2000
Wire Wire Line
	15050 1900 15550 1900
Wire Wire Line
	15050 1700 15200 1700
Wire Wire Line
	15200 1500 15200 1700
Wire Wire Line
	15200 1700 15200 2550
Wire Wire Line
	7650 6350 6750 6350
Wire Wire Line
	10000 5900 10150 5900
Wire Wire Line
	10000 9750 10000 6000
Wire Wire Line
	10000 6000 10000 5900
Wire Wire Line
	6100 4450 6850 4450
Wire Wire Line
	4650 4450 6000 4450
Wire Wire Line
	6850 3800 7250 3800
Wire Wire Line
	7250 3800 7650 3800
Wire Wire Line
	6850 3150 6850 3300
Wire Wire Line
	6850 3300 6850 3800
Wire Wire Line
	6850 3800 6850 4000
Wire Wire Line
	7650 2700 7650 3100
Wire Wire Line
	7650 3800 7650 3400
Wire Wire Line
	7250 3650 7250 3800
Wire Wire Line
	7250 3150 7250 3350
Wire Wire Line
	7250 2700 7250 2850
Wire Wire Line
	4650 3800 4250 3800
Wire Wire Line
	4250 3800 3850 3800
Wire Wire Line
	4650 3150 4650 3300
Wire Wire Line
	4650 3300 4650 3800
Wire Wire Line
	4650 3800 4650 3975
Wire Wire Line
	3850 2700 3850 3100
Wire Wire Line
	3850 3800 3850 3400
Wire Wire Line
	4250 3650 4250 3800
Wire Wire Line
	4250 3150 4250 3350
Wire Wire Line
	4250 2700 4250 2850
Wire Wire Line
	1600 3800 1600 3650
Wire Wire Line
	2750 3250 1600 3250
Wire Wire Line
	2750 3150 2750 3250
Wire Wire Line
	2750 3250 2750 4550
Wire Wire Line
	1600 3150 1600 3250
Wire Wire Line
	1600 3250 1600 3350
Wire Wire Line
	1600 1750 1600 2450
Wire Wire Line
	1600 2450 1600 2700
Wire Wire Line
	1600 2700 1600 2850
Wire Wire Line
	2750 2700 2750 2850
Wire Wire Line
	6850 4300 6850 4450
Wire Wire Line
	6850 4450 6850 4800
Wire Wire Line
	1600 2700 2050 2700
Wire Wire Line
	2050 2700 2100 2700
Wire Wire Line
	2400 2700 2450 2700
Wire Wire Line
	2450 2700 2750 2700
Wire Wire Line
	2750 2700 3150 2700
Wire Wire Line
	3150 2700 3850 2700
Wire Wire Line
	3850 2700 4250 2700
Wire Wire Line
	4250 2700 4450 2700
Wire Wire Line
	4450 2700 4650 2700
Wire Wire Line
	4650 2700 4900 2700
Wire Wire Line
	4900 2700 5050 2700
Wire Wire Line
	5450 8700 5550 8700
Wire Wire Line
	5550 8700 5650 8700
Wire Wire Line
	5650 8700 5750 8700
Wire Wire Line
	2400 7050 2000 7050
Wire Wire Line
	2000 6900 2000 7050
Wire Wire Line
	2000 7050 2000 7200
Wire Wire Line
	2400 6900 2400 7050
Wire Wire Line
	3600 5900 4000 5900
Wire Wire Line
	4000 5900 4000 5750
Wire Wire Line
	3600 5750 3600 5900
Wire Wire Line
	3600 5900 3600 6000
Wire Wire Line
	9750 5350 9750 6750
Wire Wire Line
	9650 5850 9650 6850
Wire Wire Line
	9550 6350 9550 6950
Wire Wire Line
	9750 8850 9750 7450
Wire Wire Line
	9650 8350 9650 7350
Wire Wire Line
	9550 7850 9550 7250
Wire Wire Line
	9450 7350 9450 7150
Wire Wire Line
	9450 6850 9450 7050
Wire Wire Line
	7750 8850 8350 8850
Wire Wire Line
	7750 7450 7750 8850
Wire Wire Line
	6750 7450 7750 7450
Wire Wire Line
	7850 7350 6750 7350
Wire Wire Line
	7850 8350 7850 7350
Wire Wire Line
	8350 8350 7850 8350
Wire Wire Line
	7950 7850 8350 7850
Wire Wire Line
	7950 7250 7950 7850
Wire Wire Line
	6750 7250 7950 7250
Wire Wire Line
	8050 7150 6750 7150
Wire Wire Line
	8050 7350 8050 7150
Wire Wire Line
	8350 7350 8050 7350
Wire Wire Line
	8050 7050 6750 7050
Wire Wire Line
	8050 6850 8050 7050
Wire Wire Line
	8350 6850 8050 6850
Wire Wire Line
	7950 6950 6750 6950
Wire Wire Line
	7950 6350 7950 6950
Wire Wire Line
	8350 6350 7950 6350
Wire Wire Line
	7850 6850 6750 6850
Wire Wire Line
	7850 5850 7850 6850
Wire Wire Line
	8350 5850 7850 5850
Wire Wire Line
	7750 5350 8350 5350
Wire Wire Line
	7750 6750 7750 5350
Wire Wire Line
	6750 6750 6850 6750
Wire Wire Line
	6850 6750 7750 6750
Wire Wire Line
	6850 6450 6750 6450
Wire Wire Line
	6850 6550 6750 6550
Wire Wire Line
	6850 6450 6850 6550
Wire Wire Line
	6850 6550 6850 6650
Wire Wire Line
	6850 6650 6850 6750
Wire Wire Line
	6850 6650 6750 6650
Wire Wire Line
	8650 8850 8750 8850
Wire Wire Line
	8750 8850 9750 8850
Wire Wire Line
	8750 8750 8750 8850
Wire Wire Line
	8650 8350 8750 8350
Wire Wire Line
	8750 8350 9650 8350
Wire Wire Line
	8750 8250 8750 8350
Wire Wire Line
	8750 8350 8750 8450
Wire Wire Line
	8650 7850 8750 7850
Wire Wire Line
	8750 7850 9550 7850
Wire Wire Line
	8750 7750 8750 7850
Wire Wire Line
	8750 7850 8750 7950
Wire Wire Line
	8650 7350 8750 7350
Wire Wire Line
	8750 7350 9450 7350
Wire Wire Line
	8750 7250 8750 7350
Wire Wire Line
	8750 7350 8750 7450
Wire Wire Line
	8650 6850 8750 6850
Wire Wire Line
	8750 6850 9450 6850
Wire Wire Line
	8750 6750 8750 6850
Wire Wire Line
	8750 6850 8750 6950
Wire Wire Line
	8650 6350 8750 6350
Wire Wire Line
	8750 6350 9550 6350
Wire Wire Line
	8750 6250 8750 6350
Wire Wire Line
	8750 6350 8750 6450
Wire Wire Line
	8650 5850 8750 5850
Wire Wire Line
	8750 5850 9650 5850
Wire Wire Line
	8750 5750 8750 5850
Wire Wire Line
	8750 5850 8750 5950
Wire Wire Line
	8750 5350 8750 5450
Wire Wire Line
	8650 5350 8750 5350
Wire Wire Line
	8750 5350 9750 5350
Wire Wire Line
	5750 8700 5750 8600
Wire Wire Line
	5650 8700 5650 8600
Wire Wire Line
	5550 8700 5550 8600
Wire Wire Line
	5450 8600 5450 8700
Wire Wire Line
	5450 8700 5450 8800
Wire Wire Line
	4650 4275 4650 4450
Wire Wire Line
	6600 4800 6600 4650
Wire Wire Line
	6600 4650 6000 4650
Wire Wire Line
	6600 5200 6600 5300
Wire Wire Line
	6600 5300 6850 5300
Wire Wire Line
	4450 1900 4600 1900
Wire Wire Line
	4900 1900 5050 1900
Wire Wire Line
	3400 3250 3150 3250
Wire Wire Line
	5750 1900 5550 1900
Wire Wire Line
	5750 1900 5750 2700
Wire Wire Line
	4450 1900 4450 2700
Wire Wire Line
	3150 2850 3150 2700
Wire Wire Line
	3150 6250 4650 6250
Wire Wire Line
	3400 2350 3400 3250
Wire Wire Line
	3400 3250 3400 3400
Wire Wire Line
	3400 2350 5250 2350
Wire Wire Line
	5250 2350 5250 2200
Wire Wire Line
	3400 3900 3400 3800
Wire Wire Line
	1100 2550 1200 2550
Wire Wire Line
	1200 2550 1350 2550
Wire Wire Line
	1350 1850 1350 2550
Wire Wire Line
	1350 2550 1350 2700
Wire Wire Line
	1100 1850 1200 1850
Wire Wire Line
	1200 1850 1350 1850
Wire Wire Line
	1100 1750 1200 1750
Wire Wire Line
	1200 1750 1600 1750
Wire Wire Line
	1100 2450 1200 2450
Wire Wire Line
	1200 2450 1600 2450
Wire Wire Line
	15550 1900 15550 3750
Wire Wire Line
	15450 2000 15450 3650
Wire Wire Line
	5850 9750 5950 9750
Wire Wire Line
	5950 9750 6000 9750
Wire Wire Line
	6450 2700 6600 2700
Wire Wire Line
	6600 2700 6850 2700
Wire Wire Line
	6850 2700 7250 2700
Wire Wire Line
	7250 2700 7650 2700
Wire Wire Line
	7650 2700 8550 2700
Wire Wire Line
	8550 2700 8950 2700
Wire Wire Line
	8950 2700 10000 2700
Wire Wire Line
	15650 1800 15050 1800
Wire Wire Line
	15700 2900 15700 3550
Wire Wire Line
	15700 3550 15850 3550
Wire Wire Line
	15700 4000 15700 3850
Wire Wire Line
	15700 3850 15850 3850
Wire Wire Line
	15550 3750 15850 3750
Wire Wire Line
	15450 3650 15850 3650
Wire Wire Line
	5950 8600 5950 8700
Wire Wire Line
	2050 1850 2050 1950
Wire Wire Line
	2050 1950 2050 2000
Wire Wire Line
	2250 1550 2250 1400
Wire Wire Line
	2050 1400 2250 1400
Wire Wire Line
	2250 1400 2450 1400
Wire Wire Line
	2050 1400 2050 1550
Wire Wire Line
	2050 2300 2050 2700
Wire Wire Line
	2450 1850 2450 1950
Wire Wire Line
	2450 1950 2450 2000
Wire Wire Line
	2450 2300 2450 2700
Wire Wire Line
	2450 1400 2450 1550
Wire Wire Line
	1800 1000 1800 1950
Wire Wire Line
	1800 1950 2050 1950
Wire Wire Line
	2700 1100 2700 1950
Wire Wire Line
	2700 1950 2450 1950
Wire Notes Line
	10400 1500 12300 1500
Wire Notes Line
	12300 1500 12300 2800
Wire Notes Line
	12300 2800 10400 2800
Wire Notes Line
	10400 2800 10400 1500
Wire Wire Line
	12750 2100 13300 2100
Wire Wire Line
	13300 2100 13300 1800
Wire Wire Line
	13300 1800 13550 1800
Wire Wire Line
	13550 1900 13400 1900
Wire Wire Line
	13400 1900 13400 2200
Wire Wire Line
	13400 2200 12750 2200
Wire Wire Line
	5050 1900 5050 1950
Wire Wire Line
	5050 1950 5050 2000
Wire Wire Line
	5550 1900 5550 1950
Wire Wire Line
	5550 1950 5550 2000
Wire Wire Line
	5550 2000 5550 2050
Wire Wire Line
	15700 2900 16200 2900
Wire Wire Line
	16200 2900 16200 950 
Wire Wire Line
	16200 950  14300 950 
Wire Wire Line
	5450 2600 5500 2600
Wire Wire Line
	5500 2600 5500 2700
Wire Wire Line
	6050 2600 6000 2600
Wire Wire Line
	6000 2600 6000 2700
Wire Wire Line
	5450 3900 5500 3900
Wire Wire Line
	5500 3900 5500 3800
Wire Wire Line
	6050 3900 6000 3900
Wire Wire Line
	6000 3900 6000 3800
Wire Wire Line
	1100 2350 1200 2350
Wire Wire Line
	1200 2350 1200 2450
Wire Wire Line
	1100 2650 1200 2650
Wire Wire Line
	1200 2650 1200 2550
Wire Wire Line
	1100 1650 1200 1650
Wire Wire Line
	1200 1650 1200 1750
Wire Wire Line
	1100 1950 1200 1950
Wire Wire Line
	1200 1950 1200 1850
Wire Wire Line
	10000 5700 10150 5700
Wire Wire Line
	10000 6000 10150 6000
Wire Wire Line
	11250 5200 11500 5200
Wire Wire Line
	11250 4900 11500 4900
Wire Wire Line
	11500 4900 11500 5000
Connection ~ 5600 5550
Connection ~ 12000 8450
Connection ~ 12000 8050
Connection ~ 12000 7650
Connection ~ 12000 7250
Connection ~ 12000 6850
Connection ~ 12000 6450
Connection ~ 12000 6050
Connection ~ 11850 5000
Connection ~ 3150 3250
Connection ~ 3975 7700
Connection ~ 6450 8950
Connection ~ 5850 8950
Connection ~ 6850 6650
Connection ~ 6850 6750
Connection ~ 3550 7100
Connection ~ 2900 7100
Connection ~ 2900 7800
Connection ~ 2600 7800
Connection ~ 3975 7600
Connection ~ 2000 7050
Connection ~ 4500 6850
Connection ~ 4500 6350
Connection ~ 5900 2700
Connection ~ 5600 2700
Connection ~ 6600 2700
Connection ~ 4900 2700
Connection ~ 6300 3300
Connection ~ 6850 3300
Connection ~ 5200 3300
Connection ~ 4650 3300
Connection ~ 8950 2700
Connection ~ 8550 2700
Connection ~ 8550 3250
Connection ~ 8950 3250
Connection ~ 11050 2650
Connection ~ 15200 1100
Connection ~ 11050 1650
Connection ~ 10600 2050
Connection ~ 15200 1700
Connection ~ 14300 1100
Connection ~ 1600 2700
Connection ~ 7650 2700
Connection ~ 7250 3800
Connection ~ 6850 3800
Connection ~ 7250 2700
Connection ~ 6850 2700
Connection ~ 2750 3250
Connection ~ 1600 3250
Connection ~ 2750 2700
Connection ~ 3850 2700
Connection ~ 4250 3800
Connection ~ 4650 3800
Connection ~ 4250 2700
Connection ~ 4650 2700
Connection ~ 3600 5900
Connection ~ 8750 5350
Connection ~ 8750 8850
Connection ~ 6850 6550
Connection ~ 8750 8350
Connection ~ 8750 7850
Connection ~ 8750 7350
Connection ~ 8750 6850
Connection ~ 8750 6350
Connection ~ 8750 5850
Connection ~ 5650 8700
Connection ~ 5550 8700
Connection ~ 5450 8700
Connection ~ 6000 4650
Connection ~ 6850 5300
Connection ~ 6850 4450
Connection ~ 5750 2700
Connection ~ 4450 2700
Connection ~ 3150 2700
Connection ~ 3400 3250
Connection ~ 1350 2550
Connection ~ 1600 2450
Connection ~ 5950 9750
Connection ~ 6350 9750
Connection ~ 2050 2700
Connection ~ 2450 2700
Connection ~ 2250 1400
Connection ~ 2050 1950
Connection ~ 2450 1950
Connection ~ 5050 1950
Connection ~ 5550 1950
Connection ~ 5550 2000
Connection ~ 5500 2700
Connection ~ 6000 2700
Connection ~ 5500 3800
Connection ~ 6000 3800
Connection ~ 1200 2450
Connection ~ 1200 2550
Connection ~ 1200 1750
Connection ~ 1200 1850
Connection ~ 10000 5700
Connection ~ 10000 6000
Connection ~ 11500 5200
Connection ~ 11500 5000
Wire Wire Line
	2900 7500 2900 7800
$EndSCHEMATC
