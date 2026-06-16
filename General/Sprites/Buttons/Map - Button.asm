Map_Button_:
		dc.w Map_Button_Frame0-Map_Button_
		dc.w Map_Button_Frame1-Map_Button_
		dc.w Map_Button_Frame2-Map_Button_
Map_Button_Frame0:	dc.w 2			; word_2C724
		dc.b  $F4,  $C,	  0,   0, $FF, $F0
		dc.b  $FC,   4,	  0,   4, $FF, $F8
Map_Button_Frame1:	dc.w 1			; word_2C732
		dc.b  $FC,  $C,	  0,   0, $FF, $F0
Map_Button_Frame2:	dc.w 2			; word_2C73A
		dc.b  $F8,  $C,	  0,   0, $FF, $F0
		dc.b	0,   4,	  0,   4, $FF, $F8
