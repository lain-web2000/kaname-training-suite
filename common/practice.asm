	.include "wram.inc"
;
; Practice stuff
;
; lookup tables of RNG values for different framerules, each offset is another 2100 frames
.ifndef PAL
	resume_0: .byte $28, $34, $0c, $55, $f8, $fa, $97, $c0, $15, $05, $ed, $7e, $95, $ae, $09, $b4, $e0, $9a, $50, $f6, $ac, $99, $91, $8d, $9c, $4f, $fe, $9a, $49, $3a, $47, $4a, $ee, $96, $64, $82, $b9, $65, $d3, $e7, $38, $03, $97, $27, $e0, $32, $35, $fa, $43, $38, $b1, $75, $a4, $c1, $e0, $58, $49, $28, $7b, $9c, $6e, $cf, $df, $61, $ae, $95, $4a, $b7, $e7, $25, $12, $d0, $d3, $8a, $d2, $19, $95, $9a, $92, $ef, $72, $4e, $94, $72, $de, $0c, $d0, $ca, $46, $39, $ca, $ea, $81, $6a, $22, $35, $b1, $0e, $af
	resume_1: .byte $02, $86, $c4, $17, $a1, $53, $48, $01, $65, $c5, $06, $42, $a4, $db, $67, $d7, $87, $5b, $36, $d7, $3d, $02, $ec, $b8, $c5, $99, $f7, $97, $bb, $1e, $65, $48, $8f, $a7, $44, $fb, $6e, $fb, $44, $3a, $3c, $41, $8e, $33, $95, $b0, $53, $97, $09, $fc, $e6, $69, $5d, $ca, $f7, $90, $2d, $d6, $5f, $51, $22, $c0, $78, $ef, $f7, $7c, $28, $dc, $d4, $f3, $54, $4d, $1a, $99, $d5, $ed, $9a, $2b, $fd, $cc, $3c, $60, $bf, $76, $bd, $24, $81, $97, $50, $8d, $a7, $f9, $34, $7c, $ae, $a5, $0c, $40, $52
	resume_2: .byte $52, $ef, $dd, $bd, $50, $a7, $66, $81, $4f, $ce, $dc, $be, $8f, $86, $75, $be, $46, $6f, $96, $3a, $65, $30, $cf, $a3, $fc, $06, $0a, $a2, $28, $6a, $eb, $dc, $52, $8a, $8c, $fe, $1c, $30, $e2, $f4, $4c, $47, $a1, $7d, $54, $d5, $39, $62, $8f, $8d, $85, $83, $15, $49, $36, $21, $bf, $87, $a9, $69, $fe, $5f, $c6, $2c, $aa, $56, $bc, $b3, $1b, $b8, $70, $ed, $bc, $8c, $70, $de, $b1, $1f, $d8, $13, $d8, $fc, $96, $92, $00, $3c, $20, $02, $dc, $fe, $32, $2c, $36, $a8, $eb, $ce, $6e, $5c, $0c
	resume_3: .byte $56, $e2, $54, $92, $12, $00, $f6, $82, $85, $45, $d1, $3b, $c6, $31, $bb, $11, $48, $d9, $fb, $94, $1f, $34, $16, $d2, $77, $34, $e4, $8d, $5e, $56, $20, $4d, $4c, $c5, $05, $09, $c0, $c6, $6b, $81, $34, $c5, $bc, $1b, $7e, $b4, $9f, $4c, $9c, $74, $48, $50, $af, $dd, $d8, $01, $e4, $2a, $16, $cb, $bb, $df, $37, $f2, $45, $ae, $ed, $0a, $b3, $5f, $d8, $76, $89, $bf, $da, $05, $84, $49, $23, $8b, $a1, $3d, $e9, $7f, $7a, $74, $22, $2c, $7d, $e5, $7c, $de, $5e, $51, $b6, $85, $76, $dc, $a8
	resume_4: .byte $f2, $3d, $ee, $e9, $b2, $4e, $3b, $81, $1a, $d9, $68, $47, $d9, $3d, $50, $6d, $c4, $06, $d6, $e1, $d5, $54, $88, $95, $8f, $38, $f1, $c8, $0e, $82, $f6, $f5, $e8, $d0, $1d, $f5, $f9, $a7, $af, $68, $ac, $4a, $ff, $e1, $d6, $1f, $ec, $88, $83, $6e, $42, $56, $84, $4e, $b5, $43, $9b, $24, $44, $18, $46, $60, $bb, $ab, $11, $03, $94, $6c, $84, $2f, $39, $ac, $f0, $a6, $3b, $b9, $e7, $77, $93, $ac, $10, $c5, $c4, $5b, $7a, $0c, $62, $28, $c5, $18, $18, $87, $32, $01, $61, $18, $aa, $65, $b1
	resume_5: .byte $5f, $f9, $47, $cc, $97, $4e, $d7, $84, $10, $52, $ca, $31, $54, $5f, $26, $4f, $55, $b4, $21, $c8, $ea, $3c, $a5, $30, $60, $50, $38, $d3, $b2, $2f, $b7, $6e, $71, $5b, $17, $e6, $78, $2a, $78, $6a, $c5, $c0, $86, $d6, $2b, $77, $d3, $11, $ba, $86, $d2, $f6, $db, $f4, $04, $41, $52, $70, $68, $8e, $30, $de, $d4, $4e, $9b, $5f, $4f, $78, $e3, $91, $89, $41, $e3, $d9, $8f, $b2, $ee, $e5, $d4, $bb, $52, $be, $17, $a5, $8e, $e4, $26, $70, $3e, $d2, $e0, $3a, $8e, $a3, $0d, $12, $47, $dd, $e0
	resume_6: .byte $bb, $82, $9b, $1f, $f2, $d2, $a0, $87, $24, $e0, $1b, $bf, $e6, $25, $86, $95, $dd, $b9, $8d, $0b, $41, $94, $b4, $1a, $7e, $20, $da, $42, $af, $2b, $5a, $84, $a1, $fb, $2d, $0d, $8a, $64, $26, $ba, $9c, $55, $79, $15, $87, $49, $0a, $01, $bd, $5b, $57, $5b, $d2, $69, $6e, $c7, $64, $38, $e0, $bf, $bc, $1f, $a3, $18, $b8, $59, $67, $a0, $ea, $ce, $fa, $19, $02, $94, $f8, $c1, $21, $0a, $f3, $e2, $72, $35, $9f, $12, $7b, $fd, $e2, $20, $b4, $e3, $d1, $34, $eb, $a0, $cf, $22, $13, $16, $83
