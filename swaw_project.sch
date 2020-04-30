EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "lun. 30 mars 2015"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 8950 1450 1    60   ~ 0
Vin
Text Label 9350 1450 1    60   ~ 0
IOREF
Text Label 8900 2500 0    60   ~ 0
A0
Text Label 8900 2600 0    60   ~ 0
A1
Text Label 8900 2700 0    60   ~ 0
A2
Text Label 8900 2800 0    60   ~ 0
A3
Text Label 8900 2900 0    60   ~ 0
A4(SDA)
Text Label 8900 3000 0    60   ~ 0
A5(SCL)
Text Label 10550 3000 0    60   ~ 0
0(Rx)
Text Label 10550 2800 0    60   ~ 0
2
Text Label 10550 2900 0    60   ~ 0
1(Tx)
Text Label 10550 2700 0    60   ~ 0
3(**)
Text Label 10550 2600 0    60   ~ 0
4
Text Label 10550 2500 0    60   ~ 0
5(**)
Text Label 10550 2400 0    60   ~ 0
6(**)
Text Label 10550 2300 0    60   ~ 0
7
Text Label 10550 2100 0    60   ~ 0
8
Text Label 10550 2000 0    60   ~ 0
9(**)
Text Label 10550 1900 0    60   ~ 0
10(**/SS)
Text Label 10550 1800 0    60   ~ 0
11(**/MOSI)
Text Label 10550 1700 0    60   ~ 0
12(MISO)
Text Label 10550 1600 0    60   ~ 0
13(SCK)
Text Label 10550 1400 0    60   ~ 0
AREF
NoConn ~ 9400 1600
Text Label 10550 1300 0    60   ~ 0
A4(SDA)
Text Label 10550 1200 0    60   ~ 0
A5(SCL)
Text Notes 10850 1000 0    60   ~ 0
Holes
Text Notes 8550 750  0    60   ~ 0
Shield for Arduino that uses\nthe same pin disposition\nlike "Uno" board Rev 3.
$Comp
L Connector_Generic:Conn_01x08 P1
U 1 1 56D70129
P 9600 1900
F 0 "P1" H 9600 2350 50  0000 C CNN
F 1 "Power" V 9700 1900 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x08" V 9750 1900 20  0000 C CNN
F 3 "" H 9600 1900 50  0000 C CNN
	1    9600 1900
	1    0    0    -1  
$EndComp
Text Label 8650 1800 0    60   ~ 0
Reset
$Comp
L power:+3.3V #PWR01
U 1 1 56D70538
P 9150 1450
F 0 "#PWR01" H 9150 1300 50  0001 C CNN
F 1 "+3.3V" V 9150 1700 50  0000 C CNN
F 2 "" H 9150 1450 50  0000 C CNN
F 3 "" H 9150 1450 50  0000 C CNN
	1    9150 1450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR02
U 1 1 56D707BB
P 9050 1350
F 0 "#PWR02" H 9050 1200 50  0001 C CNN
F 1 "+5V" V 9050 1550 50  0000 C CNN
F 2 "" H 9050 1350 50  0000 C CNN
F 3 "" H 9050 1350 50  0000 C CNN
	1    9050 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 56D70CC2
P 9300 3150
F 0 "#PWR03" H 9300 2900 50  0001 C CNN
F 1 "GND" H 9300 3000 50  0000 C CNN
F 2 "" H 9300 3150 50  0000 C CNN
F 3 "" H 9300 3150 50  0000 C CNN
	1    9300 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 56D70CFF
P 10300 3150
F 0 "#PWR04" H 10300 2900 50  0001 C CNN
F 1 "GND" H 10300 3000 50  0000 C CNN
F 2 "" H 10300 3150 50  0000 C CNN
F 3 "" H 10300 3150 50  0000 C CNN
	1    10300 3150
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x06 P2
U 1 1 56D70DD8
P 9600 2700
F 0 "P2" H 9600 2300 50  0000 C CNN
F 1 "Analog" V 9700 2700 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x06" V 9750 2750 20  0000 C CNN
F 3 "" H 9600 2700 50  0000 C CNN
	1    9600 2700
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P5
U 1 1 56D71177
P 10800 650
F 0 "P5" V 10900 650 50  0000 C CNN
F 1 "CONN_01X01" V 10900 650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" H 10721 724 20  0000 C CNN
F 3 "" H 10800 650 50  0000 C CNN
	1    10800 650 
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P6
U 1 1 56D71274
P 10900 650
F 0 "P6" V 11000 650 50  0000 C CNN
F 1 "CONN_01X01" V 11000 650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" H 10900 650 20  0001 C CNN
F 3 "" H 10900 650 50  0000 C CNN
	1    10900 650 
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P7
U 1 1 56D712A8
P 11000 650
F 0 "P7" V 11100 650 50  0000 C CNN
F 1 "CONN_01X01" V 11100 650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" V 11000 650 20  0001 C CNN
F 3 "" H 11000 650 50  0000 C CNN
	1    11000 650 
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P8
U 1 1 56D712DB
P 11100 650
F 0 "P8" V 11200 650 50  0000 C CNN
F 1 "CONN_01X01" V 11200 650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" H 11024 572 20  0000 C CNN
F 3 "" H 11100 650 50  0000 C CNN
	1    11100 650 
	0    -1   -1   0   
