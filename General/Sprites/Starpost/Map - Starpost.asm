Map_StarPost_:
		dc.w Map_StarPost_RedBall-Map_StarPost_
		dc.w Map_StarPost_NoBall-Map_StarPost_
		dc.w Map_StarPost_StarBall-Map_StarPost_
		dc.w Map_StarPost_Head-Map_StarPost_
		dc.w Map_StarPost_BlueBall-Map_StarPost_
Map_StarPost_RedBall:	dc.w 4	; word_2D352
		dc.b  $E8,   1,   0,  $E, $FF, $FC
		dc.b  $F8,   3,   0, $10, $FF, $F8
		dc.b  $F8,   3,   8, $10,   0,   0
		dc.b  $D8,   5,   0,   6, $FF, $F8
Map_StarPost_NoBall:	dc.w 3	; word_2D36C
		dc.b  $E8,   1,   0,  $E, $FF, $FC
		dc.b  $F8,   3,   0, $10, $FF, $F8
		dc.b  $F8,   3,   8, $10,   0,   0
Map_StarPost_StarBall:	dc.w 1	; word_2D380
		dc.b  $F8,   5,   0,   6, $FF, $F8
Map_StarPost_Head:	dc.w 1	; word_2D388
		dc.b  $F8,   5,   0,  $A, $FF, $F8
Map_StarPost_BlueBall:	dc.w 4	; word_2D390
		dc.b  $E8,   1,   0,  $E, $FF, $FC
		dc.b  $F8,   3,   0, $10, $FF, $F8
		dc.b  $F8,   3,   8, $10,   0,   0
		dc.b  $D8,   5,   0,  $A, $FF, $F8