.else
	resume_0: .byte $a5, $f8, $23, $c0, $e2, $b4, $8c, $f2, $bb, $be, $d5, $cb, $30, $b7, $12, $56, $a2, $2e, $87, $2b, $e7, $6a, $56, $ca, $eb, $c5, $3f, $84, $93, $c4, $f1, $a3, $0c, $3f, $c0, $28, $ac, $7a, $a3, $d8, $2d, $ce, $77, $d7, $c3, $4e, $64, $47, $f3, $92, $59, $74, $23, $ee, $d0, $5b, $a8, $4f, $33, $da, $85, $21, $d5, $7c, $b8, $b1, $7e, $56, $a9, $71, $cd, $0c, $ff, $21, $76, $07, $ee, $29, $91, $6e, $52, $c4, $1c, $9a, $9a, $d6, $d8, $dd, $17, $3e, $56, $f2, $66, $bf, $54, $08, $8d, $e0, $3b
	resume_1: .byte $00, $bf, $3d, $6b, $2d, $29, $b7, $e9, $d0, $a1, $88, $ae, $48, $1c, $b4, $a8, $39, $fc, $60, $9f, $5a, $06, $18, $83, $74, $fe, $ef, $51, $98, $15, $18, $1a, $ce, $17, $a7, $ec, $1b, $2e, $02, $d7, $33, $97, $2d, $c6, $c2, $ba, $82, $67, $d8, $f1, $69, $14, $c9, $91, $4b, $3f, $61, $1f, $3f, $59, $92, $45, $32, $1e, $5b, $16, $d4, $ba, $2a, $43, $c4, $4e, $9e, $67, $12, $e9, $9f, $45, $aa, $02, $50, $83, $86, $6b, $63, $6b, $77, $98, $27, $6c, $c8, $5f, $6c, $a0, $9a, $2e, $b4, $f9, $d7
	resume_2: .byte $4a, $4e, $7b, $eb, $e9, $41, $ae, $0c, $a7, $dc, $23, $39, $28, $72, $91, $05, $7d, $a1, $6e, $c8, $94, $d2, $b4, $16, $a2, $75, $90, $59, $bf, $9d, $fa, $5c, $d7, $69, $26, $bd, $43, $da, $44, $66, $69, $0a, $c3, $69, $45, $27, $4b, $e9, $3f, $d4, $db, $fc, $8e, $4c, $eb, $89, $31, $81, $59, $ed, $99, $07, $98, $e6, $2b, $74, $29, $17, $78, $a1, $5f, $56, $61, $25, $fe, $e6, $42, $17, $89, $de, $f4, $0a, $bf, $5f, $57, $c7, $c7, $23, $09, $10, $65, $bb, $a0, $df, $33, $3e, $af, $38, $a0
	resume_3: .byte $4a, $30, $01, $3c, $b2, $13, $c1, $de, $06, $9f, $33, $65, $b8, $4a, $f8, $55, $0f, $58, $ae, $f7, $21, $df, $85, $10, $4b, $89, $4f, $fb, $8e, $b6, $cb, $68, $4a, $47, $68, $64, $75, $87, $40, $c8, $0f, $24, $98, $e5, $c1, $53, $4f, $26, $8f, $37, $08, $d5, $1d, $6e, $7c, $f6, $f3, $be, $27, $5e, $bc, $8d, $fd, $db, $9d, $58, $81, $63, $2c, $26, $d7, $ca, $5d, $eb, $db, $35, $7c, $9d, $dc, $db, $55, $0c, $b2, $89, $91, $10, $28, $13, $47, $c8, $f5, $04, $79, $9e, $07, $62, $c6, $ca, $0f
	resume_4: .byte $de, $ac, $f7, $ea, $61, $91, $9c, $c7, $48, $26, $75, $17, $e9, $ae, $db, $5f, $f5, $1a, $73, $66, $09, $7a, $ec, $3c, $0f, $62, $6f, $48, $f1, $8d, $3e, $d0, $e4, $95, $24, $1e, $f3, $32, $c8, $05, $dd, $30, $1f, $36, $4a, $1d, $d9, $f4, $f0, $9f, $be, $2c, $01, $f6, $aa, $e5, $90, $bd, $95, $84, $8f, $82, $cc, $16, $ca, $b0, $d2, $4d, $dc, $64, $68, $67, $9f, $a0, $26, $f9, $f8, $b2, $cf, $66, $bd, $18, $cd, $36, $3e, $9e, $a6, $55, $55, $e9, $3e, $72, $39, $21, $61, $1e, $99, $bb, $4f
	resume_5: .byte $4b, $cd, $f4, $93, $05, $b6, $1f, $7a, $44, $18, $13, $dd, $98, $3b, $2a, $f5, $ea, $aa, $2f, $88, $4b, $c4, $e7, $1c, $99, $70, $f1, $be, $ec, $e0, $a8, $01, $71, $1a, $f4, $d6, $18, $3c, $49, $95, $c2, $78, $2f, $fc, $c8, $bb, $46, $b9, $ef, $f0, $af, $86, $3b, $2b, $53, $08, $77, $c0, $da, $39, $f6, $99, $37, $a0, $f1, $01, $d1, $8b, $85, $28, $c6, $f3, $24, $77, $90, $92, $01, $89, $76, $d0, $16, $00, $a8, $24, $1c, $bf, $f7, $73, $db, $78, $d4, $7a, $cb, $1d, $6f, $da, $14, $2e, $51
	resume_6: .byte $f7, $94, $1b, $46, $c7, $95, $27, $f4, $d4, $54, $f9, $f2, $4b, $67, $9c, $4a, $01, $9f, $c9, $45, $59, $31, $3e, $64, $86, $b4, $2e, $2f, $0f, $fb, $d5, $a1, $b9, $30, $bd, $eb, $fe, $58, $d9, $9e, $79, $18, $11, $91, $5d, $80, $f4, $50, $0e, $cf, $d2, $df, $39, $c7, $07, $c2, $57, $bb, $f1, $31, $e9, $9c, $af, $8d, $64, $61, $74, $10, $3c, $e0, $17, $3c, $1a, $37, $dd, $61, $f1, $ec, $e8, $1d, $6c, $30, $33, $48, $60, $82, $ba, $d9, $70, $aa, $a9, $9e, $b8, $5f, $ad, $e7, $26, $58, $cf
