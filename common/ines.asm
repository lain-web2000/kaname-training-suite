.segment "ines"
	.byte $4E,$45,$53,$1A ; INES header
	.byte $08             ; PRG pages
	.byte $4              ; CHR pages
.ifdef ORG
	.byte $12             ; MMC1, battery-backed WRAM
.else
	.byte $42             ; MMC3, battery-backed WRAM
.endif
	.byte $00             ; 
	.byte $00             ; 
	.byte $00             ; NTSC
	.byte $00             ; 
	.byte $00             ; 
	.byte $00             ; 
	.byte $00             ; 
	.byte $00             ; 
	.byte $00             ; 

