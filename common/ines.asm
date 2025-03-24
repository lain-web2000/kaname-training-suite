.segment "ines"
	.byte $4E,$45,$53,$1A ; INES header
	.byte $08             ; PRG pages
	.byte $0              ; CHR pages
	.byte $42             ; MMC3, battery-backed WRAM
	.byte $00             ; 
	.byte $00             ; 
.ifndef PAL
	.byte $00             ; NTSC
.else
	.byte $01             ; PAL
.endif
	.byte $00             ; 
	.byte $00             ; 
	.byte $00             ; 
	.byte $00             ; 
	.byte $00             ; 
	.byte $00             ; 