.endif

BIG_FRAMES = 59
BIG_FIRE_FRAMES = 122
SMALL_FIRE_FRAMES = 435
BOTH_ENDINGS = 122
ALL_STAGES = 431

PowerUpOffsets:
	.word 0, BIG_FRAMES, BIG_FIRE_FRAMES, SMALL_FIRE_FRAMES
CategoryOffsets:
	.word 0, BOTH_ENDINGS, ALL_STAGES

;Small, Big, Fire, Small-Fire
PlayerStatusState:
	.byte $00, $01, $02, $02
	
PlayerSizeState:
	.byte $01, $00, $00, $01
	
; ================================================================
;  Setup framerule RNG
; ----------------------------------------------------------------
AdvanceToRule:
prac_quick_resume:
		ldx PowerUps                         ; apply queued power-ups first
		beq @CheckQueuedRule
		lda PlayerStatusState,x
		sta PlayerStatus
		lda PlayerSizeState,x
		sta PlayerSize
@CheckQueuedRule:
		lda FrameruleNumber+2                ; get hundreds and thousands digits of bcd framerule value
		ora FrameruleNumber+3
		ora FrameruleNumber+4
		ora FrameruleNumber+5
		bne RNGQuickResume
		sta PowerUps                         ; clear power-ups queue 
		rts
RNGQuickResume:
		ldx #$03
@CopyRule:
		lda FrameruleNumber+2,x
		sta DisplayDigits+RULE_COUNT_OFFSET-3, x
		dex
		bpl @CopyRule
		lda FrameruleNumber+2        		 ; get hundreds and thousands digits of bcd framerule value
		jsr MulByTen                     	 ;
		adc FrameruleNumber+3        		 ;
		tax                                  ; store in X
		lda resume_0,x                       ; get rng value from lookup table for this offset
		sta PseudoRandomBitReg+0             ;
		lda resume_1,x                       ;
		sta PseudoRandomBitReg+1             ;
		lda resume_2,x                       ;
		sta PseudoRandomBitReg+2             ;
		lda resume_3,x                       ;
		sta PseudoRandomBitReg+3             ;
		lda resume_4,x                       ;
		sta PseudoRandomBitReg+4             ;
		lda resume_5,x                       ;
		sta PseudoRandomBitReg+5             ;
		lda resume_6,x                       ;
		sta PseudoRandomBitReg+6             ;
@FrameruleAdjust:
		lda FrameruleNumber + 4      		 ; get ones and tens digits of bcd framerule value
		jsr MulByTen                     	 ;
		adc FrameruleNumber + 5      		 ;
		tay                                  ; store in Y
		beq @FrameAdjust                     ; if not set, we can skip ahead
		jsr FRStepRNGByY                     ; otherwise we advance the RNG based on the framerule value * 21
@FrameAdjust:
		lda #$00
		sta FrameruleNumber+2
		sta FrameruleNumber+3
		sta FrameruleNumber+4
		sta FrameruleNumber+5
		lda PowerUps
		beq @FrameAdjust2
		asl
		tax
		lda PowerUpOffsets,x
		tay
		lda PowerUpOffsets+1,x
		tax
		jsr StepRNGByXY
@FrameAdjust2:
		lda #$00
		sta PowerUps                         ; clear power-ups queue 
		lda CategorySelect
		asl
		tax
		lda CategoryOffsets,x
		tay
		lda CategoryOffsets+1,x
		tax
		jsr StepRNGByXY
NoCategoryFrames:
    	lda #$00
		sta CategorySelect
		rts 								; On the correct framerule, continue with the game.
	
; ================================================================

; ================================================================
;  Advance RNG by Y framerules
; ----------------------------------------------------------------
FRStepRNGByY:
		jsr FRStepRNG
		dey
		bne FRStepRNGByY
		rts
; ================================================================

; ================================================================
;  Advance RNG by XY frames
; ----------------------------------------------------------------
StepRNGByXY:
	cpx #$00
	bne @StepRNG
	cpy #$00
	beq @exit
@StepRNG:
    jsr SingleStepRNG
    dey
	cpy #$ff
    bne StepRNGByXY
	dex
	bpl StepRNGByXY
@exit:
    rts
; ================================================================

; ================================================================
;  Advance RNG by 21 frames
; ----------------------------------------------------------------
FRStepRNG:
    jsr SingleStepRNG
    jsr SingleStepRNG
    jsr SingleStepRNG
    jsr SingleStepRNG
    jsr SingleStepRNG
    jsr SingleStepRNG
    jsr SingleStepRNG
    jsr SingleStepRNG
    jsr SingleStepRNG
    jsr SingleStepRNG
    jsr SingleStepRNG
    jsr SingleStepRNG
    jsr SingleStepRNG
    jsr SingleStepRNG
    jsr SingleStepRNG
    jsr SingleStepRNG
    jsr SingleStepRNG
