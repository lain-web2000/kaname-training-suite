	.include "wram.inc"

;
; Practice stuff
;
resume_0: .byte $49, $BF, $75, $F6, $40, $9C, $9B, $06, $3E, $39, $73, $F8, $3F, $18, $D6, $F8, $19, $BF, $5B, $EA, $94, $C0, $3C, $8F, $F1, $18, $2B, $8A, $A1, $A9, $AC, $71, $49, $2B, $30, $F8, $73, $C3, $89, $D2, $30, $1F, $86, $F4, $51, $56, $E6, $89, $3E, $35, $15, $0D, $56, $27, $DB, $84, $FF, $1C, $A4, $A7, $FA, $7F, $18, $B3, $A9, $5A, $F3, $CC, $6E, $E1, $C3, $B5, $F2, $32, $C3, $78, $C6, $7D, $60, $4E, $62, $F0, $5B, $49, $01, $F1, $80, $08, $71, $FB, $C9, $B3, $D9, $A1, $AE, $3A, $B9, $73, $32
resume_1: .byte $5B, $88, $53, $4B, $4A, $01, $D8, $0A, $14, $17, $45, $ED, $1B, $C4, $ED, $45, $23, $64, $EF, $53, $7F, $D1, $5A, $4A, $DE, $D0, $93, $37, $78, $5A, $83, $37, $33, $17, $14, $27, $03, $1A, $AE, $05, $D2, $15, $F3, $6F, $FB, $D0, $7F, $32, $72, $D1, $21, $41, $BE, $75, $62, $05, $92, $A8, $59, $2C, $ED, $7D, $DE, $CA, $14, $B8, $B6, $29, $CE, $7C, $60, $DA, $27, $FE, $68, $16, $13, $25, $8E, $2E, $84, $F7, $A7, $FD, $E9, $D0, $89, $B0, $F7, $94, $F0, $7A, $78, $44, $D9, $14, $DA, $71, $A2
resume_2: .byte $C9, $F7, $B9, $A7, $CA, $39, $EF, $06, $68, $65, $A3, $1C, $65, $F5, $40, $B5, $11, $1A, $58, $87, $57, $50, $22, $54, $3D, $E1, $C4, $23, $3A, $08, $DA, $D5, $A1, $41, $74, $D7, $E5, $9C, $BD, $A1, $B3, $2B, $FE, $87, $58, $7D, $B3, $20, $0E, $BA, $0B, $5B, $13, $3B, $D4, $0D, $6D, $91, $11, $62, $18, $83, $EF, $AD, $46, $0D, $51, $B1, $13, $BE, $E6, $B1, $C3, $9B, $EE, $E6, $9F, $DF, $4F, $B2, $41, $16, $10, $6E, $EA, $33, $88, $A1, $14, $63, $63, $1C, $CA, $06, $84, $60, $A9, $97, $C7
resume_3: .byte $7E, $E6, $1E, $30, $5F, $3B, $5E, $12, $40, $4B, $28, $C6, $53, $7C, $9A, $3E, $57, $D2, $86, $20, $A9, $F2, $96, $C0, $81, $40, $E3, $4D, $CA, $BC, $DD, $BA, $C6, $6F, $5C, $98, $E2, $A9, $E0, $AA, $16, $01, $19, $58, $AE, $DD, $4C, $44, $EA, $19, $49, $D9, $6F, $D1, $11, $07, $49, $C0, $A3, $3A, $C2, $78, $52, $38, $6E, $7D, $3D, $E2, $8F, $47, $27, $04, $8C, $66, $3F, $CB, $B8, $94, $53, $EF, $49, $F8, $5E, $94, $39, $93, $9B, $C0, $FA, $4B, $83, $E8, $3B, $8E, $37, $48, $1C, $74, $82
resume_4: .byte $EC, $09, $6C, $7E, $CB, $49, $80, $1E, $90, $81, $6E, $FF, $99, $96, $1B, $54, $75, $E7, $37, $2E, $06, $53, $D3, $69, $FA, $82, $6A, $0B, $BF, $AD, $68, $11, $85, $ED, $B4, $37, $29, $90, $9B, $E9, $70, $57, $E5, $56, $1F, $26, $2A, $04, $F7, $6D, $5F, $6E, $49, $A6, $B9, $1D, $93, $E3, $80, $FE, $F3, $7E, $8C, $62, $E2, $67, $9F, $81, $A8, $3B, $EB, $66, $0B, $50, $E3, $06, $87, $2B, $CD, $8A, $CB, $D5, $7E, $49, $ED, $F4, $8A, $83, $D3, $8D, $44, $D1, $AF, $83, $3F, $88, $4E, $5A, $0D
resume_5: .byte $11, $C5, $50, $1E, $74, $3F, $3D, $3A, $11, $16, $3E, $72, $3E, $6F, $2F, $28, $DB, $42, $3B, $6E, $54, $B7, $FE, $E9, $F9, $03, $AC, $91, $2A, $D4, $D2, $65, $08, $32, $0D, $07, $ED, $C3, $5A, $BC, $5C, $55, $D6, $E6, $43, $9C, $B2, $8C, $22, $5F, $CD, $DC, $97, $05, $9A, $13, $00, $62, $C7, $8B, $76, $8E, $29, $12, $3F, $9D, $E4, $44, $B7, $B5, $A4, $6E, $13, $9C, $9C, $90, $F6, $03, $6A, $55, $58, $24, $C2, $61, $9E, $D3, $BD, $02, $26, $1A, $42, $00, $D8, $9E, $51, $19, $76, $B2, $09
resume_6: .byte $C9, $D6, $88, $E2, $E2, $AD, $3D, $06, $31, $14, $E2, $8C, $0C, $43, $19, $80, $30, $8C, $55, $32, $58, $10, $59, $3A, $0C, $07, $79, $86, $54, $8F, $03, $47, $02, $E8, $65, $69, $BE, $E2, $6C, $6F, $BC, $FB, $1D, $4B, $7D, $D1, $E7, $85, $CC, $85, $72, $01, $04, $49, $E9, $29, $26, $A4, $C6, $76, $90, $73, $31, $D6, $FB, $52, $DB, $46, $E6, $C2, $73, $A2, $05, $3D, $5B, $9D, $F9, $55, $F0, $41, $CE, $8E, $3F, $F3, $45, $3A, $A8, $04, $80, $00, $CA, $A2, $87, $99, $2F, $09, $EA, $07, $13

prac_quick_resume:
		;
		; Get the top two digits of target rule (1234 -> 12)
		;
		lda FrameruleNumber+2
		jsr MulByTen
		clc
		adc FrameruleNumber+3
		tax
		ldy #0
		sty FrameruleNumber+2 ; clear (1234 - > 34)
		sty FrameruleNumber+3 ; clear
		lda resume_0,x
		sta PseudoRandomBitReg+0
		lda resume_1,x
		sta PseudoRandomBitReg+1
		lda resume_2,x
		sta PseudoRandomBitReg+2
		lda resume_3,x
		sta PseudoRandomBitReg+3
		lda resume_4,x
		sta PseudoRandomBitReg+4
		lda resume_5,x
		sta PseudoRandomBitReg+5
		lda resume_6,x
		sta PseudoRandomBitReg+6
		rts

BIG_FRAMES = 59
BIG_FIRE_FRAMES = 122
SMALL_FIRE_FRAMES = 435
BOTH_ENDINGS = 122
ALL_STAGES = 431

PowerUpOffsets:
	.word 0, BIG_FRAMES, BIG_FIRE_FRAMES, SMALL_FIRE_FRAMES
CategoryOffsets:
	.word 0, BOTH_ENDINGS, ALL_STAGES

AdvanceToRule:
		;
		; Regardless of rule, always honor powerups
		;
		ldy #0
		ldx PowerUps
		beq NoPowerups
		iny
		dex
		beq BigMarioPowerup
		iny 
		dex
		beq BigMarioPowerup
		ldx #1
		ldy #2
		;
		; Big mario
		;
BigMarioPowerup:
		stx PlayerSize
		sty PlayerStatus

NoPowerups:
		;
		; If Rule is 0, use title Rule
		; 
		lda FrameruleNumber+2
		ora FrameruleNumber+3
		ora FrameruleNumber+4
		ora FrameruleNumber+5
		bne StartAdvance
		sta PowerUps
		rts
StartAdvance:
		lda IntervalTimerControl
		cmp #3
