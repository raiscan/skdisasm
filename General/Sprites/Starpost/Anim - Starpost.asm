Ani_Starpost_:
		dc.w Ani_Starpost_Idle-Ani_Starpost_
		dc.w Ani_Starpost_NoBall-Ani_Starpost_
		dc.w Ani_Starpost_Spinning-Ani_Starpost_
Ani_Starpost_Idle:	dc.b   $F,   0, $FF	; byte_2D33E
Ani_Starpost_NoBall:	dc.b   $F,   1, $FF	; byte_2D341
Ani_Starpost_Spinning:	dc.b    3,   0,   4, $FF	; byte_2D344
		even
