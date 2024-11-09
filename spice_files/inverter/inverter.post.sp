*
*
*
*                       LINUX           Sun Nov  3 22:08:41 2024
*
*
*
*  PROGRAM  advgen
*
*  Name           : advgen - Quantus - (64-bit)
*  Version        : 22.1.1-p041
*  Build Date     : Mon Apr 17 07:36:05 PDT 2023
*
*  HSPICE LIBRARY
*
*  OPERATING_TEMPERATURE 25
*  QRC_TECH_DIR /home/ff/eecs251b/sky130/sky130_cds/sky130_release_0.0.1/quantus/extraction/typical 
*
*
*

*
.SUBCKT inverter dout din VSS VDD
*
*
*  caps2d version: 10
*
*
*       TRANSISTOR CARDS
*
*
MX5/M0	dout#6	din#5	VSS#1	VSS	nfet_01v8	L=1.5e-07	W=1e-06
MX6/M0	dout#1	din#1	VDD#2	VDD	pfet_01v8	L=1.5e-07
+ W=1.6e-06
*
*
*       RESISTOR AND CAP/DIODE CARDS
*
Rg1	din#1	din#3	571.809082	$poly
Rg2	din#3	din#4	78.215454	$poly
Rg3	din#3	din#5	565.382385	$poly
Rf1	din#6	din#4	15.000000	$li
Rf2	VDD#1	VDD#3	100.517647	$li
Rf4	VDD#2	VDD#3	3.750000	$li
Rf6	VSS#2	VSS#5	75.670586	$li
Rf7	VSS#1	VSS#2	7.500000	$li
Rf11	dout#2	dout#5	190.117645	$li
Rf12	dout#5	dout#7	78.682358	$li
Rf14	dout#1	dout#2	3.750000	$li
Rf16	dout#6	dout#7	7.500000	$li
Re1	din#6	din	152.163788	$metal1
Re2	dout	dout#5	152.224136	$metal1
Re3	VSS	VSS#6	0.437500	$metal1
Re4	VSS#6	VSS#5	152.361221	$metal1
Re5	VDD	VDD#5	0.440909	$metal1
Re6	VDD#5	VDD#1	152.341125	$metal1
*
*       CAPACITOR CARDS
*
*
C1	dout	VSS	5.90672e-17
C2	din	VSS	5.59082e-17
C3	VDD	VSS	2.26054e-16
C4	din#1	VSS	7.80527e-17
C5	din#5	VSS	5.53369e-17
C6	VDD#5	VSS	2.18467e-16
C7	dout#5	VSS	1.54197e-16
C8	din#6	VSS	8.23561e-17
C9	VDD#2	VSS	1.30307e-16
C10	dout#6	VSS	1.33548e-16
C11	dout#2	VSS	2.43293e-16
*
*
.ENDS inverter
*