DeadLock:
		bne DeadLock
		;
		; Copy to current rule
		;
		ldx #4
KeepCopyRule:
		lda FrameruleNumber+1,x
		sta DisplayDigits+RULE_COUNT_OFFSET-4, x
		dex
		bne KeepCopyRule
		lda #0
		sta DisplayDigits+RULE_COUNT_OFFSET-5
		;
		; Advance to correct frame rule
		;
		jsr prac_quick_resume
		lda FrameruleNumber+4
		jsr MulByTen
		clc
		adc FrameruleNumber+5
		tax
		beq RuleContinue
AdvanceFurther:
		jsr AdvanceRandom
		jsr AdvanceRandom
		jsr AdvanceRandom
		jsr AdvanceRandom
		jsr AdvanceRandom
		jsr AdvanceRandom
		jsr AdvanceRandom
		jsr AdvanceRandom
		jsr AdvanceRandom
		jsr AdvanceRandom
		jsr AdvanceRandom
		jsr AdvanceRandom
		jsr AdvanceRandom
		jsr AdvanceRandom
		jsr AdvanceRandom
		jsr AdvanceRandom
		jsr AdvanceRandom
		jsr AdvanceRandom
		jsr AdvanceRandom
		jsr AdvanceRandom
		jsr AdvanceRandom
		dex
		bne AdvanceFurther
RuleContinue:
		lda #0
		sta FrameruleNumber+5
		sta FrameruleNumber+4
		;
		; Advance to correct place within this rule
		;
		lda #18
		sta $02
AdvanceWithin:
		jsr AdvanceRandom
		dec $02
		bne AdvanceWithin
		;
		; Advance powerup frames
		;
		lda PowerUps
		asl
		tax
		lda PowerUpOffsets,x
		tay
		lda PowerUpOffsets+1,x
		tax
MorePowerUpFrames:
		cpy #$00
		bne DoPowerUpAdvance
		cpx #$00
		beq NoPowerUpFrames
		dex
DoPowerUpAdvance:
		jsr AdvanceRandom
		dey
		jmp MorePowerUpFrames
NoPowerUpFrames:
    	ldx #0
		stx PowerUps
		;
		; Advance category frames
		;
		lda CategorySelect
		asl
		tax
		lda CategoryOffsets,x
		tay
		lda CategoryOffsets+1,x
		tax
MoreCategoryFrames:
		cpy #$00
		bne DoCategoryAdvance
		cpx #$00
		beq NoCategoryFrames
		dex
DoCategoryAdvance:
		jsr AdvanceRandom
		dey
		jmp MoreCategoryFrames
NoCategoryFrames:
    	ldx #0
		stx CategorySelect
		;
		; Set the correct framecounter
		;
		ldy #$0e
		ldx #$a2
.ifndef ORG
		dex
		dex
		dey
		dey
.endif
@is_org:
		lda LevelNumber
		bne SaveFrameCounter
		inx
SaveFrameCounter:
		stx FrameCounter
		;
		; On the correct framerule, continue with the game.
		;
		rts

;we take a snapshot of the RNG every 512 frames from the start of the loop
;to limit the number of RNG iterations required for calculation to 511
RNGByte0LookupTable:
    .byte $33,$b5,$d1,$8c,$1b,$48,$a0,$99,$08,$36,$a7,$42,$fb,$63,$cf,$3b
    .byte $83,$76,$ce,$e0,$2b,$6f,$a2,$8b,$40,$69,$a2,$d0,$0c,$6d,$b0,$c3
    .byte $1f,$6c,$30,$27,$02,$12,$48,$5f,$05,$92,$f7,$0e,$7f,$f8,$9c,$1a
    .byte $fe,$c7,$29,$7d,$ea,$d4,$45,$fb,$55,$de,$73,$95,$2c,$d9,$e1,$ab
RNGByte1LookupTable:
    .byte $0f,$80,$76,$87,$bf,$ae,$99,$2c,$82,$40,$96,$3e,$4a,$cd,$c4,$8d
    .byte $c0,$e0,$b9,$f5,$63,$5d,$a1,$42,$a0,$2f,$cb,$29,$90,$65,$cf,$60
    .byte $cf,$72,$dc,$f3,$38,$6e,$22,$6f,$5d,$17,$da,$a8,$0b,$ed,$0f,$92
    .byte $65,$06,$5b,$33,$83,$2d,$fd,$38,$11,$81,$9b,$88,$c0,$f2,$aa,$74
RNGByte2LookupTable:
    .byte $69,$eb,$d4,$9e,$88,$3f,$d8,$1e,$93,$2c,$d9,$ba,$bc,$0a,$5b,$fa
    .byte $c7,$0d,$24,$34,$35,$83,$e4,$54,$21,$fd,$8e,$89,$89,$bf,$ae,$e6
    .byte $f0,$aa,$bd,$bc,$3c,$4a,$b2,$d1,$57,$33,$35,$b5,$f5,$1c,$37,$a7
    .byte $99,$88,$09,$c9,$56,$85,$76,$ce,$bb,$3c,$7c,$a3,$99,$41,$69,$22
RNGByte3LookupTable:
    .byte $77,$ea,$39,$91,$f7,$63,$eb,$46,$96,$ac,$f4,$c7,$29,$90,$d3,$e1
    .byte $46,$cd,$56,$de,$f3,$38,$a7,$d0,$61,$a2,$19,$da,$a8,$74,$31,$27
    .byte $6f,$4f,$04,$5b,$4c,$96,$f7,$0e,$ed,$1d,$81,$e4,$e2,$c6,$29,$82
    .byte $52,$85,$bf,$ae,$50,$de,$8c,$bf,$98,$3e,$4a,$b2,$18,$a5,$3d,$ca
RNGByte4LookupTable:
    .byte $a5,$3d,$91,$ac,$e6,$1d,$5a,$7a,$b1,$f5,$47,$b2,$51,$85,$64,$14
    .byte $c8,$d6,$1e,$b7,$98,$3e,$6e,$79,$23,$59,$05,$c9,$bb,$0a,$6d,$eb
    .byte $8f,$1b,$7e,$23,$34,$03,$92,$ac,$42,$7b,$ea,$8f,$09,$ff,$47,$cd
    .byte $60,$94,$ac,$3d,$fc,$d5,$61,$22,$ef,$46,$b2,$f5,$2a,$26,$ef,$8f
RNGByte5LookupTable:
    .byte $4a,$e9,$e2,$8f,$09,$db,$8c,$f6,$9c,$ac,$af,$3d,$03,$a4,$c2,$d6
    .byte $45,$4d,$b2,$0a,$7f,$4e,$20,$d9,$e1,$1d,$37,$7c,$ea,$e2,$0f,$a4
    .byte $50,$85,$76,$95,$ac,$2f,$7d,$b1,$98,$41,$e9,$46,$cd,$72,$15,$c8
    .byte $c4,$9f,$d3,$61,$5d,$68,$79,$5c,$de,$3a,$27,$90,$1a,$6c,$94,$1a
RNGByte6LookupTable:
    .byte $00,$92,$c1,$d6,$c5,$e0,$39,$03,$ff,$47,$20,$59,$a1,$af,$0b,$ff
    .byte $d5,$e1,$8f,$64,$4f,$32,$fc,$2a,$a6,$af,$3d,$ee,$9d,$f7,$d5,$73
    .byte $4e,$b2,$8a,$d2,$c5,$29,$59,$e8,$1d,$b7,$3c,$58,$de,$8c,$9b,$53
    .byte $05,$b6,$8a,$1b,$a5,$c2,$bb,$18,$01,$b6,$43,$7b,$4e,$20,$4b,$04
SetRNGFromNumber:
	lda FrameruleNumber+2
	ora FrameruleNumber+3
	ora FrameruleNumber+4
	ora FrameruleNumber+5
	bne @do_normal_rng
	sta PowerUps
	rts
@do_normal_rng:
	;
	; Regardless of rule, always honor powerups
	;
	ldy #0
	ldx PowerUps
	beq @no_power_ups
	iny
	dex
	beq @power_ups
	iny 
	dex
	beq @power_ups
	ldx #1
	ldy #2
	;
	; Big mario
	;
@power_ups:
	stx PlayerSize
	sty PlayerStatus
@no_power_ups:
	ldx #4