.ifndef PAL
    jsr SingleStepRNG
    jsr SingleStepRNG
    jsr SingleStepRNG
.endif
    jmp SingleStepRNG
; ================================================================

; ================================================================
;  Advance RNG by a single game frame
; ----------------------------------------------------------------
SingleStepRNG:
    pha
    lda PseudoRandomBitReg         ; get first memory location of LSFR bytes
    and #%00000010                 ; mask out all but d1
    sta $00                        ; save here
    lda PseudoRandomBitReg+1       ; get second memory location
    and #%00000010                 ; mask out all but d1
    eor $00                        ; perform exclusive-OR on d1 from first and second bytes
    clc                            ; if neither or both are set, carry will be clear
    beq RotPRandomBit
    sec                            ; if one or the other is set, carry will be set
RotPRandomBit:
    ror PseudoRandomBitReg+0       ; rotate carry into d7, and rotate last bit into carry
    ror PseudoRandomBitReg+1       ; rotate carry into d7, and rotate last bit into carry
    ror PseudoRandomBitReg+2       ; rotate carry into d7, and rotate last bit into carry
    ror PseudoRandomBitReg+3       ; rotate carry into d7, and rotate last bit into carry
    ror PseudoRandomBitReg+4       ; rotate carry into d7, and rotate last bit into carry
    ror PseudoRandomBitReg+5       ; rotate carry into d7, and rotate last bit into carry
    ror PseudoRandomBitReg+6       ; rotate carry into d7, and rotate last bit into carry
    pla
    rts
; ================================================================

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
	ldx PowerUps                ;apply queued power-ups first
	beq @CheckQueuedRNG
	lda PlayerStatusState,x
	sta PlayerStatus
	lda PlayerSizeState,x
	sta PlayerSize
	lda #$00                    ;clear power-ups queue
	sta PowerUps
@CheckQueuedRNG:
	lda FrameruleNumber+2       ;RNG number queued?
	ora FrameruleNumber+3
	ora FrameruleNumber+4
	ora FrameruleNumber+5
	bne @do_normal_rng          ;yes, load appropiate RNG state
	rts                         ;otherwise, just leave
@do_normal_rng:
	ldx #$03                    ;copy queued RNG number to status bar display
@copy_rng_number:
	lda FrameruleNumber+2,x
	sta DisplayDigits+RULE_COUNT_OFFSET-3, x
	dex
	bpl @copy_rng_number
	ldx #$03                    ;subtract one from RNG number for computation
@borrow_the_one:
	dec FrameruleNumber+2,x     ;decrement digit
	bpl @done                   ;if within range, branch ahead
	lda #$0f                    ;otherwise, we need to borrow the one
	sta FrameruleNumber+2,x
	dex                         ;decrement index and next digit
	bpl @borrow_the_one
@done:
	lda FrameruleNumber+2       ;use d14-d9 of RNG number as offset into lookup table
	asl
	asl
	asl
	sta $00
	lda FrameruleNumber+3
	lsr
	clc
	adc $00
	tax
	lda RNGByte0LookupTable,x   ;save contents of lookup table entry as RNG
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
	lda FrameruleNumber+3       ;step RNG by d8-d0
	and #$01
	tax
	lda FrameruleNumber+4
	asl
	asl
	asl
	asl
	adc FrameruleNumber+5
	tay
	jsr StepRNGByXY
	sty FrameruleNumber+2       ;clear RNG number queue
	sty FrameruleNumber+3
	sty FrameruleNumber+4
	sty FrameruleNumber+5
	rts

WritePracticeTop:
		clc                                          ;
		ldy VRAM_Buffer1_Offset                      ; get current vram offset
		lda #(@TopStatusTextEnd-@TopStatusText+1)    ; get text length
		adc VRAM_Buffer1_Offset                      ; add to vram offset
		sta VRAM_Buffer1_Offset                      ; and store new offset
		ldx #0                                       ;
@CopyData:                                       	 ;
		lda @TopStatusText,x                         ; copy bytes of the status bar text to vram
		sta VRAM_Buffer1,y                           ;
		iny                                          ; advance vram offset
		inx                                          ; advance text offset
		cpx #(@TopStatusTextEnd-@TopStatusText)      ; check if we're at the end
		bne @CopyData                                ; if not, loop
		lda #0                                       ; then set null terminator at the end
		sta VRAM_Buffer1,y                           ;
		jmp ReturnBank 
		
@TopStatusText:
		.byte $20, $42, $0b, $1b, $29, $24, $24, $24, $24, $24, $29, $24, $0f, $29
		.byte $20, $51, $0c, $24, $0a, $24, $24, $24, $0b, $24, $24, $1d, $12, $16, $0e
		.byte $20, $62, $02, $1c, $29			
		.byte $20, $6b, $02, $2e, $29                ; score trailing digit and coin display
		.byte $23, $c0, $7f, $aa                     ; attribute table data, clears name table 0 to palette 2
		.byte $23, $c2, $01, $ea                     ; set palette for the flashing coin ; attribute table data, used for coin icon in status bar
@TopStatusTextEnd:
		.byte $00

RedrawFramesRemainingInner:
		lda WRAM_PracticeFlags
		and #PF_DisablePracticeInfo
		bne nodraw
		clc                                          ;
		lda VRAM_Buffer1_Offset                      ; get current vram offset
		tay                                          ;
		adc #7                                       ; and advance it by 4
		sta VRAM_Buffer1_Offset                      ; store the new offset
		lda #$20                                     ; write the ppu address to update
		sta VRAM_Buffer1+0, y                        ;
		lda #$59                                     ;
		sta VRAM_Buffer1+1, y                        ;
		lda #$04                                     ; we are writing 4 bytes
		sta VRAM_Buffer1+2, y                        ;
		lda #'R'                                     ; and that byte is an R
		sta VRAM_Buffer1+3, y                        ;
		lda #$29                                     ; and that byte is an R
		sta VRAM_Buffer1+4, y                        ;
		lda IntervalTimerControl
		jsr DivByTen
		sta VRAM_Buffer1+6, y
		txa
		sta VRAM_Buffer1+5, y
		lda #$00                                     ; set the null terminator
		sta VRAM_Buffer1+7, y                        ;
