Ani_CNZRisingPlatform_:
		dc.w Ani_CNZRisingPlatform_Idle-Ani_CNZRisingPlatform_
		dc.w Ani_CNZRisingPlatform_Active-Ani_CNZRisingPlatform_
		dc.w Ani_CNZRisingPlatform_Reset-Ani_CNZRisingPlatform_
Ani_CNZRisingPlatform_Idle:	dc.b  $7F,   0, $FF
Ani_CNZRisingPlatform_Active:	dc.b    7,   1,   2, $FE,   1
Ani_CNZRisingPlatform_Reset:	dc.b    3,   2,   1,   0, $FE,   1
		even
