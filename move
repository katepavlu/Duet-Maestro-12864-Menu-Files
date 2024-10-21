;
; "Always on" Menu (V0, default)
;
image R3 C5 L"hotend.img"
value R0 C22 W19 H0 F0 D0 N079
value R11 C22 W19 H0 F0 D0 N179
;
image R3 C40 L"heatbed.img"
value R0 C57 W17 H0 F0 D0 N080
value R11 C57 W17 H0 F0 D0 N180
;
text R1 C75 F0 T"X"
value R1 C81 W19 H0 F0 D0 N510
;
text R1 C100 F0 T"Y"
value R1 C106 W19 H0 F0 D0 N511
;
text R10 C75 F0 T"Z"
value R10 C81 W33 H0 F0 D2 N512
;
image R22 C0 L"hline.img"
;
; "HEATER FAULT" (V20 and V28)
;
image R3 C5 V20 L"error.img"
image R3 C40 V28 L"error.img"
;

button R11 C112 F0 T"|^|" A"return"


button R51 C2 T"HOME ALL" A"G28"
button R51 C56 T"BED LEVELLING" A"G29 S0"

;X AXIS
image R25 C9 L"home.img" 
button R24 C2 W7 T">" A"M98 P#0" L"G28 X"
text R24 C19 T"X:"
button C31 T"-25" A"G91 G1 X-25 F6000"
button C48 T"+25" A"G91 G1 X+25 F6000"
alter C65 N510 W20 H2

;Y AXIS
image R34 C9 L"home.img"
button R33 C2 W7 T">" A"G28 Y"
text R33 C19 T"Y:"
button C31 T"-25" A"G91 G1 Y-25 F6000"
button C48 T"+25" A"G91 G1 Y+25 F6000"
alter C65 N511 W20 H2

;Z AXIS
image R43 C9 L"home.img"
button R42 C2 W7 T">" A"G28 Z"
text R42 C19 T"Z:"
button C31 T"-15" A"G91 G1 Z-15 F500"
button C48 T"+15" A"G91 G1 Z+15 F500"
alter C65 D1 N512 W28 H2

;E axis
text R24 C100 T"E:"
button R33 C100 T"-5" A"G1 E-5 F300"
button R33 C112 T"+5" A"G1 E+5 F300"