$EndComp
NoConn ~ 10800 850 
NoConn ~ 10900 850 
NoConn ~ 11000 850 
NoConn ~ 11100 850 
$Comp
L Connector_Generic:Conn_01x08 P4
U 1 1 56D7164F
P 10000 2600
F 0 "P4" H 10000 2100 50  0000 C CNN
F 1 "Digital" V 10100 2600 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x08" V 10150 2550 20  0000 C CNN
F 3 "" H 10000 2600 50  0000 C CNN
	1    10000 2600
	-1   0    0    -1  
$EndComp
Wire Notes Line
	8525 825  9925 825 
Wire Notes Line
	9925 825  9925 475 
Wire Wire Line
	9350 1450 9350 1700
Wire Wire Line
	9350 1700 9400 1700
Wire Wire Line
	9400 1900 9150 1900
Wire Wire Line
	9400 2000 9050 2000
Wire Wire Line
	9400 2300 8950 2300
Wire Wire Line
	9400 2100 9300 2100
Wire Wire Line
	9400 2200 9300 2200
Connection ~ 9300 2200
Wire Wire Line
	8950 2300 8950 1450
Wire Wire Line
	9050 2000 9050 1350
Wire Wire Line
	9150 1900 9150 1450
Wire Wire Line
	9400 2500 8900 2500
Wire Wire Line
	9400 2600 8900 2600
Wire Wire Line
	9400 2700 8900 2700
Wire Wire Line
	9400 2800 8900 2800
Wire Wire Line
	9400 2900 8900 2900
Wire Wire Line
	9400 3000 8900 3000
$Comp
L Connector_Generic:Conn_01x10 P3
U 1 1 56D721E0
P 10000 1600
F 0 "P3" H 10000 2150 50  0000 C CNN
F 1 "Digital" V 10100 1600 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x10" V 10150 1600 20  0000 C CNN
F 3 "" H 10000 1600 50  0000 C CNN
	1    10000 1600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10200 2100 10550 2100
Wire Wire Line
	10200 2000 10550 2000
Wire Wire Line
	10200 1900 10550 1900
Wire Wire Line
	10200 1800 10550 1800
Wire Wire Line
	10200 1700 10550 1700
Wire Wire Line
	10200 1600 10550 1600
Wire Wire Line
	10200 1400 10550 1400
Wire Wire Line
	10200 1200 10550 1200
Wire Wire Line
	10200 2800 10550 2800
Wire Wire Line
	10200 2700 10550 2700
Wire Wire Line
	10200 2600 10550 2600
Wire Wire Line
	10200 2500 10550 2500
Wire Wire Line
	10200 2400 10550 2400
Wire Wire Line
	10200 2300 10550 2300
Wire Wire Line
	10200 1500 10300 1500
Wire Wire Line
	10300 1500 10300 3150
Wire Wire Line
	9300 2100 9300 2200
Wire Notes Line
	8500 500  8500 3450
Wire Notes Line
	8500 3450 11200 3450
Wire Wire Line
	9400 1800 8650 1800
Text Notes 9700 1600 0    60   ~ 0
1
Wire Notes Line
	11200 1000 10700 1000
Wire Notes Line
	10700 1000 10700 500 
Wire Wire Line
	3000 1350 3000 1450
$Comp
L pspice:C C2
U 1 1 5EAADD7B
P 3900 1600
F 0 "C2" H 4078 1646 50  0000 L CNN
F 1 "0.1uF" H 4078 1555 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 3900 1600 50  0001 C CNN
F 3 "~" H 3900 1600 50  0001 C CNN
	1    3900 1600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5EAAFEC1