nodraw:	rts                                          ; and finish

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

RedrawAll:
		txa
		pha
		jsr RedrawFramesRemainingInner
		jsr RedrawFrameNumbersInner
		pla
		tax
		jmp ReturnBank
		
RedrawFrameNumbersInner:
		lda OperMode
		beq @draw ; slightly dumb (<- this was spelled wrong in like various builds)
		lda WRAM_PracticeFlags
		and #PF_DisablePracticeInfo
		bne nodraw
@draw:	lda VRAM_Buffer1_Offset                      ; get current vram offset
		tay                                          ;
		adc #(3+3)                                   ; add 3 for vram offset, 3 for values to draw
		sta VRAM_Buffer1_Offset                      ; save new vram offset
		lda #$20                                     ; store the ppu location of the frame number
		sta VRAM_Buffer1,y                           ;
		lda #$4d                                     ;
		sta VRAM_Buffer1+1,y                         ;
		lda #$03                                     ; store the number of digits to draw
		sta VRAM_Buffer1+2,y                         ;
		iny                                          ; advance y to the end of the buffer to write
		iny                                          ;
		iny                                          ;
		lda #0                                       ; place our null terminator
		sta VRAM_Buffer1+3,y                         ;
	@PrintFramecounterDataAtY:                       ;
		lda FrameCounter                             ; get the current frame number
		jsr DivByTen                               	 ; divide by 10
		sta VRAM_Buffer1+2,y                         ; store remainder in vram buffer
		txa                                          ; get the result of the divide
		jsr DivByTen                               	 ; divide by 10
		sta VRAM_Buffer1+1,y                         ; store remainder in vram buffer
		txa                                          ; get the result of the divide
		sta VRAM_Buffer1+0,y                         ; and store it in vram
		lda OperMode
		beq RedrawFrameruleInner                     ; force RULE if on title screen
		rts

RedrawFramerule:
		txa
		pha
		ldx #$03
@Copy_Rule:
		lda CurrentRule,x
		sta WRAM_AreaFramerule,x
		dex
		bpl @Copy_Rule
		jsr RedrawFrameruleInner
@exit:	pla
		tax
		jmp ReturnBank
		
RedrawFrameruleInner:
		lda WRAM_PracticeFlags
		and #PF_DisablePracticeInfo
		bne @dont_draw_rule
		lda vramBufferOffset_Prac                  ; get the current buffer offset
		tay                                        ;
		adc #(3+4)                                 ; shift over based on length of the framerule text
		sta vramBufferOffset_Prac                  ; store the ppu location of the framerule counter
		lda #$20                                   ;
		sta vramBuffer,y                           ;
		lda #$44                                   ;
		sta vramBuffer+1,y                         ;
		lda #$03                                   ; store the number of digits to draw
		sta vramBuffer+2,y                         ;
		iny                                        ; increment past the ppu location
		iny                                        ;
		iny                                        ;
	@PrintRuleDataAtY:
		lda CurrentRule+3                          ; then copy the framerule numbers into the buffer
		sta vramBuffer+3,y                         ;
		lda CurrentRule+2                          ;
		sta vramBuffer+2,y                         ;
		lda CurrentRule+1                          ;
		sta vramBuffer+1,y                         ;
		lda CurrentRule+0                          ;
		sta vramBuffer+0,y                         ;
		lda #$ff
		sta vramBuffer+4,y
@dont_draw_rule:		
		rts                                        ;

RedrawFramerulePauseMenu:
		lda WRAM_PracticeFlags
		and #PF_DisablePracticeInfo
		bne @dont_draw_rule
		lda vramBufferOffset_Prac                    ; get the current buffer offset
		tay                                          ;
		adc #(3+4)                                   ; shift over based on length of the framerule text
		sta vramBufferOffset_Prac                    ; store the ppu location of the framerule counter
		lda #$20                                     ;
		sta vramBuffer,y                             ;
		lda #$44                                     ;
		sta vramBuffer+1,y                           ;
		lda #$03                                     ; store the number of digits to draw
		sta vramBuffer+2,y                           ;
		iny                                          ; increment past the ppu location
		iny                                          ;
		iny                                          ;
		lda #$ff                                     ; place our null terminator
		sta vramBuffer+4,y                           ;
	@PrintRuleDataAtY:
		lda WRAM_AreaFramerule+3          					 ; then copy the framerule numbers into the buffer
		sta vramBuffer+3,y                                   ;
		lda WRAM_AreaFramerule+2          					 ;
		sta vramBuffer+2,y                                   ;
		lda WRAM_AreaFramerule+1         					 ;
		sta vramBuffer+1,y                                   ;
		lda WRAM_AreaFramerule+0          					 ;
		sta vramBuffer+0,y                                   ;
@dont_draw_rule:		
		rts                                          ;
		
RedrawFrameNumbers:
		txa
		pha
		jsr RedrawFrameNumbersInner
		pla
		tax
		jmp ReturnBank

UpdateFrameRule:
.ifndef PAL
	.ifdef ORG
		lda #$14
	.endif
.else
		lda #$11
.endif

.ifdef ORG
		cmp IntervalTimerControl
		bne NotEvenFrameRule
.endif
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
@update_rng_loop:
	inc CurrentRule,x
	lda CurrentRule,x
	cmp #$10
	bcc @exit
	lda #$00
	sta CurrentRule,x
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
		lda WRAM_EntrySockTimer
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
		ldx vramBufferOffset_Prac
		lda #$22
		sta vramBuffer, x
