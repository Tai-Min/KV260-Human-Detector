EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector_Generic:Conn_01x04 J1
U 1 1 61CB4AE2
P 5850 3700
F 0 "J1" H 5930 3692 50  0000 L CNN
F 1 "MOTOR CON" H 5930 3601 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 5850 3700 50  0001 C CNN
F 3 "~" H 5850 3700 50  0001 C CNN
	1    5850 3700
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0101
U 1 1 61CB74AA
P 7350 4300
F 0 "#PWR0101" H 7350 4150 50  0001 C CNN
F 1 "+3.3V" V 7365 4428 50  0000 L CNN
F 2 "" H 7350 4300 50  0001 C CNN
F 3 "" H 7350 4300 50  0001 C CNN
	1    7350 4300
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 61CB7C53
P 6750 3150
F 0 "#PWR0102" H 6750 2900 50  0001 C CNN
F 1 "GND" H 6755 2977 50  0000 C CNN
F 2 "" H 6750 3150 50  0001 C CNN
F 3 "" H 6750 3150 50  0001 C CNN
	1    6750 3150
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J3
U 1 1 61CB87B3
P 7000 3100
F 0 "J3" H 6918 2775 50  0000 C CNN
F 1 "SUPPLY CON" H 6918 2866 50  0000 C CNN
F 2 "Connector_Phoenix_MSTB:PhoenixContact_MSTBA_2,5_2-G-5,08_1x02_P5.08mm_Horizontal" H 7000 3100 50  0001 C CNN
F 3 "~" H 7000 3100 50  0001 C CNN
	1    7000 3100
	1    0    0    1   
$EndComp
$Comp
L power:GNDD #PWR0103
U 1 1 61CB901F
P 7350 4400
F 0 "#PWR0103" H 7350 4150 50  0001 C CNN
F 1 "GNDD" V 7354 4290 50  0000 R CNN
F 2 "" H 7350 4400 50  0001 C CNN
F 3 "" H 7350 4400 50  0001 C CNN
	1    7350 4400
	0    -1   -1   0   
$EndComp
$Comp
L power:GNDD #PWR0104
U 1 1 61CBA6AB
P 6650 4400
F 0 "#PWR0104" H 6650 4150 50  0001 C CNN
F 1 "GNDD" V 6654 4290 50  0000 R CNN
F 2 "" H 6650 4400 50  0001 C CNN
F 3 "" H 6650 4400 50  0001 C CNN
	1    6650 4400
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR0105
U 1 1 61CBC0D7
P 6650 4300
F 0 "#PWR0105" H 6650 4150 50  0001 C CNN
F 1 "+3.3V" V 6665 4428 50  0000 L CNN
F 2 "" H 6650 4300 50  0001 C CNN
F 3 "" H 6650 4300 50  0001 C CNN
	1    6650 4300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6650 4300 6750 4300
Wire Wire Line
	6650 4400 6750 4400
Wire Wire Line
	7250 4300 7350 4300
Wire Wire Line
	7250 4400 7350 4400
Text GLabel 7350 4900 2    50   Output ~ 0
dir
Text GLabel 7350 4800 2    50   Output ~ 0
step
Text GLabel 7350 4700 2    50   Output ~ 0
ena
Text GLabel 6650 4500 0    50   Input ~ 0
stop1
Text GLabel 6650 4600 0    50   Input ~ 0
stop2
Text GLabel 7350 4500 2    50   BiDi ~ 0
sda
Text GLabel 7350 4600 2    50   Output ~ 0
scl
Wire Wire Line
	6800 3100 6750 3100
Wire Wire Line
	6750 3100 6750 3150
$Comp
L power:+12V #PWR0106
U 1 1 61CBE68E
P 6750 2950
F 0 "#PWR0106" H 6750 2800 50  0001 C CNN
F 1 "+12V" H 6765 3123 50  0000 C CNN
F 2 "" H 6750 2950 50  0001 C CNN
F 3 "" H 6750 2950 50  0001 C CNN
	1    6750 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 3000 6750 3000
Wire Wire Line
	6750 3000 6750 2950
$Comp
L Driver_Motor:Pololu_Breakout_A4988 A1
U 1 1 61CBF7BC
P 5050 3700
F 0 "A1" H 5550 4250 50  0000 C CNN
F 1 "Pololu_Breakout_A4988" H 5950 4150 50  0000 C CNN
F 2 "Module:Pololu_Breakout-16_15.2x20.3mm" H 5325 2950 50  0001 L CNN
F 3 "https://www.pololu.com/product/2980/pictures" H 5150 3400 50  0001 C CNN
	1    5050 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 3400 4600 3400
Wire Wire Line
	4600 3400 4600 3300
