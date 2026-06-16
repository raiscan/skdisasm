Map_HCZBlock_:
		dc.w Map_HCZBlock_Frame0-Map_HCZBlock_
		dc.w Map_HCZBlock_Frame1-Map_HCZBlock_
		dc.w Map_HCZBlock_Frame2-Map_HCZBlock_
		dc.w Map_HCZBlock_Frame3-Map_HCZBlock_
Map_HCZBlock_Frame0:	dc.w 1
		dc.b  $F0,  $F,   0,   0, $FF, $F0
Map_HCZBlock_Frame1:	dc.w 2
		dc.b  $F0,  $F,   0,   0, $FF, $E0
		dc.b  $F0,  $F,   0,   0,   0,   0
Map_HCZBlock_Frame2:	dc.w 3
		dc.b  $F0,  $F,   0,   0, $FF, $D0
		dc.b  $F0,  $F,   0,   0, $FF, $F0
		dc.b  $F0,  $F,   0,   0,   0, $10
Map_HCZBlock_Frame3:	dc.w 4
		dc.b  $F0,  $F,   0,   0, $FF, $C0
		dc.b  $F0,  $F,   0,   0, $FF, $E0
		dc.b  $F0,  $F,   0,   0,   0,   0
		dc.b  $F0,  $F,   0,   0,   0, $20