.ifdef ORG
		lda #$F0
.else
		lda #$F2
.endif
		sta vramBuffer+1, x
		lda #$03
		sta vramBuffer+2, x
		ldy #0
@copy_next:
		lda ($04),y
		pha
		lsr_by 4
		sta vramBuffer+3, x
		pla
		and #$0f
		sta vramBuffer+4, x
		inx
		inx
		iny
		cpy #2
		bne @copy_next
		lda #$ff
		sta vramBuffer+3, x
		lda vramBufferOffset_Prac
		clc 
		adc #7
		sta vramBufferOffset_Prac
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
		ldx WRAM_AdvRNG
		bne @entry_sock_timer
		lda WRAM_SelectedSlot
		clc
		adc $00
		bpl @slot_right
		lda #$04
		bne @slot_store
@slot_right:
		cmp #$05
		bcc @slot_store
		lda #$00
@slot_store:
		sta WRAM_SelectedSlot
		rts
@entry_sock_timer:
		lda WRAM_EntrySockTimer
		clc
		adc $00
		bpl @sock_right
.ifndef PAL
		lda #$14
.else
		lda #$11
.endif
		bne @sock_store
@sock_right:
		cmp #$15
		bcc @sock_store
		lda #$00
@sock_store:
		sta WRAM_EntrySockTimer
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
		lda SavedRule
		ora SavedRule+1
		ora SavedRule+2
		ora SavedRule+3
		beq @keep_sock_timer
		lda WRAM_AdvRNG
		bne @selected_sock_timer
.ifdef ORG
	.ifndef PAL
		lda #$0e+5
	.else
		lda #$0b+5
	.endif
.elseif .defined(LOST)
		lda #$0c+9
.else
		lda #$0b+10
.endif
		ldy LevelNumber
		bne @store_sock_timer
.ifdef ORG
	.ifndef PAL
		lda #$0f+5
	.else
		lda #$0c+5
	.endif
.elseif .defined(LOST)
		lda #$0d+9
.else
		lda #$0c+10
.endif
		bne @store_sock_timer
@selected_sock_timer:
		lda WRAM_EntrySockTimer
		clc
.ifdef ORG
		adc #5
.elseif .defined(LOST)
		adc #9
.else
		adc #10
.endif
.ifndef PAL
		cmp #21
.else
		cmp #18
.endif
		bcc @store_sock_timer
.ifndef PAL
		sbc #21
.else
		sbc #18
.endif
@store_sock_timer:
    	sta IntervalTimerControl
@keep_sock_timer:
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
		lda #$22 ; SMB2 color
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
		ldx vramBufferOffset_Prac
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
		sta vramBuffer,x
		inx
		iny
		bne @VRAMBufferLoop
@ExitTitleChange:
		lda #$ff
		sta vramBuffer,x
		lda vramBufferOffset_Prac
		adc #$11
		sta vramBufferOffset_Prac
		rts

.ifdef ORG
	CopyrightText1985:
	.byte $21, $ed, $0d, $cf, $01, $09, $08, $05, $24, $17, $12, $17, $1d
	.byte $0e, $17, $0d, $18, $ff

	BothQuestText:
		.byte $21, $ed, $0d, $24, $24, $24, $0b, $18, $1d, $11, $24, $1a, $1e 
		.byte $0e, $1c, $1d, $1c, $ff
.elseif .defined(LOST)
	CopyrightText1986_L:
		.byte $21, $ef, $0d, $cf, $01, $09, $08, $06, $24, $17, $12, $17, $1d
		.byte $0e, $17, $0d, $18, $ff

	BothEndText:
		.byte $21, $ef, $0d, $24, $24, $0b, $18, $1d, $11, $24, $0e, $17, $0d 
		.byte $12, $17, $10, $1c, $ff
		
	AllStagesText:
		.byte $21, $ef, $0d, $24, $24, $24, $24, $0a, $15, $15, $24, $1c, $1d
		.byte $0a, $10, $0e, $1c, $ff
.else
	CopyrightText1986:
		.byte $21, $ee, $0d, $cf, $01, $09, $08, $06, $24, $17, $12, $17, $1d
		.byte $0e, $17, $0d, $18, $ff	
		
	AllStagesText:
		.byte $21, $ee, $0d, $24, $24, $24, $24, $0a, $15, $15, $24, $1c, $1d
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
.ifndef ORG
		cmp #A_Button+Start_Button
		bne @no_bypass
		lda #$09
		sta WorldNumber
		inc OperMode_Task
		jmp ReturnBank
.endif
@no_bypass:
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
.ifndef ORG
		lda IRQUpdateFlag
.else
		lda Sprite0HitDetectFlag
.endif
		sta WRAM_IRQUpdateFlag
		lda #0
.ifndef ORG 
		sta IRQUpdateFlag
.else
		sta Sprite0HitDetectFlag
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
.else
		sta Sprite0HitDetectFlag
.endif
		sta SND_MASTERCTRL_REG
@invalid_save:
		rts
pause_things_stub:
		jmp pause_things
		
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
		lda SavedJoypadBits
		ora JoypadBitMask
		sta LastInputBits
		lda SavedJoypadBits+1
		sta LastInputBits+1
		jsr ReadJoypads
		lda SavedJoypadBits
		ora JoypadBitMask
		tax
		cpx LastInputBits
		bne @check_snes
		lda SavedJoypadBits+1
		cmp LastInputBits+1
		beq pause_things_stub
@check_snes:
		lda SNES_Pad
		beq NES_Controller
		ldy SavedJoypadBits+1
		lda WRAM_SaveButtons_SNES
		ora WRAM_SaveButtons_SNES+1
		beq @no_begin_save
		txa
		and WRAM_SaveButtons_SNES
		cmp WRAM_SaveButtons_SNES
		bne @no_begin_save
		tya
		and WRAM_SaveButtons_SNES+1
		cmp WRAM_SaveButtons_SNES+1
		bne @no_begin_save
		jmp begin_save
