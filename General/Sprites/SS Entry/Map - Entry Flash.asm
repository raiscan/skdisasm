Map_SSEntryFlash_:
		dc.w Map_SSEntryFlash_Frame0-Map_SSEntryFlash_
		dc.w Map_SSEntryFlash_Frame1-Map_SSEntryFlash_
		dc.w Map_SSEntryFlash_Frame2-Map_SSEntryFlash_
		dc.w Map_SSEntryFlash_Frame3-Map_SSEntryFlash_
Map_SSEntryFlash_Frame0:	dc.w 6	; word_61B30
		dc.b  $E0,   8,   0,   0,   0,   0
		dc.b  $E8,   9,   0,   3,   0,   8
		dc.b  $F8,   0,   0,   9,   0, $18
		dc.b  $18,   8, $10,   0,   0,   0
		dc.b    8,   9, $10,   3,   0,   8
		dc.b    0,   0, $10,   9,   0, $18
Map_SSEntryFlash_Frame1:	dc.w 6	; word_61B56
		dc.b  $E0,  $C,   0,   0,   0,   0
		dc.b  $E8,  $D,   0,   4,   0,   8
		dc.b  $F8,   4,   0,  $C,   0, $18
		dc.b  $18,  $C, $10,   0,   0,   0
		dc.b    8,  $D, $10,   4,   0,   8
		dc.b    0,   4, $10,  $C,   0, $18
Map_SSEntryFlash_Frame2:	dc.w 8	; word_61B7C
		dc.b  $E0,   8,   0,   0,   0,   0
		dc.b  $E8,  $E,   0,   3,   0,   0
		dc.b  $18,   8, $10,   0,   0,   0
		dc.b    0,  $E, $10,   3,   0,   0
		dc.b  $E0,   5,   8,  $F, $FF, $F0
		dc.b  $F0,   1,   8, $13, $FF, $F8
		dc.b  $10,   5, $18,  $F, $FF, $F0
		dc.b    0,   1, $18, $13, $FF, $F8
Map_SSEntryFlash_Frame3:	dc.w 8	; word_61BAE
		dc.b  $E0,   8,   0,   0,   0,   0
		dc.b  $E8,  $E,   0,   3,   0,   0
		dc.b  $18,   8, $10,   0,   0,   0
		dc.b    0,  $E, $10,   3,   0,   0
		dc.b  $E0,   8,   8,   0, $FF, $E8
		dc.b  $E8,  $E,   8,   3, $FF, $E0
		dc.b  $18,   8, $18,   0, $FF, $E8
		dc.b    0,  $E, $18,   3, $FF, $E0
Map_SSEntryFlash_ExtraFrame:
		dc.w 4
		dc.b  $E0,   5,   0,   0,   0,   0
		dc.b  $F0,   1,   0,   4,   0,   0
		dc.b  $10,   5, $10,   0,   0,   0
		dc.b    0,   1, $10,   4,   0,   0