P 3900 1850
F 0 "#PWR08" H 3900 1600 50  0001 C CNN
F 1 "GND" H 3905 1677 50  0000 C CNN
F 2 "" H 3900 1850 50  0001 C CNN
F 3 "" H 3900 1850 50  0001 C CNN
	1    3900 1850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5EABDA5F
P 2900 2850
F 0 "#PWR07" H 2900 2600 50  0001 C CNN
F 1 "GND" H 2905 2677 50  0000 C CNN
F 2 "" H 2900 2850 50  0001 C CNN
F 3 "" H 2900 2850 50  0001 C CNN
	1    2900 2850
	1    0    0    -1  
$EndComp
$Comp
L pspice:C C4
U 1 1 5EABDDAD
P 4600 2600
F 0 "C4" H 4778 2646 50  0000 L CNN
F 1 "2.2nF" H 4778 2555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4600 2600 50  0001 C CNN
F 3 "~" H 4600 2600 50  0001 C CNN
	1    4600 2600
	1    0    0    -1  
$EndComp
$Comp
L pspice:C C3
U 1 1 5EABE241
P 3900 2700
F 0 "C3" H 4078 2746 50  0000 L CNN
F 1 "0.1uF" H 4078 2655 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 3900 2700 50  0001 C CNN
F 3 "~" H 3900 2700 50  0001 C CNN
	1    3900 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 2450 3600 2450
$Comp
L power:GND #PWR09
U 1 1 5EAC0805
P 3900 2950
F 0 "#PWR09" H 3900 2700 50  0001 C CNN
F 1 "GND" H 3905 2777 50  0000 C CNN
F 2 "" H 3900 2950 50  0001 C CNN
F 3 "" H 3900 2950 50  0001 C CNN
	1    3900 2950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5EAC0AA7
P 4600 2850
F 0 "#PWR010" H 4600 2600 50  0001 C CNN
F 1 "GND" H 4605 2677 50  0000 C CNN
F 2 "" H 4600 2850 50  0001 C CNN
F 3 "" H 4600 2850 50  0001 C CNN
	1    4600 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 2350 4600 2350
$Comp
L power:GND #PWR05
U 1 1 5EADDE16
P 1950 2550
F 0 "#PWR05" H 1950 2300 50  0001 C CNN
F 1 "GND" H 1955 2377 50  0000 C CNN
F 2 "" H 1950 2550 50  0001 C CNN
F 3 "" H 1950 2550 50  0001 C CNN
	1    1950 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 2350 1950 2450
Wire Wire Line
	1950 2350 2200 2350
Wire Wire Line
	2200 2450 1950 2450
Connection ~ 1950 2450
Wire Wire Line
	1950 2450 1950 2550
$Comp
L Device:R R2
U 1 1 5EAF0777
P 5600 1300
F 0 "R2" H 5670 1346 50  0000 L CNN
F 1 "10kΩ" H 5670 1255 50  0000 L CNN
F 2 "Resistor_SMD:R_0612_1632Metric_Pad1.18x3.40mm_HandSolder" V 5530 1300 50  0001 C CNN
F 3 "~" H 5600 1300 50  0001 C CNN
	1    5600 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5EAE7C24
P 5250 1300
F 0 "R1" H 5320 1346 50  0000 L CNN
F 1 "10kΩ" H 5320 1255 50  0000 L CNN
F 2 "Resistor_SMD:R_0612_1632Metric_Pad1.18x3.40mm_HandSolder" V 5180 1300 50  0001 C CNN
F 3 "~" H 5250 1300 50  0001 C CNN
	1    5250 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 1150 5250 900 
Connection ~ 5250 900 
Wire Wire Line
	5250 900  5600 900 
Wire Wire Line
	5600 1150 5600 900 
Wire Wire Line
	10200 1300 10700 1300
Wire Wire Line
	2200 1850 1450 1850
Wire Wire Line
	1450 1850 1450 4050
Wire Wire Line
	1450 4050 5250 4050
Wire Wire Line
	10550 1200 10550 950 
Wire Wire Line
	2200 2050 1950 2050
Wire Wire Line
	1950 2050 1950 2350
Connection ~ 1950 2350
$Comp
L swaw_project-rescue:Bluetooh_PIO-Relay HC-05_PIO1
U 1 1 5EAA8D5B
P 10650 5000
F 0 "HC-05_PIO1" H 10717 5823 50  0000 C CNN
F 1 "Bluetooh_PIO" H 10800 5800 50  0001 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x06_P2.54mm_Vertical" H 10650 5000 50  0001 C CNN
F 3 "" H 10650 5000 50  0001 C CNN
	1    10650 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5EAB7768