@copy_rng_loop:
	lda FrameruleNumber+1,x
	sta DisplayDigits+RULE_COUNT_OFFSET-4, x
	dex
	bne @copy_rng_loop
	lda #0
	sta DisplayDigits+RULE_COUNT_OFFSET-5
	;
	; Advance to correct RNG
	;
	lda FrameruleNumber+5
	sec
	sbc #$01
	and #$0f
	sta FrameruleNumber+5
	lda FrameruleNumber+4
	sbc #$00
	and #$0f
	sta FrameruleNumber+4
	lda FrameruleNumber+3
	sbc #$00
	and #$0f
	sta FrameruleNumber+3
	lda FrameruleNumber+2
	sbc #$00
	and #$0f
	sta FrameruleNumber+2
	asl
	asl
	asl
	sta $00
	lda FrameruleNumber+3
	lsr
	clc
	adc $00
	tax
	lda RNGByte0LookupTable,x
	sta PseudoRandomBitReg
	lda RNGByte1LookupTable,x
	sta PseudoRandomBitReg+1
	lda RNGByte2LookupTable,x
	sta PseudoRandomBitReg+2
	lda RNGByte3LookupTable,x
	sta PseudoRandomBitReg+3
	lda RNGByte4LookupTable,x
	sta PseudoRandomBitReg+4
	lda RNGByte5LookupTable,x
	sta PseudoRandomBitReg+5
	lda RNGByte6LookupTable,x
	sta PseudoRandomBitReg+6
	lda FrameruleNumber+3
	lsr
	lda #$00
	rol
	tay
	lda FrameruleNumber+4
	asl
	asl
	asl
	asl
	adc FrameruleNumber+5
	tax
@advance_rng_loop:
	cpy #$00
	bne @advance_rng
	cpx #$00
	beq @rng_advance_done
@advance_rng:
	jsr AdvanceRandom
	dex
	cpx #$ff
	bne @advance_rng_loop
	dey
	bpl @advance_rng_loop
@rng_advance_done:
	stx FrameruleNumber+2
	stx FrameruleNumber+3
	stx FrameruleNumber+4
	stx FrameruleNumber+5
	rts

TopText:
	text_block $2044, "RULE * F*"
	text_block $2051, " A   B  TIME"
	.byte $20, $6b, $02, $2e, $29 ; score trailing digit and coin display
	.byte $23, $c0, $7f, $aa ; attribute table data, clears name table 0 to palette 2
	.byte $23, $c2, $01, $ea ; attribute table data, used for coin icon in status bar
	.byte $00

WritePracticeTop:
	inline_write_block TopText
	jmp ReturnBank

RedrawFramesRemaningInner:
		lda WRAM_PracticeFlags
		and #PF_DisablePracticeInfo
		bne nodraw
		ldy VRAM_Buffer1_Offset
		lda #$20
		sta VRAM_Buffer1, y
		lda #$59
		sta VRAM_Buffer1+1, y
		lda #$04
		sta VRAM_Buffer1+2, y
		lda #$1B
		sta VRAM_Buffer1+3, y
		lda #$29
		sta VRAM_Buffer1+4, y
		lda IntervalTimerControl
		jsr DivByTen
		sta VRAM_Buffer1+6, y
		txa
		sta VRAM_Buffer1+5, y
		lda #0
		sta VRAM_Buffer1+7, y
		clc
		tya
		adc #7
		sta VRAM_Buffer1_Offset
nodraw:	rts

HideRemainingFrames:
		ldy VRAM_Buffer1_Offset
		lda #$20
		sta VRAM_Buffer1, y
		lda #$59
		sta VRAM_Buffer1+1, y
		lda #$04
		sta VRAM_Buffer1+2, y
		lda #$1d
		sta VRAM_Buffer1+3, y
		lda #$12
		sta VRAM_Buffer1+4, y
		lda #$16
		sta VRAM_Buffer1+5, y
		lda #$0e
		sta VRAM_Buffer1+6, y
		lda #0
		sta VRAM_Buffer1+7, y
		clc
		tya
		adc #7
		sta VRAM_Buffer1_Offset
		jmp ReturnBank
		
RedrawAllInner:
		jsr RedrawFramesRemaningInner
		jmp RedrawFrameNumbersInner

RedrawAll:
		jsr RedrawFramesRemaningInner
		jsr RedrawFrameNumbersInner
		jmp ReturnBank
		
RedrawFrameNumbersInner:
		lda OperMode
		beq @draw ; slighty dumb
		lda WRAM_PracticeFlags
		and #PF_DisablePracticeInfo
		bne nodraw
@draw:	ldy VRAM_Buffer1_Offset
		lda #$20
		sta VRAM_Buffer1, y
		lda #$4d
		sta VRAM_Buffer1+1, y
		lda #$03
		sta VRAM_Buffer1+2, y
		lda FrameCounter
		jsr DivByTen
		sta VRAM_Buffer1+5, y
		txa
		jsr DivByTen
		sta VRAM_Buffer1+4, y
		txa
		sta VRAM_Buffer1+3, y
		lda #0
		sta VRAM_Buffer1+6, y

		lda OperMode
		beq @rule ; force RULE if on title screen
		lda WRAM_PracticeFlags
		and #PF_SockMode
	.ifndef ORG
		bne @dont_draw_rule
	.else
		beq @dont_draw_rule
	.endif
@rule:	lda #$20
		sta VRAM_Buffer1+6, y ; Offset for RULE (if any)
		lda #$64
		sta VRAM_Buffer1+7, y
		lda #$04
		sta VRAM_Buffer1+8, y
		ldx #0
@copy_rule:
		lda CurrentRule, x
		sta VRAM_Buffer1+9, y
		iny
		inx
		cpx #4
		bne @copy_rule
		lda #0
		sta VRAM_Buffer1+9, y
		iny
		iny
		iny
@dont_draw_rule:
		tya
		clc
		adc #6
		sta VRAM_Buffer1_Offset
		ldx ObjectOffset
		rts

RedrawFrameNumbers:
		jsr RedrawFrameNumbersInner
		jmp ReturnBank

UpdateFrameRule:
		lda WRAM_AdvRNG
		bne NotEvenFrameRule
		lda #$14
		cmp IntervalTimerControl
		bne NotEvenFrameRule
		lda #$01
		sta DigitModifier+5
		ldy #RULE_COUNT_OFFSET
		ldx #2
		jsr DigitsMathRoutineN
NotEvenFrameRule:
		jmp ReturnBank

;RNG enters a 32767-frame loop 39 iterations after seeding...we assign a
;number from $0001 to $7fff for these 32767 combinations.
;if the RNG number is $0000, we haven't entered the loop yet.
StartofRNGLoop:
    .byte $33,$0f,$69,$77,$a5,$4a,$00  ;RNG number $0001 (aka start of the loop)
UpdateRNGNumber:
    ldx #$06                    ;use X as counter to compare RNG bytes
@check_rng_loop:
    lda PseudoRandomBitReg,x    ;compare our current RNG against the start of the RNG loop
    cmp StartofRNGLoop,x
    bne @not_start              ;if any bytes don't match, branch ahead
    dex
    bpl @check_rng_loop         ;do this for all seven RNG bytes
    lda #$00                    ;our RNG sequence DOES match, force RNG number to $0001
    sta CurrentRule
	sta CurrentRule+1
	sta CurrentRule+2
    lda #$01
    sta CurrentRule+3
    jmp ReturnBank