Wire Wire Line
	4600 3300 4650 3300
Wire Wire Line
	6650 4500 6750 4500
Wire Wire Line
	6650 4600 6750 4600
Wire Wire Line
	7250 4500 7350 4500
Wire Wire Line
	7250 4600 7350 4600
$Comp
L power:GNDD #PWR0107
U 1 1 61CC26D4
P 5050 4600
F 0 "#PWR0107" H 5050 4350 50  0001 C CNN
F 1 "GNDD" H 5054 4445 50  0000 C CNN
F 2 "" H 5050 4600 50  0001 C CNN
F 3 "" H 5050 4600 50  0001 C CNN
	1    5050 4600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 61CC31A9
P 5250 4600
F 0 "#PWR0108" H 5250 4350 50  0001 C CNN
F 1 "GND" H 5255 4427 50  0000 C CNN
F 2 "" H 5250 4600 50  0001 C CNN
F 3 "" H 5250 4600 50  0001 C CNN
	1    5250 4600
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0109
U 1 1 61CC3B58
P 5250 2900
F 0 "#PWR0109" H 5250 2750 50  0001 C CNN
F 1 "+12V" H 5265 3073 50  0000 C CNN
F 2 "" H 5250 2900 50  0001 C CNN
F 3 "" H 5250 2900 50  0001 C CNN
	1    5250 2900
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0110
U 1 1 61CC4DC5
P 5050 2900
F 0 "#PWR0110" H 5050 2750 50  0001 C CNN
F 1 "+3.3V" H 5065 3073 50  0000 C CNN
F 2 "" H 5050 2900 50  0001 C CNN
F 3 "" H 5050 2900 50  0001 C CNN
	1    5050 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 3000 5250 2900
Wire Wire Line
	5050 3000 5050 2900
Wire Wire Line
	5250 4500 5250 4600
Wire Wire Line
	5050 4500 5050 4600
Wire Wire Line
	5650 3600 5550 3600
Wire Wire Line
	5650 3700 5550 3700
Wire Wire Line
	5650 3800 5550 3800
Wire Wire Line
	5650 3900 5550 3900
Text GLabel 4550 3700 0    50   Input ~ 0
step
Text GLabel 4550 3800 0    50   Input ~ 0
dir
Text GLabel 4550 3600 0    50   Input ~ 0
ena
Wire Wire Line
	4550 3600 4650 3600
Wire Wire Line
	4550 3700 4650 3700
Wire Wire Line
	4550 3800 4650 3800
$Comp
L Connector_Generic:Conn_01x04 J6
U 1 1 61CCA868
P 7150 3700
F 0 "J6" H 7230 3692 50  0000 L CNN
F 1 "I2C CON" H 7230 3601 50  0000 L CNN
F 2 "Connector_JST:JST_XH_B4B-XH-AM_1x04_P2.50mm_Vertical" H 7150 3700 50  0001 C CNN
F 3 "~" H 7150 3700 50  0001 C CNN
	1    7150 3700
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0111
U 1 1 61CCBBFC
P 6850 3600
F 0 "#PWR0111" H 6850 3450 50  0001 C CNN
F 1 "+3.3V" V 6865 3728 50  0000 L CNN
F 2 "" H 6850 3600 50  0001 C CNN
F 3 "" H 6850 3600 50  0001 C CNN
	1    6850 3600
	0    -1   -1   0   
$EndComp
$Comp
L power:GNDD #PWR0112
U 1 1 61CCC9DC
P 6850 3700
F 0 "#PWR0112" H 6850 3450 50  0001 C CNN
F 1 "GNDD" V 6854 3590 50  0000 R CNN
F 2 "" H 6850 3700 50  0001 C CNN
F 3 "" H 6850 3700 50  0001 C CNN
	1    6850 3700
	0    1    1    0   
$EndComp
Text GLabel 6850 3800 0    50   BiDi ~ 0
sda
Text GLabel 6850 3900 0    50   Input ~ 0
scl
Wire Wire Line
	6850 3600 6950 3600
Wire Wire Line
	6850 3700 6950 3700
Wire Wire Line
	6850 3800 6950 3800
Wire Wire Line
	6850 3900 6950 3900
$Comp
L Device:R R1
U 1 1 61D04563
P 5950 2650
F 0 "R1" H 6020 2696 50  0000 L CNN
F 1 "4.7k" H 6020 2605 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 5880 2650 50  0001 C CNN
F 3 "~" H 5950 2650 50  0001 C CNN
	1    5950 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 61D05133