P 9550 4800
F 0 "R3" H 9620 4846 50  0000 L CNN
F 1 "2kΩ" H 9620 4755 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9480 4800 50  0001 C CNN
F 3 "~" H 9550 4800 50  0001 C CNN
	1    9550 4800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5EAB9AFC
P 9550 4300
F 0 "R4" H 9620 4346 50  0000 L CNN
F 1 "1kΩ" H 9620 4255 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 9480 4300 50  0001 C CNN
F 3 "~" H 9550 4300 50  0001 C CNN
	1    9550 4300
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:2N7002 Q2
U 1 1 5EABADA7
P 6400 2150
F 0 "Q2" V 6649 2150 50  0000 C CNN
F 1 "2N7002" V 6740 2150 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6600 2075 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N7000.pdf" H 6400 2150 50  0001 L CNN
	1    6400 2150
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 5EAF622B
P 6650 1500
F 0 "R5" H 6720 1546 50  0000 L CNN
F 1 "10kΩ" H 6720 1455 50  0000 L CNN
F 2 "Resistor_SMD:R_0612_1632Metric_Pad1.18x3.40mm_HandSolder" V 6580 1500 50  0001 C CNN
F 3 "~" H 6650 1500 50  0001 C CNN
	1    6650 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5EAF6BDC
P 7000 2000
F 0 "R6" H 7070 2046 50  0000 L CNN
F 1 "10kΩ" H 7070 1955 50  0000 L CNN
F 2 "Resistor_SMD:R_0612_1632Metric_Pad1.18x3.40mm_HandSolder" V 6930 2000 50  0001 C CNN
F 3 "~" H 7000 2000 50  0001 C CNN
	1    7000 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	10700 850  10700 1300
$Comp
L power:GND #PWR0101
U 1 1 5EAB5D79
P 10250 5050
F 0 "#PWR0101" H 10250 4800 50  0001 C CNN
F 1 "GND" H 10255 4877 50  0000 C CNN
F 2 "" H 10250 5050 50  0001 C CNN
F 3 "" H 10250 5050 50  0001 C CNN
	1    10250 5050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0102
U 1 1 5EABA60F
P 10400 5050
F 0 "#PWR0102" H 10400 4900 50  0001 C CNN
F 1 "+5V" V 10400 5250 50  0000 C CNN
F 2 "" H 10400 5050 50  0000 C CNN
F 3 "" H 10400 5050 50  0000 C CNN
	1    10400 5050
	1    0    0    1   
$EndComp
Wire Wire Line
	9300 2200 9300 3150
Wire Wire Line
	10400 5050 10400 4850
Wire Wire Line
	10400 4850 10500 4850
$Comp
L Device:R R7
U 1 1 5EB14D4E
P 10200 4650
F 0 "R7" H 10270 4696 50  0000 L CNN
F 1 "100Ω" H 10270 4605 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 10130 4650 50  0001 C CNN
F 3 "~" H 10200 4650 50  0001 C CNN
	1    10200 4650
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R8
U 1 1 5EB18443
P 9800 4550
F 0 "R8" H 9870 4596 50  0000 L CNN
F 1 "100Ω" H 9870 4505 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 9730 4550 50  0001 C CNN
F 3 "~" H 9800 4550 50  0001 C CNN
	1    9800 4550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10350 4650 10500 4650
Wire Wire Line
	10050 4650 10000 4650
Wire Wire Line
	10000 4650 10000 4100
Wire Wire Line
	10000 4100 10950 4100
Wire Wire Line
	10950 4100 10950 2900
Wire Wire Line
	10200 2900 10950 2900
Wire Wire Line
	9650 4550 9550 4550
Wire Wire Line
	9950 4550 10500 4550
Wire Wire Line
	10500 4750 10250 4750
Wire Wire Line
	10250 4750 10250 5000
Wire Wire Line
	9550 4950 9550 5000
Wire Wire Line
	9550 5000 10250 5000
Connection ~ 10250 5000
Wire Wire Line
	10250 5000 10250 5050
Wire Wire Line
	9550 4450 9550 4550
Connection ~ 9550 4550
Wire Wire Line
	9550 4550 9550 4650
Wire Wire Line
	9550 4150 9550 4000
Wire Wire Line
	9550 4000 10850 4000
Wire Wire Line
	10850 4000 10850 3000
Wire Wire Line
	10200 3000 10850 3000
