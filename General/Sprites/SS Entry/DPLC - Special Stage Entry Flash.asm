DPLC_SSEntryFlash_:
		dc.w DPLC_SSEntryFlash_Frame0-DPLC_SSEntryFlash_
		dc.w DPLC_SSEntryFlash_Frame1-DPLC_SSEntryFlash_
		dc.w DPLC_SSEntryFlash_Frame2-DPLC_SSEntryFlash_
		dc.w DPLC_SSEntryFlash_Frame3-DPLC_SSEntryFlash_
DPLC_SSEntryFlash_Frame0:	dc.w 2	; word_61C02
		dc.w $0002
		dc.w $0035
		dc.w $0090
DPLC_SSEntryFlash_Frame1:	dc.w 2	; word_61C0A
		dc.w $00A3
		dc.w $00E7
		dc.w $0161
DPLC_SSEntryFlash_Frame2:	dc.w 3	; word_61C12
		dc.w $0182
		dc.w $01BB
		dc.w $0273
		dc.w $02B1
DPLC_SSEntryFlash_Frame3:	dc.w 1	; word_61C1C
		dc.w $0182
		dc.w $01BB
		dc.w 1
		dc.w $0273
		dc.w $02B1