@not_start:
    lda CurrentRule             ;if we aren't at the start of the loop, check if the number
    ora CurrentRule+1           ;is still at $0000 (we haven't done 39 iterations yet)
	ora CurrentRule+2
	ora CurrentRule+3
    beq @exit                   ;if it is, do not modify the RNG number
	ldx #3						;otherwise increment
	lda #$01
@update_rng_loop:
	clc
	adc CurrentRule,x
	cmp #$10
	bcc @store_digit
	lda #$00
	sta CurrentRule,x
	lda #$01
	bne @rng_loop_condition
@store_digit:
	sta CurrentRule,x
	lda #$00
@rng_loop_condition:
	dex
	bpl @update_rng_loop
@exit:
    jmp ReturnBank

PrintableWorldNumber:
		lda WorldNumber
		clc
		adc #$01
		rts

GetSelectedValue:
		lda $0
		beq @get_world
		cmp #1
		beq @get_level
		cmp #2
		beq @get_pups
		cmp #3
		beq @get_slots
		bne @get_player
@get_level:
		lda LevelNumber
		clc
		adc #$01
		rts
@get_pups:
		lda PowerUps
		rts
@get_player:
		lda WRAM_IsContraMode ;
		beq @not_peach
		lda #$19
		rts
@get_slots:
		lda WRAM_AdvRNG
		beq @selected_slot
		lda #$0A ; A
		rts
@selected_slot:
		lda WRAM_SelectedSlot
		clc
		adc #$01
		rts
@not_peach:
		lda #$16 ; M
		sec
		sbc CurrentPlayer ; M / L
		rts 
@get_world:
		jmp PrintableWorldNumber

DrawRuleNumber:
		ldx VRAM_Buffer1_Offset
		lda #$22
		sta VRAM_Buffer1, x
.ifdef ORG
		lda #$F0
.else
		lda #$F2
.endif
		sta VRAM_Buffer1+1, x
		lda #$04
		sta VRAM_Buffer1+2, x
		ldy #0
@copy_next:
		lda ($04),y
		pha
		lsr_by 4
		sta VRAM_Buffer1+3, x
		pla
		and #$0f
		sta VRAM_Buffer1+4, x
		inx
		inx
		iny
		cpy #2
		bne @copy_next
		lda VRAM_Buffer1_Offset
		clc 
		adc #7
		sta VRAM_Buffer1_Offset
		rts


menu_text:
.ifdef ORG
	text_block $222B, "WORLD %"
	text_block $224B, "LEVEL %"
	text_block $226B, "P-UP  %"
	text_block $228B, "SLOT  %"
	text_block $22AB, "HERO  %"
	text_block $22EB, "RULE"
.else
	text_block $222D, "WORLD %"
	text_block $224D, "LEVEL %"
	text_block $226D, "P-UP  %"
	text_block $228D, "SLOT  %"
	text_block $22AD, "HERO  %"
	text_block $22ED, "RULE"
.endif
	.byte $00

draw_menu:
		lda FrameCounter
		and #$1
		beq @redraw_extra
		ldx #0
		stx $0
		ldy VRAM_Buffer1_Offset
@more_bytes:
		lda menu_text, x
		cmp #$25 ; %
		bne @draw_menu_byte
		jsr GetSelectedValue
		inc $00
@draw_menu_byte:
		sta VRAM_Buffer1, y
		lda menu_text, x
		inx
		iny
		cmp #0
		bne @more_bytes
		dey
		sty VRAM_Buffer1_Offset
		rts
@redraw_extra:
		jsr DrawRuleNumber
		jsr DrawRuleCursor
		jsr DrawMushroomIcon
		jmp RedrawFrameNumbersInner

;-------------------------------------------------------------------------------------

RuleCursorData:
	.byte $23
.ifdef ORG
	.byte $10
.else
	.byte $12
.endif
	.byte $04, $24, $24, $24, $24
	.byte $00

DrawRuleCursor:
		ldy #7
		lda VRAM_Buffer1_Offset
		clc
		adc #7
		sta VRAM_Buffer1_Offset
		tax
WriteRuleCursor:
		lda RuleCursorData,y
		sta VRAM_Buffer1,x
		dex
		dey
		bpl WriteRuleCursor
		lda VRAM_Buffer1_Offset
		sec
		sbc #4
		adc RuleIndex
		tax
		dex
		lda #$29
		sta VRAM_Buffer1,x
		rts

MushroomIconData:
		.byte $22
	.ifdef ORG
		.byte $29
	.else
		.byte $2B
	.endif
		.byte $87, $24, $24, $24, $24, $24, $24, $24
DrawMushroomIcon:
		ldy #$0a
		lda VRAM_Buffer1_Offset
		clc
		adc #$0a
		sta VRAM_Buffer1_Offset
		tax
IconDataRead:
		lda MushroomIconData,y
		sta VRAM_Buffer1,x
		dex
		dey
		bpl IconDataRead
		lda WRAM_MenuIndex
		cmp #5
		bmi FirstFour
		clc
		adc #1
FirstFour:
		adc VRAM_Buffer1_Offset
		tax
		lda #$ce
		sta VRAM_Buffer1+3-$0a,x
		rts

RuleInputMaxBounds:
	.byte 10 ;rule
	.byte 8, 16 ;RNG

rule_input:
		ldx RuleIndex
		cmp #Left_Dir
		bne @test_right
		dex
		jmp @rule_hori
@test_right:
		cmp #Right_Dir
		bne @test_down
		inx
@rule_hori:
		bpl @test_high
		ldx #3
@test_high:
		cpx #4
		bcc @save_index
		ldx #0
@save_index:
		stx RuleIndex
		rts
@test_down:
		cmp #Down_Dir
		bne @test_up
		lda #$ff
		jmp @update
@test_up:
		cmp #Up_Dir
		bne rule_done
		lda #$01
@update:
		sta $00         ;store A in temp RAM
		ldx WRAM_AdvRNG ;use X to determine rule or RNG mode
		beq @get_bcd_nybble
		lda RuleIndex
		beq @get_bcd_nybble
		inx             ;increment X if not first digit of RNG
@get_bcd_nybble:
		lda RuleIndex   ;divide rule index by 2
		lsr
		tay
		lda ($04),y     ;retrieve the appropiate BCD digit
		bcs @low_nybble
		lsr_by 4
@low_nybble:	
		and #$0f
		clc
		adc $00         ;add to A to obtain proper value
		bmi @negative
		cmp RuleInputMaxBounds,x
		bmi @save_digit
		lda #0
		jmp @save_digit
@negative:
		lda RuleInputMaxBounds,x
		sec
		sbc #$01
		bne @save_digit
@save_digit:
		sta $00         ;store in temp RAM for later
		lda RuleIndex   ;divide rule index by 2
		lsr
		tay
		lda ($04),y
		bcs @update_low_nybble
		rol $00         ;move digit to high nybble
		rol $00
		rol $00
		rol $00
		and #$0f        ;mask out high nybble from rule
		adc $00         ;and add in new high nybble
		jmp @store_digit
@update_low_nybble:
		and #$f0        ;mask out low nybble from rule
		clc
		adc $00         ;and add in new low nybble
@store_digit:
		sta ($04), y    ;store updated rule byte
rule_done:
		rts

menu_input:
		cmp #Left_Dir
		bne @check_right
		lda #$ff
		sta $0
		bne @set_mask
@check_right:
		cmp #Right_Dir
		bne rule_done
		lda #$01
		sta $0
@set_mask:
		ldx WRAM_MenuIndex
		dex
		bmi @world_selected
		bne @check_pups
		lda LevelNumber ; level
		clc
		adc $00
		and #$03
		sta LevelNumber
		rts
@world_selected:
		jmp ChangeWorldNumber
@check_pups:
		dex
		bne @slot_number
		lda PowerUps
		clc
		adc $00
		and #$03
		sta PowerUps
@keep_peach:
		rts
@slot_number:
		dex
		bne @hero_selected
		lda WRAM_SelectedSlot
		clc
		adc $00
		bpl @right
		lda #$04
		bne @store
@right:
		cmp #$05
		bcc @store
		lda #$00
@store:
		sta WRAM_SelectedSlot
		rts
@hero_selected:
		lda WRAM_IsContraMode
		bne @keep_peach
		lda CurrentPlayer
		clc
		adc $01
		and #$01
		sta CurrentPlayer
		jmp LL_UpdatePlayerChange

ChangeWorldNumber:
		ldx BANK_SELECTED          ; get selected game
		ldy WorldNumber            ; and current world number
		lda $0                     ; get input direction
		cmp #1                     ; check for going right
		bne @going_left            ; if not - skip to going left
	@going_right:                  ; we are going right
		iny                        ; advance to next world
.ifdef ORG
		cpy #8                     ; yes - have we selected world 9
	@checked_ann_r:                ;
		cpy #9                     ; yes - are we past the end of the game?
		bcc @store                 ; no - we're done, store the world
		ldy #0                     ; yes - wrap around to world 1
		beq @store                 ; and store
	@going_left:                   ; we are going left
		dey                        ; drop world number by 1
	@checked_ann_l:                ;
		bpl @store                 ; no - we're done, store the world
		ldy #8                     ; yes - wrap around to world 1
		beq @store                 ; and store
.elseif .defined(LOST)
		cpy #8                     ; yes - have we selected world 9
	@checked_ann_r:                ;
		cpy #$D                    ; we are playing LL / ANN, are we past the end of the game?
		bcc @store                 ; no - we're done, store the world
		ldy #0                     ; yes - wrap around to world 1
		beq @store                 ; and store
	@going_left:                   ; we are going left
		dey                        ; drop world number by 1
	@checked_ann_l:                ;
		bpl @store                 ; no - we're done, store the world
		ldy #8                     ; yes - wrap around to world 1
		beq @store                 ; and store
		ldy #$0C                   ; we are playing LL / ANN, wrap to world D		
.else
		cpx #BANK_ANN              ; are we playing ANN?
		bne @checked_ann_r         ; no - skip ahead
		cpy #8                     ; yes - have we selected world 9
		bne @checked_ann_r         ; no - skip ahead
		iny                        ; yep - advance past world 9 (it doesnt exist in ANN)
	@checked_ann_r:                ;
		cpy #$D                    ; we are playing LL / ANN, are we past the end of the game?
		bcc @store                 ; no - we're done, store the world
		ldy #0                     ; yes - wrap around to world 1
		beq @store                 ; and store
	@going_left:                   ; we are going left
		dey                        ; drop world number by 1
		cpx #BANK_ANN              ; are we playing ANN?
		bne @checked_ann_l         ; no - skip ahead
		cpy #8                     ; yes - have we selected world 9?
		bne @checked_ann_l         ; no - skip ahead
		dey                        ; yep - decrement past world 9 (it doesnt exist in ANN)
	@checked_ann_l:				   ;
		cpy #$FF                   ; have we wrapped around?
		bne @store                 ; no - we're done, store the world
	@check_ll_l:                   ;
		ldy #$0C                   ; we are playing LL / ANN, wrap to world D		
.endif
@store:                        ;
		sty WorldNumber            ; update selected world
		rts                        ; and exit
	
next_task:
		ldx #4*4-1
		lda #0
		sta VRAM_Buffer1
		sta VRAM_Buffer1_Offset
@reset_next:
		sta Sprite_Data+4, x
		dex
		bpl @reset_next
		jsr WriteRulePointer
		ldx #2
		ldy #1
@copy_rule:
		lda ($04), y
		pha
		and #$0f
		sta SavedRule+1, x
		pla
		lsr_by 4
		sta SavedRule, x
		dex
		dex
		dey
		bpl @copy_rule
		inc OperMode_Task
		jmp ReturnBank

RuleSlotPointers_Low:
	.byte <WRAM_RuleSlot1, <WRAM_RuleSlot2, <WRAM_RuleSlot3, <WRAM_RuleSlot4, <WRAM_RuleSlot5, <WRAM_AdvRNGSlot

RuleSlotPointers_Hi:
	.byte >WRAM_RuleSlot1, >WRAM_RuleSlot2, >WRAM_RuleSlot3, >WRAM_RuleSlot4, >WRAM_RuleSlot5, >WRAM_AdvRNGSlot
	
WriteRulePointer:
		lda WorldNumber
		asl ; *=2
		asl ; *=4
		asl ; *=8
.ifdef ANN
		cmp #(8*8)
		bcc @store
		sec
		sbc #8 ;subtract offset for nippon ext, no world 9
.endif
@store:
		sta $04
		lda LevelNumber
		asl ; *=2
		clc
		adc $04
		ldx WRAM_AdvRNG
		beq @framerules
		ldx #5
		bne @store_pointer
@framerules:
		ldx WRAM_SelectedSlot
@store_pointer:
		clc
		adc RuleSlotPointers_Low,x
		sta $04
		lda #0
		adc RuleSlotPointers_Hi,x
		sta $05	
		rts

toggle_second_quest:
.ifndef LOST
		lda PrimaryHardMode
		eor #1
		sta PrimaryHardMode
		ldx VRAM_Buffer1_Offset
		lda #$3F
		sta VRAM_Buffer1,x
		lda #$00
		sta VRAM_Buffer1+1,x
		sta VRAM_Buffer1+4,x
		lda #$01
		sta VRAM_Buffer1+2,x
		lda #$05 ; Hardmode color
		ldy PrimaryHardMode
		bne @set_color
	.ifdef ANN
		lda #$0f ; Nippon color
	.else
		lda #$22 ; Original color
	.endif
.else
@is_ll:
		lda CompletedWorlds
		eor #$ff
		sta CompletedWorlds
		ldx VRAM_Buffer1_Offset
		lda #$3F
		sta VRAM_Buffer1,x
		lda #$00
		sta VRAM_Buffer1+1,x
		sta VRAM_Buffer1+4,x
		lda #$01
		sta VRAM_Buffer1+2,x
		lda #$0f ; Warpless color
		ldy CompletedWorlds
		bne @set_color
		lda #$22 ; Lost color
		bne @set_color
		rts
.endif
@set_color:
		sta VRAM_Buffer1+3,x
		inx
		inx
		inx
		inx
		stx VRAM_Buffer1_Offset
		rts
		
toggle_rng_offset:
		ldy CategorySelect
		iny
	.ifndef LOST
		cpy #$02
	.else
		cpy #$03
	.endif
		bcc @InRange
		ldy #$00
@InRange:
		sty CategorySelect
		ldx VRAM_Buffer1_Offset
		tya
		asl
		tay
@org_pointers:
		lda CategoryPointers,y
		sta $00
		lda CategoryPointers+1,y
		sta $01
		ldy #$00
		beq @VRAMBufferLoop	
@VRAMBufferLoop:
		lda ($00),y
		cmp #$ff
		beq @ExitTitleChange
		sta VRAM_Buffer1,x
		inx
		iny
		bne @VRAMBufferLoop
@ExitTitleChange:
		lda #$00
		sta VRAM_Buffer1,x
		lda VRAM_Buffer1_Offset
		adc #$11
		sta VRAM_Buffer1_Offset
		rts

.ifdef ORG
	CopyrightText1985:
	.byte $21, $ed, $0e, $cf, $01, $09, $08, $05, $24, $17, $12, $17, $1d
	.byte $0e, $17, $0d, $18, $ff

	BothQuestText:
		.byte $21, $ed, $0e, $24, $24, $24, $0b, $18, $1d, $11, $24, $1a, $1e 
		.byte $0e, $1c, $1d, $1c, $ff
.elseif .defined(LOST)
	CopyrightText1986_L:
		.byte $21, $ef, $0e, $cf, $01, $09, $08, $06, $24, $17, $12, $17, $1d
		.byte $0e, $17, $0d, $18, $ff

	BothEndText:
		.byte $21, $ef, $0e, $24, $24, $0b, $18, $1d, $11, $24, $0e, $17, $0d 
		.byte $12, $17, $10, $1c, $ff
		
	AllStagesText:
		.byte $21, $ef, $0e, $24, $24, $24, $24, $0a, $15, $15, $24, $1c, $1d
		.byte $0a, $10, $0e, $1c, $ff
.else
	CopyrightText1986:
		.byte $21, $ee, $0e, $cf, $01, $09, $08, $06, $24, $17, $12, $17, $1d
		.byte $0e, $17, $0d, $18, $ff	
		
	AllStagesText:
		.byte $21, $ee, $0e, $24, $24, $24, $24, $0a, $15, $15, $24, $1c, $1d
		.byte $0a, $10, $0e, $1c, $ff
.endif
	
CategoryPointers:

.ifdef ORG
	.word CopyrightText1985
	.word BothQuestText
.elseif .defined(LOST)
	.word CopyrightText1986_L
	.word BothEndText
	.word AllStagesText
.else
	.word CopyrightText1986
	.word AllStagesText
.endif

nuke_timer:
		lda #0
		sta SelectTimer
		jmp ReturnBank

next_task_proxy:
		jmp next_task

PracticeTitleMenu:
		jsr WriteRulePointer
		jsr draw_menu
		lda JoypadBitMask
		ora SavedJoypadBits
		beq nuke_timer
		ldx SelectTimer
		bne @dec_timer
		ldx #32
		stx SelectTimer
		cmp #Start_Button
		beq next_task_proxy
		cmp #Select_Button
		bne @check_b
		ldx WRAM_MenuIndex
		inx
		cpx #6
		bne @save_menu_index
		ldx #0
@save_menu_index:
		stx WRAM_MenuIndex
		jmp @dec_timer
@check_b:
		cmp #B_Button
		beq @sq
		cmp #A_Button
		bne @check_input
		jsr toggle_rng_offset
		jmp @dec_timer
@sq:
		jsr toggle_second_quest
		jmp @dec_timer
@check_input:
		ldx WRAM_MenuIndex
		cpx #5
		bne @check_menu_input
		jsr rule_input
		jmp @dec_timer
@check_menu_input:
		jsr menu_input
@dec_timer:
		ldx SelectTimer
		dex
		stx SelectTimer
		jmp ReturnBank

begin_save:
		lda BANK_SELECTED
		sta WRAM_SaveStateBank
		lda GamePauseStatus
		ora #02
		sta GamePauseStatus
		lda WRAM_PracticeFlags
		ora #PF_SaveState
		sta WRAM_PracticeFlags
		inc DisableScreenFlag
		lda WRAM_DelaySaveFrames
		sta SaveFramesLeft
.ifndef ORG 						;SMB1 uses a sprite 0 hit for status bar split.
		lda IRQUpdateFlag
		sta WRAM_IRQUpdateFlag
.endif
		lda #0
.ifndef ORG 
		sta IRQUpdateFlag
.endif
		sta SND_MASTERCTRL_REG
		rts

begin_load:
		lda WRAM_SaveStateBank
		cmp BANK_SELECTED
		bne @invalid_save
		lda GamePauseStatus
		ora #02
		sta GamePauseStatus
		lda WRAM_PracticeFlags
		ora #PF_LoadState
		sta WRAM_PracticeFlags
		inc DisableScreenFlag
		lda WRAM_DelaySaveFrames
		sta SaveFramesLeft
		lda #$00
.ifndef ORG
		sta IRQUpdateFlag
.endif
		sta SND_MASTERCTRL_REG
@invalid_save:
		rts

run_save_load:
		and #PF_SaveState
		beq @load_state
		jmp SaveState
@load_state:
		jmp LoadState

PracticeOnFrame:
		jsr PracticeOnFrameInner
		jmp ReturnBank

PracticeOnFrameInner:
		lda WRAM_PracticeFlags
		and #PF_SaveState|PF_LoadState
		beq @no_queued_commands
		jmp run_save_load
@no_queued_commands:
.ifdef ORG
		jsr SoundEngine
.else
		jsr LL_SoundEngine
.endif
@read_keypads:
		lda SavedJoypad1Bits
		ora JoypadBitMask
		sta LastInputBits
		jsr ReadJoypads
		lda JoypadBitMask
		ora SavedJoypadBits
		beq @pause_things
		cmp LastInputBits
		beq @pause_things
		cmp WRAM_SaveButtons
		bne @no_begin_save
		jmp begin_save
@no_begin_save:
		cmp WRAM_LoadButtons
		bne @no_begin_load
		jmp begin_load
@no_begin_load:
		cmp WRAM_RestartButtons
		bne @no_restart_level
		jmp RequestRestartLevel
@no_restart_level:
		cmp WRAM_TitleButtons
		bne @pause_things
		lda BANK_SELECTED
		jmp StartBank
@pause_things:
		lda OperMode
		cmp #VictoryModeValue
		beq @check_pause
		cmp #GameModeValue
		bne @exit
		lda OperMode_Task
.ifdef ORG
        cmp #$03
.elseif .defined(LOST)
        cmp #$04
.else
        cmp #$05
.endif
		bmi @exit
@check_pause:
		; TODO RENABLE
		; jsr HandleRestarts ; Wont return if it did something
		jmp PauseMenu
@exit:
		rts

PrintHexByte:
		sta $0
		lsr
		lsr
		lsr
		lsr
		jsr DoNibble
		lda $0
DoNibble:
		and #$0f
		sta VRAM_Buffer1+3,x
		inx
DontUpdateSockHash:
		rts

ForceUpdateSockHashInner:
		lda GameEngineSubroutine
		cmp #$0b
		beq skip_sock_hash
		lda WRAM_PracticeFlags
        and #PF_DisablePracticeInfo
        bne DontUpdateSockHash
		lda SprObject_X_MoveForce ; Player force
		sta $3
		lda SprObject_X_Position ; Player X
		sta $2
		lda SprObject_PageLoc ; Player page
		sta $1
		lda SprObject_Y_Position ; Player Y
		eor #$ff
		lsr
		lsr
		lsr
		bcc something_or_other
		pha
		clc
		lda #$80
		adc $3
		sta $3
		lda $2
		adc #2
		sta $2
		lda $1
		adc #0
		sta $1
		pla
something_or_other:
		sta $04
		asl
		asl
		adc $04
		adc $2
		sta $2
		lda $1
		adc #0
		sta $1
		ldx VRAM_Buffer1_Offset 
		bne skip_sock_hash
draw_sock_hash:
		lda #$20
		sta VRAM_Buffer1
		lda #$62 ;
		sta VRAM_Buffer1+1
		lda #$06 ; len
		sta VRAM_Buffer1+2
		ldx #0
		lda $1
		jsr PrintHexByte
		lda $2
		jsr PrintHexByte
		lda $3
		jsr PrintHexByte
		lda #0
		sta VRAM_Buffer1+3, x
		lda #$09
		sta VRAM_Buffer1_Offset
skip_sock_hash:
		rts

ForceUpdateSockHash:
		jsr ForceUpdateSockHashInner
		jmp ReturnBank

LoadState:
		dec SaveFramesLeft
		beq @do_loadstate
		lda GamePauseStatus
		ora #02
		sta GamePauseStatus
		rts
@do_loadstate:
		ldx #$7F
@save_wram:
		lda WRAM_SaveWRAM, x
		sta WRAM_ToSaveFile, x
		dex
		bpl @save_wram
		ldx #0
@save_level:
		lda WRAM_SaveLevel, x
		sta WRAM_LevelData, x
		inx
		bne @save_level

		lda OperMode
		cmp WRAM_SaveRAM+OperMode
		bne @restore_pal
		lda OperMode_Task
		cmp WRAM_SaveRAM+OperMode_Task
		bne @restore_pal
		lda CurrentPlayer
		cmp WRAM_SaveRAM+CurrentPlayer
		bne @restore_pal
		lda AreaType
		cmp WRAM_SaveRAM+AreaType
		beq @copy_ram
@restore_pal:
		lda PPU_STATUS
		lda #$3F
		sta PPU_ADDRESS
		lda #$00
		sta PPU_ADDRESS
		lda PPU_DATA ; Internal buffer; throw

		ldx #$0
		ldy #$20
@copy_pal:
		lda WRAM_SavePAL, x
		sta PPU_DATA
		inx
		dey
		bne @copy_pal
		ldx #0
@copy_ram:
		lda WRAM_SaveRAM, x
		sta $000, x
		lda WRAM_SaveRAM+$100, x
		sta $100, x
		lda WRAM_SaveRAM+$200, x
		sta $200, x
		lda WRAM_SaveRAM+$300, x
		sta $300, x
		lda WRAM_SaveRAM+$400, x
		sta $400, x
		lda WRAM_SaveRAM+$500, x
		sta $500, x
		lda WRAM_SaveRAM+$600, x
		sta $600, x
		lda WRAM_SaveRAM+$700, x
		sta $700, x
		inx
		bne @copy_ram
		lda PPU_STATUS
		lda #$20
		sta PPU_ADDRESS
		lda #$00
		sta PPU_ADDRESS

		ldx #0
@copy_nt:
		lda WRAM_SaveNT, x
		sta PPU_DATA
		lda WRAM_SaveNT+$100, x
		sta PPU_DATA
		lda WRAM_SaveNT+$200, x
		sta PPU_DATA
		lda WRAM_SaveNT+$300, x
		sta PPU_DATA
		lda WRAM_SaveNT+$400, x
		sta PPU_DATA
		lda WRAM_SaveNT+$500, x
		sta PPU_DATA
		lda WRAM_SaveNT+$600, x
		sta PPU_DATA
		lda WRAM_SaveNT+$700, x
		sta PPU_DATA
		inx
		bne @copy_nt

		ldx #(WRAM_LostEnd - WRAM_LostStart)-1
@copy_lost:
		lda WRAM_SaveLost, x
		sta WRAM_LostStart, x
		dex
		bpl @copy_lost
		lda GamePauseStatus
		ora #2
		sta GamePauseStatus
		lda WRAM_PracticeFlags
		and #PF_LoadState^$FF
		sta WRAM_PracticeFlags
		lda #0
		sta DisableScreenFlag
.ifndef ORG
		lda WRAM_IRQUpdateFlag
		sta IRQUpdateFlag
.endif
		; Controllers will be read again this frame. Reset them (very buggy otherwise ;)).
		sta SavedJoypad1Bits
		sta JoypadBitMask
		rts

