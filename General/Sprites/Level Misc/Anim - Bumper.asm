Ani_Bumper_:
		dc.w Ani_Bumper_Idle-Ani_Bumper_
		dc.w Ani_Bumper_Hit-Ani_Bumper_
Ani_Bumper_Idle:	dc.b   $F,   0, $FF	; byte_33098
Ani_Bumper_Hit:	dc.b    3,   1,   0,   1, $FD,   0	; byte_3309B
		even