P 6250 2650
F 0 "R2" H 6320 2696 50  0000 L CNN
F 1 "4.7k" H 6320 2605 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 6180 2650 50  0001 C CNN
F 3 "~" H 6250 2650 50  0001 C CNN
	1    6250 2650
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0113
U 1 1 61D053E9
P 6100 2400
F 0 "#PWR0113" H 6100 2250 50  0001 C CNN
F 1 "+3.3V" H 6115 2573 50  0000 C CNN
F 2 "" H 6100 2400 50  0001 C CNN
F 3 "" H 6100 2400 50  0001 C CNN
	1    6100 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 2450 5950 2500
Wire Wire Line
	5950 2450 6100 2450
Wire Wire Line
	6100 2450 6100 2400
Wire Wire Line
	6100 2450 6250 2450
Wire Wire Line
	6250 2450 6250 2500
Connection ~ 6100 2450
Text GLabel 5950 2900 3    50   UnSpc ~ 0
sda
Text GLabel 6250 2900 3    50   UnSpc ~ 0
scl
Wire Wire Line
	6250 2800 6250 2900
Wire Wire Line
	5950 2800 5950 2900
$Comp
L Connector_Generic:Conn_01x02 J4
U 1 1 61D0F319
P 7150 2100
F 0 "J4" H 7230 2092 50  0000 L CNN
F 1 "STOP1 CON" H 7230 2001 50  0000 L CNN
F 2 "Connector_JST:JST_XH_B2B-XH-AM_1x02_P2.50mm_Vertical" H 7150 2100 50  0001 C CNN
F 3 "~" H 7150 2100 50  0001 C CNN
	1    7150 2100
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J5
U 1 1 61D0FA68
P 7150 2350
F 0 "J5" H 7230 2342 50  0000 L CNN
F 1 "STOP2 CON" H 7230 2251 50  0000 L CNN
F 2 "Connector_JST:JST_XH_B2B-XH-AM_1x02_P2.50mm_Vertical" H 7150 2350 50  0001 C CNN
F 3 "~" H 7150 2350 50  0001 C CNN
	1    7150 2350
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0114
U 1 1 61D0FD37
P 6850 2450
F 0 "#PWR0114" H 6850 2200 50  0001 C CNN
F 1 "GNDD" V 6854 2340 50  0000 R CNN
F 2 "" H 6850 2450 50  0001 C CNN
F 3 "" H 6850 2450 50  0001 C CNN
	1    6850 2450
	0    1    1    0   
$EndComp
$Comp
L power:GNDD #PWR0115
U 1 1 61D1099C
P 6850 2200
F 0 "#PWR0115" H 6850 1950 50  0001 C CNN
F 1 "GNDD" V 6854 2090 50  0000 R CNN
F 2 "" H 6850 2200 50  0001 C CNN
F 3 "" H 6850 2200 50  0001 C CNN
	1    6850 2200
	0    1    1    0   
$EndComp
Wire Wire Line
	6950 2200 6850 2200
Wire Wire Line
	6950 2450 6850 2450
Text GLabel 6850 2100 0    50   Output ~ 0
stop1
Text GLabel 6850 2350 0    50   Output ~ 0
stop2
Wire Wire Line
	6850 2350 6950 2350
Wire Wire Line
	6850 2100 6950 2100
$Comp
L Connector_Generic:Conn_02x06_Odd_Even J2
U 1 1 61D1ACA3
P 7050 4500
F 0 "J2" H 7100 4917 50  0000 C CNN
F 1 "Conn_02x06_Odd_Even" H 7100 4826 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x06_P2.54mm_Horizontal" H 7050 4500 50  0001 C CNN
F 3 "~" H 7050 4500 50  0001 C CNN
	1    7050 4500
	-1   0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR?
U 1 1 61D2E018
P 5500 2150
F 0 "#PWR?" H 5500 1900 50  0001 C CNN
F 1 "GNDD" H 5504 1995 50  0000 C CNN
F 2 "" H 5500 2150 50  0001 C CNN
F 3 "" H 5500 2150 50  0001 C CNN
	1    5500 2150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61D2F490
P 5700 2150
F 0 "#PWR?" H 5700 1900 50  0001 C CNN
F 1 "GND" H 5705 1977 50  0000 C CNN
F 2 "" H 5700 2150 50  0001 C CNN
F 3 "" H 5700 2150 50  0001 C CNN
	1    5700 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 2150 5700 2100
Wire Wire Line
	5700 2100 5500 2100
Wire Wire Line
	5500 2100 5500 2150
Wire Wire Line
	7250 4700 7350 4700
Wire Wire Line
	7250 4800 7350 4800
Wire Wire Line
	6750 4800 6700 4800
Wire Wire Line
	6700 4800 6700 4900
Wire Wire Line
	6700 4900 7350 4900
$EndSCHEMATC