SaveState:
		dec SaveFramesLeft
		beq @do_savestate
		lda GamePauseStatus
		ora #02
		sta GamePauseStatus
		rts
@do_savestate:
		lda PPU_STATUS
		lda #$3F
		sta PPU_ADDRESS
		lda #$00
		sta PPU_ADDRESS
		lda PPU_DATA ; Internal buffer; throw

		ldx #$0
		ldy #$20
@copy_pal:
		lda PPU_DATA
		sta WRAM_SavePAL, x
		inx
		dey
		bne @copy_pal

		ldx #$7F
@save_wram:
		lda WRAM_ToSaveFile, x
		sta WRAM_SaveWRAM, x
		dex
		bpl @save_wram
		ldx #0
@save_level:
		lda WRAM_LevelData, x
		sta WRAM_SaveLevel, x
		inx
		bne @save_level
@copy_ram:
		lda $000, x
		sta WRAM_SaveRAM, x
		lda $100, x
		sta WRAM_SaveRAM+$100, x
		lda $200, x
		sta WRAM_SaveRAM+$200, x
		lda $300, x
		sta WRAM_SaveRAM+$300, x
		lda $400, x
		sta WRAM_SaveRAM+$400, x
		lda $500, x
		sta WRAM_SaveRAM+$500, x
		lda $600, x
		sta WRAM_SaveRAM+$600, x
		lda $700, x
		sta WRAM_SaveRAM+$700, x
		inx
		bne @copy_ram
		lda PPU_STATUS
		lda #$20
		sta PPU_ADDRESS
		lda #$00
		sta PPU_ADDRESS
		lda PPU_DATA ; Internal buffer; throw
		
		ldx #0