@no_begin_save:
		lda WRAM_LoadButtons_SNES
		ora WRAM_LoadButtons_SNES+1
		beq @no_begin_load
		txa
		and WRAM_LoadButtons_SNES
		cmp WRAM_LoadButtons_SNES
		bne @no_begin_load
		tya
		and WRAM_LoadButtons_SNES+1
		cmp WRAM_LoadButtons_SNES+1
		bne @no_begin_load
		jmp begin_load
@no_begin_load:
		lda WRAM_RestartButtons_SNES
		ora WRAM_RestartButtons_SNES+1
		beq @no_restart_level
		txa
		and WRAM_RestartButtons_SNES
		cmp WRAM_RestartButtons_SNES
		bne @no_restart_level
		tya
		and WRAM_RestartButtons_SNES+1
		cmp WRAM_RestartButtons_SNES+1
		bne @no_restart_level
		jmp RequestRestartLevel
@no_restart_level:
		lda WRAM_TitleButtons_SNES
		ora WRAM_TitleButtons_SNES+1
		beq pause_things
		txa
		and WRAM_TitleButtons_SNES
		cmp WRAM_TitleButtons_SNES
		bne pause_things
		tya
		and WRAM_TitleButtons_SNES+1
		cmp WRAM_TitleButtons_SNES+1
		bne pause_things
		lda BANK_SELECTED
		jmp StartBank		
NES_Controller:
		tax ;evasion
		lda WRAM_SaveButtons
		beq @no_begin_save
		txa
		and WRAM_SaveButtons
		cmp WRAM_SaveButtons
		bne @no_begin_save
		jmp begin_save
@no_begin_save:
		lda WRAM_LoadButtons
		beq @no_begin_load
		txa
		and WRAM_LoadButtons
		cmp WRAM_LoadButtons
		bne @no_begin_load
		jmp begin_load
@no_begin_load:
		lda WRAM_RestartButtons
		beq @no_restart_level
		txa
		and WRAM_RestartButtons
		cmp WRAM_RestartButtons
		bne @no_restart_level
		jmp RequestRestartLevel
@no_restart_level:
		lda WRAM_TitleButtons
		beq pause_things
		txa
		and WRAM_TitleButtons
		cmp WRAM_TitleButtons
		bne pause_things
		lda BANK_SELECTED
		jmp StartBank
pause_things:
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
		sta vramBuffer+3,x
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
		pla
something_or_other:
		sta $04
		asl
		asl
		adc $04
		adc $2
		sta $2
		ldx vramBufferOffset_Prac
		bne skip_sock_hash
draw_sock_hash:
		lda #$20
		sta vramBuffer
		lda #$64 ;
		sta vramBuffer+1
		lda #$03 ; len
		sta vramBuffer+2
		ldx #0
		lda $2
		jsr PrintHexByte
		lda $3
		jsr PrintHexByte
		lda #$ff
		sta vramBuffer+3, x
		lda #$07
		sta vramBufferOffset_Prac
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
		ldx #(WRAM_ToSaveFile_End - WRAM_ToSaveFile)-1
@load_wram:
		lda WRAM_SaveWRAM, x
		sta WRAM_ToSaveFile, x
		dex
		bpl @load_wram
		ldx #0
@load_level:
		lda WRAM_SaveLevel, x
		sta WRAM_LevelData, x
		inx
		bne @load_level
@load_enemy:
		lda WRAM_SaveEnemy, x
		sta WRAM_EnemyData, x
		inx
		bne @load_enemy

		;lda OperMode
		;cmp WRAM_SaveRAM+OperMode
		;bne @restore_pal
		;lda OperMode_Task
		;cmp WRAM_SaveRAM+OperMode_Task
		;bne @restore_pal
		;lda CurrentPlayer
		;cmp WRAM_SaveRAM+CurrentPlayer
		;bne @restore_pal
		;lda AreaType
		;cmp WRAM_SaveRAM+AreaType
		;beq @copy_ram
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

		ldx #(WRAM_SM2End - WRAM_SM2Start)-1
@copy_lost:
		lda WRAM_SaveLost, x
		sta WRAM_SM2Start, x
		dex
		bpl @copy_lost
		lda GamePauseStatus
		ora #2
		sta GamePauseStatus
		;lda WRAM_PracticeFlags
		;and #PF_LoadState^$FF
		;sta WRAM_PracticeFlags
		lda #0
		sta DisableScreenFlag
		lda WRAM_IRQUpdateFlag
.ifndef ORG
		sta IRQUpdateFlag
.else
		sta Sprite0HitDetectFlag
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
        lda WRAM_PracticeFlags
		and #PF_SaveState^$FF
		sta WRAM_PracticeFlags
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

		ldx #(WRAM_ToSaveFile_End - WRAM_ToSaveFile)-1
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
@save_enemy:
		lda WRAM_EnemyData, x
		sta WRAM_SaveEnemy, x
		inx
		bne @save_enemy
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

		ldx #(WRAM_SM2End - WRAM_SM2Start)-1
@copy_lost:
		lda WRAM_SM2Start, x
		sta WRAM_SaveLost, x
		dex
		bpl @copy_lost


		lda GamePauseStatus
		ora #2
		sta GamePauseStatus
		lda #0
		sta DisableScreenFlag
		lda WRAM_IRQUpdateFlag
.ifndef ORG
		sta IRQUpdateFlag
.else
		sta Sprite0HitDetectFlag
.endif
		rts


.macro RedrawUserVar name, off
		lda name
		sta $00
		lda name+1
		sta $01
		lda ($00), y
		jsr DivByTen
		sta vramBuffer+off+2
		txa
		jsr DivByTen
		sta vramBuffer+off+1
		stx vramBuffer+off+0
