Map_PathSwap_:
		dc.w Map_PathSwap_Frame0-Map_PathSwap_
		dc.w Map_PathSwap_Frame1-Map_PathSwap_
		dc.w Map_PathSwap_Frame2-Map_PathSwap_
		dc.w Map_PathSwap_Frame3-Map_PathSwap_
		dc.w Map_PathSwap_Frame4-Map_PathSwap_
		dc.w Map_PathSwap_Frame5-Map_PathSwap_
		dc.w Map_PathSwap_Frame6-Map_PathSwap_
		dc.w Map_PathSwap_Frame7-Map_PathSwap_
Map_PathSwap_Frame0:	dc.w 4	; word_1D06A
		dc.b  $E0,   5,   0,   0, $FF, $F8
		dc.b  $F0,   5,   0,   0, $FF, $F8
		dc.b    0,   5,   0,   0, $FF, $F8
		dc.b  $10,   5,   0,   0, $FF, $F8
Map_PathSwap_Frame1:	dc.w 4	; word_1D084
		dc.b  $C0,   5,   0,   0, $FF, $F8
		dc.b  $E0,   5,   0,   0, $FF, $F8
		dc.b    0,   5,   0,   0, $FF, $F8
		dc.b  $30,   5,   0,   0, $FF, $F8
Map_PathSwap_Frame2:	dc.w 4	; word_1D09E
Map_PathSwap_Frame3 = Map_PathSwap_Frame2
		dc.b  $80,   5,   0,   0, $FF, $F8
		dc.b  $E0,   5,   0,   0, $FF, $F8
		dc.b    0,   5,   0,   0, $FF, $F8
		dc.b  $70,   5,   0,   0, $FF, $F8
Map_PathSwap_Frame4:	dc.w 4	; word_1D0B8
		dc.b  $F8,   5,   0,   0, $FF, $E0
		dc.b  $F8,   5,   0,   0, $FF, $F0
		dc.b  $F8,   5,   0,   0,   0,   0
		dc.b  $F8,   5,   0,   0,   0, $10
Map_PathSwap_Frame5:	dc.w 4	; word_1D0D2
		dc.b  $F8,   5,   0,   0, $FF, $C0
		dc.b  $F8,   5,   0,   0, $FF, $E0
		dc.b  $F8,   5,   0,   0,   0,   0
		dc.b  $F8,   5,   0,   0,   0, $30
Map_PathSwap_Frame6:	dc.w 4	; word_1D0EC
Map_PathSwap_Frame7 = Map_PathSwap_Frame6
		dc.b  $F8,   5,   0,   0, $FF, $80
		dc.b  $F8,   5,   0,   0, $FF, $E0
		dc.b  $F8,   5,   0,   0,   0,   0
		dc.b  $F8,   5,   0,   0,   0, $70