@copy_nt:
		lda PPU_DATA
		sta WRAM_SaveNT, x
		lda PPU_DATA
		sta WRAM_SaveNT+$100, x
		lda PPU_DATA
		sta WRAM_SaveNT+$200, x
		lda PPU_DATA
		sta WRAM_SaveNT+$300, x
		lda PPU_DATA
		sta WRAM_SaveNT+$400, x
		lda PPU_DATA
		sta WRAM_SaveNT+$500, x
		lda PPU_DATA
		sta WRAM_SaveNT+$600, x
		lda PPU_DATA
		sta WRAM_SaveNT+$700, x
		inx
		bne @copy_nt

		ldx #(WRAM_LostEnd - WRAM_LostStart)-1
@copy_lost:
		lda WRAM_LostStart, x
		sta WRAM_SaveLost, x
		dex
		bpl @copy_lost


		lda GamePauseStatus
		ora #2
		sta GamePauseStatus
		lda WRAM_PracticeFlags
		and #PF_SaveState^$FF
		sta WRAM_PracticeFlags
		lda #0
		sta DisableScreenFlag
.ifndef ORG
		lda WRAM_IRQUpdateFlag
		sta IRQUpdateFlag
.endif
		rts


.macro RedrawUserVar name, off
		lda name
		sta $00
		lda name+1
		sta $01
		lda ($00), y
		jsr DivByTen
		sta VRAM_Buffer1+off+2
		txa
		jsr DivByTen
		sta VRAM_Buffer1+off+1
		stx VRAM_Buffer1+off+0
