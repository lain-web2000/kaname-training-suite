intro_bg_start:
		.incbin "intro_bg.chr"
		.byte $45, $4F, $46		;terminator bytes (EOF in ASCII)
intro_spr_start:
		.incbin "intro_spr.chr"
		.byte $45, $4F, $46		;terminator bytes (EOF in ASCII)
		
.ifdef ORG
	sm1char1_start:
		.incbin "sm1-charset.chr"
		.incbin "sm1char1_bg.chr"
		.incbin "sm1char1_spr.chr"
		.byte $45, $4F, $46		;terminator bytes (EOF in ASCII)
	sm1char2_start:
		.incbin "sm1char2.chr"
		.byte $45, $4F, $46		;terminator bytes (EOF in ASCII)	

	sm2charset:
		.incbin "sm2-charset.chr"
		.byte $45, $4F, $46		;terminator bytes (EOF in ASCII)	
.endif

.ifndef ORG
	sm2char1_start:
		.incbin "sm2-charset.chr"
	.ifdef ANN
		.incbin "nsmchar1_bg.chr"
		.incbin "nsmchar1_spr.chr"
		.byte $45, $4F, $46		;terminator bytes (EOF in ASCII)
	.elseif .defined(LOST)
		.incbin "sm2char1_bg.chr"
		.incbin "sm2char1_spr.chr"
		.byte $45, $4F, $46		;terminator bytes (EOF in ASCII)
	.endif

	sm2char2_start:
	.ifdef ANN
		.incbin "nsmchar2.chr"
		.byte $45, $4F, $46		;terminator bytes (EOF in ASCII)
	.elseif .defined(LOST)
		.incbin "sm2char2.chr"
		.byte $45, $4F, $46		;terminator bytes (EOF in ASCII)	
	.endif
	sm1charset:
		.incbin "sm1-charset.chr"
		.byte $45, $4F, $46		;terminator bytes (EOF in ASCII)
.endif