.endmacro

.macro HideRedrawUserVar off
		lda #$24
		sta vramBuffer+off+2
		sta vramBuffer+off+1
		sta vramBuffer+off+0
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
		ldy vramBufferOffset_Prac
		bne noredraw
		lda #$20
		sta vramBuffer
		lda #$71
		sta vramBuffer+1
		lda #$06
		sta vramBuffer+2
		lda #$24
		sta vramBuffer+6
		lda WRAM_PracticeFlags
        and #PF_DisablePracticeInfo
        bne hide
		
		RedrawUserVar WRAM_UserVarA, 3
		RedrawUserVar WRAM_UserVarB, 7

terminate:
		lda #$ff
		sta vramBuffer+$0A
		lda #$0a
		sta vramBufferOffset_Prac
		lda WRAM_DelayUserFrames
		sta UserFramesLeft		

UpdateStatusInput:
    lda WRAM_PracticeFlags
    and #PF_EnableInputDisplay
    beq @exit
    ldy #$00
    ldx vramBufferOffset_Prac
    stx $00
@WriteStatusInput:
    lda InputDisplayPacket,y
    sta vramBuffer,x
    inx
    iny
    cpy #$0b
    bcc @WriteStatusInput
    stx vramBufferOffset_Prac
	lda SNES_Pad
	beq @NES_Pad
	dex
	dex
	dex
	lda #$22
	sta vramBuffer,x
	inx
	lda #$0b
	sta vramBuffer,x
@NES_Pad:
    ldx $00
@UpInp:
	lda JoypadBitMask
	and #Up_Dir
	bne @LeftInp
	lda #$28
	sta vramBuffer+3,x
@LeftInp:
	lda JoypadBitMask
	and #Left_Dir
	bne @DownInp
	lda #$28
	sta vramBuffer+4,x
@DownInp:
	lda JoypadBitMask
	and #Down_Dir
	bne @RightInp
	lda #$28
	sta vramBuffer+5,x
@RightInp:
	lda JoypadBitMask
	and #Right_Dir
	bne @B_Button
	lda #$28
	sta vramBuffer+6,x
@B_Button:
	lda JoypadBitMask
	and #B_Button
	bne @A_Button
	lda #$28
	sta vramBuffer+8,x
@A_Button:
	lda JoypadBitMask
	and #A_Button
	bne @exit
	lda #$28
	sta vramBuffer+9,x
@exit:
    jmp ReturnBank

InputDisplayPacket:
    .byte $20,$51,$06,$1E,$15,$0D,$1B,$24,$0B,$0A,$FF
	
RequestRestartLevel:
		lda #$80 ; REMOVE 0x80?
		sta GamePauseStatus
		ldx #0
		stx PauseModeFlag
		stx PauseSoundBuffer
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
		
.ifdef ORG
		lda WRAM_GameGenie
		cmp #$01
		beq @aisson
.elseif .defined(LOST)
		lda BANK_SELECTED
		cmp #BANK_SMBLL
		beq @warpless_2j
.endif
@done:
		jmp ReturnBank
		
.ifdef ORG
@aisson:
		lda WorldNumber
		cmp #World8									 ; Are we in World 8?
		bne @done								 	 ; No? Leave.
		lda LevelNumber								 ; Are we in 8-3 or 8-4?
		cmp #$02									 ; Yes, set up the funny.
		bcc @done								 	 ; No, get out.
@aisson_setup:										 ;
		lda #$08									 ;	
		sta EntrancePage							 ;
		sta WRAM_LevelEntrancePage					 ;
		bne @done								 	 ;
		
.elseif .defined(LOST)
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
		sta vramBufferOffset_Prac
		lda #$ff
		sta vramBuffer
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
		ldx vramBufferOffset_Prac
		lda #$20
		sta vramBuffer,x
		lda #$69
      	sta vramBuffer+1,x
      	lda #$00
      	sta vramBuffer+2,x
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
		sta vramBuffer+3,x
		lda #$ff
		sta vramBuffer+4,x
		inx
		inx
		inx
		inx
		stx vramBufferOffset_Prac
		jmp RedrawFrameNumbers

MagicalBytes:
.ifdef ORG
		.byte $6D, $61, $64, $6F, $70, $6C, $75, $73, $68, $99 ;madoplush
.elseif .defined(LOST)
		.byte $73, $61, $79, $61, $70, $6C, $75, $73, $68, $99 ;sayaplush
.else
		.byte $6B, $79, $6F, $75, $70, $6C, $75, $73, $68, $99 ;kyouplush
.endif

ValidWRAMMagic:
		ldx #$0a
@WRAMLoop:
		lda WRAM_Magic-1,x
		cmp MagicalBytes-1,x
		bne @exit
		dex
		bne @WRAMLoop
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
		ldx #$00
@WRAMLoop:
		lda MagicalBytes,x
		sta WRAM_Magic,x
		inx
		cpx #$0a
		bcc @WRAMLoop	
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
		sta WRAM_RestartButtons_SNES
		lda #RESTART_GAME_BUTTONS
		sta WRAM_TitleButtons
		sta WRAM_TitleButtons_SNES
		lda #SAVE_STATE_BUTTONS
		sta WRAM_SaveButtons
		sta WRAM_SaveButtons_SNES
		lda #LOAD_STATE_BUTTONS
		sta WRAM_LoadButtons
		sta WRAM_LoadButtons_SNES
		
		lda #PF_EnableInputDisplay
		sta WRAM_PracticeFlags
		;
		; TODO : Sane init values
		;
		lda JOYPAD_PORT
		lsr
		bcc @NES_Controller
		lda SavedJoypadBits+1
		and #$0f
		bne @NES_Controller
		lda #$01
		bne @SNES_Controller
@NES_Controller:
		lda #$00
@SNES_Controller:
		sta SNES_Pad
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