.endmacro

.macro HideRedrawUserVar off
		lda #$24
		sta VRAM_Buffer1+off+2
		sta VRAM_Buffer1+off+1
		sta VRAM_Buffer1+off+0
.endmacro

noredraw_dec:
		dec UserFramesLeft
noredraw:
		jmp UpdateStatusInput
hide:
		HideRedrawUserVar 3
		HideRedrawUserVar 7
		jmp terminate
		
RedrawUserVars:
		lda UserFramesLeft
		bne noredraw_dec
		ldy VRAM_Buffer1_Offset
		bne noredraw
		lda #$20
		sta VRAM_Buffer1
		lda #$71
		sta VRAM_Buffer1+1
		lda #$07
		sta VRAM_Buffer1+2
		lda #$24
		sta VRAM_Buffer1+6
		lda WRAM_PracticeFlags
        and #PF_DisablePracticeInfo
        bne hide
		
		RedrawUserVar WRAM_UserVarA, 3
		RedrawUserVar WRAM_UserVarB, 7

terminate:
		sty VRAM_Buffer1+$0A
		lda WRAM_DelayUserFrames
		sta UserFramesLeft
		
UpdateStatusInput:
    lda WRAM_PracticeFlags
	and #PF_EnableInputDisplay
	beq @exit
	jsr DrawInputButtons
@exit:
	jmp ReturnBank
DrawInputButtons:
	ldy JoypadBitMask
	sty $03
	lda #$20
	sta WRAM_StoredInputs
	lda #$51
	sta WRAM_StoredInputs+1
	lda #$07
	sta WRAM_StoredInputs+2
	lda #$24
	sta WRAM_StoredInputs+7
	;
	; Up
	;
	lda $03
	and #Up_Dir
	beq NoUpStatus
	lda #$1e
	jmp WriteUp
NoUpStatus:
	lda #$28
WriteUp:
	sta WRAM_StoredInputs+3
	;
	; Left
	;
	lda $03
	and #Left_Dir
	beq NoLeftStatus
	lda #$15
	jmp WriteLeft
NoLeftStatus:
	lda #$28
WriteLeft:
	sta WRAM_StoredInputs+4
	;
	; Down
	;
	lda $03
	and #Down_Dir
	beq NoDownStatus
	lda #$0d
	jmp WriteDown
NoDownStatus:
	lda #$28
WriteDown:
	sta WRAM_StoredInputs+5
	;
	; Right
	;
	lda $03
	and #Right_Dir
	beq NoRightStatus
	lda #$1b
	jmp WriteRight
NoRightStatus:
	lda #$28
WriteRight:
	sta WRAM_StoredInputs+6
	;
	; B
	;
	lda $03
	and #B_Button
	beq NoBStatus
	lda #$0b
	jmp WriteB
NoBStatus:
	lda #$28
WriteB:
	sta WRAM_StoredInputs+8
	;
	; A
	;
	lda $03
	and #A_Button
	beq NoAStatus
	lda #$0a
	jmp WriteA
NoAStatus:
	lda #$28
WriteA:
	sta WRAM_StoredInputs+9
	lda #$00
	sta WRAM_StoredInputs+10 ; maybe redundant due to WRAM init?
	rts

RequestRestartLevel:
		lda #$80 ; REMOVE 0x80?
		sta GamePauseStatus
		ldx #0
		stx PauseModeFlag
		inx
		stx GamePauseTimer
		inx
		stx PauseSoundQueue
		lda WRAM_PracticeFlags
		ora #PF_RestartLevel
		sta WRAM_PracticeFlags
		ldx #$00
		stx NoteLengthTblAdder ; Less hysterical music
		stx OperMode_Task
		stx ScreenRoutineTask
		stx DisableIntermediate
		stx AltEntranceControl
		stx HalfwayPage
		inx
		stx OperMode
		lda WRAM_LevelAreaPointer
		sta AreaPointer
		lda WRAM_LevelAreaType
		sta AreaType ; Probably not needed but whatever
		lda WRAM_CoinTally
		sta CoinTally
		lda WRAM_CoinDisplay
		sta CoinDisplay
		lda WRAM_CoinDisplay+1
		sta CoinDisplay+1
		inc FetchNewGameTimerFlag
		rts

RestartLevel:
		lda #$0
		sta PlayerChangeSizeFlag
		lda WRAM_LevelIntervalTimerControl
		sta IntervalTimerControl
		lda WRAM_LevelFrameCounter
		sta FrameCounter
		lda WRAM_LevelPlayerStatus
		sta PlayerStatus
		lda WRAM_LevelPlayerSize
		sta PlayerSize
		lda WRAM_LevelEntrancePage
		sta EntrancePage
		lda #$00
		sta JoypadOverride
		ldx #6
@copy_random:
		lda WRAM_LevelRandomData, x
		sta PseudoRandomBitReg,x
		dex
		bpl @copy_random
		ldx #3
@copy_rule:
		lda WRAM_LevelFrameRuleData, x
		sta FrameRuleData, x
		dex
		bpl @copy_rule

		lda WRAM_PracticeFlags
		and #PF_RestartLevel^$FF
		sta WRAM_PracticeFlags
		jmp ReturnBank

ProcessLevelLoad:
		lda LevelNumber
		sta WRAM_LoadedLevel
		lda WorldNumber
		sta WRAM_LoadedWorld
		lda WRAM_AdvRNG
		beq @advance_framerule
		jsr SetRNGFromNumber
		jmp @continue
