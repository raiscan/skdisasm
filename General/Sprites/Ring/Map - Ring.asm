Map_Ring_:
		dc.w Map_Ring_Frame0-Map_Ring_
		dc.w Map_Ring_Frame1-Map_Ring_
		dc.w Map_Ring_Frame2-Map_Ring_
		dc.w Map_Ring_Frame3-Map_Ring_
		dc.w Map_Ring_Frame4-Map_Ring_
		dc.w Map_Ring_Frame5-Map_Ring_
		dc.w Map_Ring_Frame6-Map_Ring_
		dc.w Map_Ring_Frame7-Map_Ring_
		dc.w Map_Ring_EmptyFrame-Map_Ring_
Map_Ring_Frame0:	dc.w 1	; word_1A9AC
		dc.b  $F8,   5,   0,   0, $FF, $F8
Map_Ring_Frame1:	dc.w 1	; word_1A9B4
		dc.b  $F8,   5,   0,   4, $FF, $F8
Map_Ring_Frame2:	dc.w 1	; word_1A9BC
		dc.b  $F8,   1,   0,   8, $FF, $FC
Map_Ring_Frame3:	dc.w 1	; word_1A9C4
		dc.b  $F8,   5,   8,   4, $FF, $F8
Map_Ring_Frame4:	dc.w 1	; word_1A9CC
		dc.b  $F8,   5,   0,  $A, $FF, $F8
Map_Ring_Frame5:	dc.w 1	; word_1A9D4
		dc.b  $F8,   5, $18,  $A, $FF, $F8
Map_Ring_Frame6:	dc.w 1	; word_1A9DC
		dc.b  $F8,   5,   8,  $A, $FF, $F8
Map_Ring_Frame7:	dc.w 1	; word_1A9E4
		dc.b  $F8,   5, $10,  $A, $FF, $F8
Map_Ring_EmptyFrame:	dc.w 0	; word_1A9EC
