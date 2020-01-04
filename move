image R3 C5 L"hotend.img"
value R0 C22 W19 H0 F0 D0 N079
value R11 C22 W19 H0 F0 D0 N179
;
image R3 C40 L"heatbed.img"
value R0 C57 W17 H0 F0 D0 N080
value R11 C57 W17 H0 F0 D0 N180
;
; "HEATER FAULT" (V20 and V28)
;
image R3 C5 V20 L"error.img"
image R3 C40 V28 L"error.img"

text R1 C75 F0 T"X"
value R1 C81 W19 H0 F0 D0 N510
;
text R1 C100 F0 T"Y"
value R1 C106 W19 H0 F0 D0 N511
;
text R10 C75 F0 T"Z"
value R10 C81 W33 H0 F0 D2 N512
button R11 C112 F0 T"|^|" A"return"
;
image R22 C0 L"hline.img"
;
button R24 C6 T"HOME" A"M98 P#0" L"/sys/homeall.g|return"
button R24 C76 T"LEVEL BED" A"M98 P#0" L"/menu/meshcomp|return"
;
image R36 C0 L"hline.img"
;
button R38 C2 T"X-25" A"G91 G1 X-25 F6000"
button R38 T"+25" A"G91 G1 X+25 F6000"
button R38 C44 T"Y-25" A"G91 G1 Y-25 F6000"
button R38 T"+25" A"G91 G1 Y+25 F6000"
button R38 C87 T"Z-25" A"G91 G1 Z-25 F6000"
button R38 T"+25" A"G91 G1 Z+25 F6000"
;
image R51 C0 L"hline.img"
;
text R52 C6 F0 T"X:"
alter N510 D1 W27 H2
text R52 C44 T"Y:"
alter N511 D1 W27 H2
text R52 C82 T"Z:"
alter N512 D2 W33 H2