$Comp
L Sensor_Motion:MPU-6050 U1
U 1 1 5EA88EF4
P 2900 2150
F 0 "U1" H 2900 1361 50  0000 C CNN
F 1 "MPU-6050" H 2900 1270 50  0000 C CNN
F 2 "Sensor_Motion:InvenSense_QFN-24_4x4mm_P0.5mm" H 2900 1350 50  0001 C CNN
F 3 "https://store.invensense.com/datasheets/invensense/MPU-6050_DataSheet_V3%204.pdf" H 2900 2000 50  0001 C CNN
	1    2900 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 900  2800 1450
$Comp
L pspice:C C1
U 1 1 5EAAE5D6
P 2350 1200
F 0 "C1" H 2528 1246 50  0000 L CNN
F 1 "110nF" H 2528 1155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2350 1200 50  0001 C CNN
F 3 "~" H 2350 1200 50  0001 C CNN
	1    2350 1200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5EAB0D0F
P 2350 1450
F 0 "#PWR06" H 2350 1200 50  0001 C CNN
F 1 "GND" H 2355 1277 50  0000 C CNN
F 2 "" H 2350 1450 50  0001 C CNN
F 3 "" H 2350 1450 50  0001 C CNN
	1    2350 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 950  2350 900 
Wire Wire Line
	2350 900  2800 900 
Connection ~ 2800 900 
Wire Wire Line
	3000 1350 3900 1350
Wire Wire Line
	2800 900  4350 900 
Wire Wire Line
	3900 1350 4350 1350
Wire Wire Line
	4350 1350 4350 900 
Connection ~ 3900 1350
Connection ~ 4350 900 
Wire Wire Line
	4350 900  5250 900 
Connection ~ 5600 900 
Wire Wire Line
	5600 900  6050 900 
Wire Wire Line
	1550 1950 1550 3950
Wire Wire Line
	1550 3950 5600 3950
Wire Wire Line
	1550 1950 2200 1950
Wire Wire Line
	5600 1450 5600 2250
$Comp
L Transistor_FET:2N7002 Q1
U 1 1 5EABA114
P 6050 1650
F 0 "Q1" V 6299 1650 50  0000 C CNN
F 1 "2N7002" V 6390 1650 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6250 1575 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N7000.pdf" H 6050 1650 50  0001 L CNN
	1    6050 1650
	0    1    1    0   
$EndComp
Wire Wire Line
	6050 1450 6050 900 
Connection ~ 6050 900 
Wire Wire Line
	6050 900  6400 900 
Wire Wire Line
	6400 1950 6400 900 
Connection ~ 6400 900 
Wire Wire Line
	6600 2250 7000 2250
$Comp
L power:+5V #PWR0103
U 1 1 5EC77314
P 7000 750
F 0 "#PWR0103" H 7000 600 50  0001 C CNN
F 1 "+5V" V 7000 950 50  0000 C CNN
F 2 "" H 7000 750 50  0000 C CNN
F 3 "" H 7000 750 50  0000 C CNN
	1    7000 750 
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 750  7000 1200
Wire Wire Line
	6400 900  6850 900 
Wire Wire Line
	7000 1200 6650 1200
Wire Wire Line
	6650 1200 6650 1350
Wire Wire Line
	6250 1750 6650 1750
Wire Wire Line
	6650 1650 6650 1750
Wire Wire Line
	7000 2150 7000 2250
$Comp
L power:+3.3V #PWR0104
U 1 1 5ECB3F0E
P 6850 750
F 0 "#PWR0104" H 6850 600 50  0001 C CNN
F 1 "+3.3V" V 6850 1000 50  0000 C CNN
F 2 "" H 6850 750 50  0000 C CNN
F 3 "" H 6850 750 50  0000 C CNN
	1    6850 750 
	1    0    0    -1  
$EndComp
Connection ~ 7000 1200
Wire Wire Line
	6850 750  6850 900 
Wire Wire Line
	7000 1200 7000 1850
Wire Wire Line
	5250 1450 5250 1750
Wire Wire Line
	5850 1750 5250 1750
Connection ~ 5250 1750
Wire Wire Line
	5250 1750 5250 4050
Wire Wire Line
	6200 2250 5600 2250
Connection ~ 5600 2250
Wire Wire Line
	5600 2250 5600 3950
Wire Wire Line
	6650 1750 8150 1750
Wire Wire Line
	8150 1750 8150 850 
Connection ~ 6650 1750
Wire Wire Line
	8150 850  10700 850 
Wire Wire Line
	10550 950  8250 950 
Wire Wire Line
	8250 950  8250 2250
Wire Wire Line
	8250 2250 7000 2250
Connection ~ 7000 2250
$EndSCHEMATC