@advance_framerule:
		jsr AdvanceToRule
@continue:
		lda OperMode
		beq @done
		lda WRAM_PracticeFlags
		and #PF_RestartLevel
		bne RestartLevel
		lda WRAM_PracticeFlags
		and #PF_LevelEntrySaved
		bne @done
		lda IntervalTimerControl
		sta WRAM_LevelIntervalTimerControl
		lda EntrancePage
		sta WRAM_LevelEntrancePage
		lda FrameCounter
		sta WRAM_LevelFrameCounter
		lda PlayerStatus
		sta WRAM_LevelPlayerStatus
		lda PlayerSize
		sta WRAM_LevelPlayerSize
		lda CoinTally
		sta WRAM_CoinTally
		lda CoinDisplay
		sta WRAM_CoinDisplay
		lda CoinDisplay+1
		sta WRAM_CoinDisplay+1
		lda WRAM_PracticeFlags
		ora #PF_LevelEntrySaved
		sta WRAM_PracticeFlags
		ldx #6
@save_random:
		lda PseudoRandomBitReg,x
		sta WRAM_LevelRandomData, x
		dex
		bpl @save_random
		ldx #$3
@save_rule:
		lda FrameRuleData, x
		sta WRAM_LevelFrameRuleData, x
		dex
		bpl @save_rule
		
.ifdef LOST
		lda BANK_SELECTED
		cmp #BANK_SMBLL
		beq @warpless_2j
.endif
@done:
		jmp ReturnBank
.ifdef LOST
@warpless_2j:
		lda CompletedWorlds
		cmp #$ff
		bne @done
		lda WorldNumber								 ;
		cmp #World7									 ; Are we in World 7 or 8?
		beq @World7Setup							 ; If yes, go and check the area number
		cmp #World8									 ; 
		beq @World8Setup							 ; 
		cmp #World3									 ; Are we in World C? (ignore the label please)
		bne @done								 	 ; No? Leave.
@WorldCSetup:									 	 ;
		lda HardWorldFlag							 ; Is this C-1 or 3-1?
		beq @done									 ; get the hell out of here, 3-1 doesn't have a wrong warp.
		lda LevelNumber								 ; Are we in C-1?
		bne @done								 	 ; No? THEN PLEASE LEAVE I DID NOT INVITE YOU.
		lda #$0E									 ;
		sta EntrancePage						     ;
		sta WRAM_LevelEntrancePage					 ;
		bne @done								 	 ;
@World8Setup:										 ;	
		lda LevelNumber								 ; Are we in 8-1?
		bne @done								 	 ; No? Go away.
		beq @W7W8Setup								 ; Otherwise, set up the magic warps
@World7Setup:									 	 ;
		lda LevelNumber								 ; Are we in 7-3 or 7-4?
		cmp #$02									 ; Yes, set up the funny.
		bcc @done								 	 ; No, get out.
@W7W8Setup:										 	 ;
		lda #$06									 ;	
		sta EntrancePage							 ;
		sta WRAM_LevelEntrancePage					 ;
		bne @done								 	 ;
.endif		


PracticeInit:
		lda #0
		sta WRAM_Timer
		sta WRAM_Timer+1
		sta WRAM_MenuIndex
		;
		; Dont reset the SaveStateBank right?
		;
		; sta WRAM_SaveStateBank
		lda WRAM_PracticeFlags
		and #((PF_SaveState|PF_LoadState|PF_RestartLevel|PF_LevelEntrySaved)^$ff)
		sta WRAM_PracticeFlags
nosock:	jmp ReturnBank

RedrawSockTimer:
		lda WRAM_PracticeFlags
		and #PF_DisablePracticeInfo
		bne nosock
		ldx VRAM_Buffer1_Offset
		lda #$20
		sta VRAM_Buffer1,x
		lda #$69
      	sta VRAM_Buffer1+1,x
      	lda #$01
      	sta VRAM_Buffer1+2,x
      	lda WRAM_PracticeFlags
      	and #PF_LevelEntrySaved
      	bne @already_saved
      	lda IntervalTimerControl
      	sta WRAM_EntrySockTimer
      	jmp @write_it
@already_saved:
		lda WRAM_PracticeFlags
      	and #PF_RestartLevel
      	beq @use_as_is
      	lda WRAM_EntrySockTimer
      	jmp @write_it
@use_as_is:
		lda IntervalTimerControl
@write_it:
		sta WRAM_AreaSockTimer
		sta VRAM_Buffer1+3,x
		lda #0
		sta VRAM_Buffer1+4,x
		inx
		inx
		inx
		inx
		stx VRAM_Buffer1_Offset
		jmp RedrawFrameNumbers

MagicByte0 = $70 ; P
MagicByte1 = $56 ; V
MagicByte2 = $35 ; 5
MagicByte3 = $35 ; 5

ValidWRAMMagic:
		lda WRAM_Magic+0
		cmp #MagicByte0
		bne @exit
		lda WRAM_Magic+1
		cmp #MagicByte1
		bne @exit
		lda WRAM_Magic+2
		cmp #MagicByte2
		bne @exit
		lda WRAM_Magic+3
		cmp #MagicByte3
@exit:
		rts

InitializeWRAM:
		jsr ValidWRAMMagic
		beq RamGoodExit
		jmp FactoryResetWRAM	
RamGoodExit:
		jmp ReturnBank

SetDefaultWRAM:
		jsr ValidWRAMMagic
		beq RamGoodExit

		lda #MagicByte0
		sta WRAM_Magic+0
		lda #MagicByte1
		sta WRAM_Magic+1
		lda #MagicByte2
		sta WRAM_Magic+2
		lda #MagicByte3
		sta WRAM_Magic+3

		lda #<Player_Rel_XPos
		sta WRAM_UserVarA
		lda #>Player_Rel_XPos
		sta WRAM_UserVarA+1
		
		lda #<Player_X_MoveForce
		sta WRAM_UserVarB
		lda #>Player_X_MoveForce
		sta WRAM_UserVarB+1

		lda #30
		sta WRAM_DelaySaveFrames
		lda #8
		sta WRAM_DelayUserFrames

		lda #RESTART_LEVEL_BUTTONS
		sta WRAM_RestartButtons
		lda #RESTART_GAME_BUTTONS
		sta WRAM_TitleButtons
		lda #SAVE_STATE_BUTTONS
		sta WRAM_SaveButtons
		lda #LOAD_STATE_BUTTONS
		sta WRAM_LoadButtons
		;
		; TODO : Sane init values
		;
		jmp ReturnBank

FactoryResetWRAM:
		ldx #$60
@copy_page:
		stx $01
		lda #$00
		sta $00
		ldy #$00
@copy_byte:
		sta ($00), Y
		iny
		bne @copy_byte
		inx
		bpl @copy_page
		jmp SetDefaultWRAM
@exit:
		jmp ReturnBank

AdvanceRandom:
		lda PseudoRandomBitReg    ;get first memory location of LSFR bytes
		and #%00000010            ;mask out all but d1
		sta $00                   ;save here
		lda PseudoRandomBitReg+1  ;get second memory location
		and #%00000010            ;mask out all but d1
		eor $00                   ;perform exclusive-OR on d1 from first and second bytes
		clc                       ;if neither or both are set, carry will be clear
		beq RotPRandomBit
		sec                       ;if one or the other is set, carry will be set
RotPRandomBit:
		ror PseudoRandomBitReg+0  ;rotate carry into d7, and rotate last bit into carry
		ror PseudoRandomBitReg+1  ;rotate carry into d7, and rotate last bit into carry
		ror PseudoRandomBitReg+2  ;rotate carry into d7, and rotate last bit into carry
		ror PseudoRandomBitReg+3  ;rotate carry into d7, and rotate last bit into carry
		ror PseudoRandomBitReg+4  ;rotate carry into d7, and rotate last bit into carry
		ror PseudoRandomBitReg+5  ;rotate carry into d7, and rotate last bit into carry
		ror PseudoRandomBitReg+6  ;rotate carry into d7, and rotate last bit into carry
		rts

MulByTen:
		asl
		sta $0
		asl
		asl
		clc
		adc $0
		rts
	
DivByTen:
		ldx #$00
DivMore:
		cmp #$0a
		bcc DivByTenDone
		sbc #$0a
		inx
		sec
		bcs DivMore
DivByTenDone:
		rts
