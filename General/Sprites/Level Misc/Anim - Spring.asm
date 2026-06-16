Ani_Spring_:
		dc.w Ani_Spring_VerticalIdle-Ani_Spring_
		dc.w Ani_Spring_VerticalTriggered-Ani_Spring_
		dc.w Ani_Spring_HorizontalIdle-Ani_Spring_
		dc.w Ani_Spring_HorizontalTriggered-Ani_Spring_
		dc.w Ani_Spring_DiagonalIdle-Ani_Spring_
		dc.w Ani_Spring_DiagonalTriggered-Ani_Spring_
Ani_Spring_VerticalIdle:	dc.b   $F,   0, $FF	; byte_2372E
Ani_Spring_VerticalTriggered:	dc.b    0,   1,   0,   0,   2,   2,   2,   2,   2,   2, $FD,   0	; byte_23731

Ani_Spring_HorizontalIdle:	dc.b   $F,   3, $FF	; byte_2373D
Ani_Spring_HorizontalTriggered:	dc.b    0,   4,   3,   3,   5,   5,   5,   5,   5,   5, $FD,   2	; byte_23740

Ani_Spring_DiagonalIdle:	dc.b   $F,   7, $FF	; byte_2374C
Ani_Spring_DiagonalTriggered:	dc.b    0,   8,   7,   7,   9,   9,   9,   9,   9,   9, $FD,   4	; byte_2374F
		even
