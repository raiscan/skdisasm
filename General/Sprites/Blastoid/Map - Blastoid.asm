Map_Blastoid_:
		dc.w Map_Blastoid_Frame0-Map_Blastoid_
		dc.w Map_Blastoid_Frame1-Map_Blastoid_
		dc.w Map_Blastoid_Frame2-Map_Blastoid_
		dc.w Map_Blastoid_Frame3-Map_Blastoid_
Map_Blastoid_Frame0:	dc.w 3	; Frame_360DD8
		dc.b  $F4,   5,   0,  $A, $FF, $E8
		dc.b  $F4,   9,   0,   0, $FF, $F8
		dc.b    4,  $C,   0,   6, $FF, $F0
Map_Blastoid_Frame1:	dc.w 3	; Frame_360DEC
		dc.b  $F4,   5,   0,  $E, $FF, $E8
		dc.b  $F4,   9,   0,   0, $FF, $F8
		dc.b    4,  $C,   0,   6, $FF, $F0
Map_Blastoid_Frame2:	dc.w 1	; Frame_360E00
		dc.b  $FC,   0,   0, $12, $FF, $FC
Map_Blastoid_Frame3:	dc.w 1	; Frame_360E08
		dc.b  $FC,   0,   0, $13, $FF, $FC
