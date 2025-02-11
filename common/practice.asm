	.include "org.inc"
	.include "lost.inc"
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
	lda TopScoreDisplay+2
	jsr MulByTen
	clc
	adc TopScoreDisplay+3
	tax
	ldy #0
	sty TopScoreDisplay+2 ; clear (1234 - > 34)
	sty TopScoreDisplay+3 ; clear
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

SMALL_FIRE_FRAMES = $1b3

AdvanceToRule:
		;
		; Regardless of rule, always honor powerups
		;
		lda #0
		ldy #0
		ldx PowerUps
		beq NoPowerups
		lda #$3B
		iny
		dex
		beq BigMarioPowerup
		lda #$7A
		iny 
		dex
		beq BigMarioPowerup
		ldx #1
		ldy #2
		lda #<SMALL_FIRE_FRAMES
		;
		; Big mario
		;
BigMarioPowerup:
		stx PlayerSize
		sty PlayerStatus

NoPowerups:
    ldx #0
		stx PowerUps
		sta PowerUpFrames
		;
		; If Rule is 0, use title Rule
		; 
		lda TopScoreDisplay+2
		ora TopScoreDisplay+3
		ora TopScoreDisplay+4
		ora TopScoreDisplay+5
		bne StartAdvance
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
		lda TopScoreDisplay+1,x
		sta DisplayDigits+RULE_COUNT_OFFSET-4, x
		dex
		bne KeepCopyRule
		lda #0
		sta DisplayDigits+RULE_COUNT_OFFSET-5
		;
		; Advance to correct frame rule
		;
		jsr prac_quick_resume
		lda TopScoreDisplay+4
		jsr MulByTen
		clc
		adc TopScoreDisplay+5
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
		sta TopScoreDisplay+5
		sta TopScoreDisplay+4
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
		lda PowerUpFrames
		cmp #<SMALL_FIRE_FRAMES
		bne StartFramePrecision
		ldx #0
CorrectForSmallFire:
		jsr AdvanceRandom
		dex
		bne CorrectForSmallFire
StartFramePrecision:
		lda PowerUpFrames
MorePowerUpFrames:
		beq NoPowerUpFrames
		jsr AdvanceRandom
		dec PowerUpFrames
		jmp MorePowerUpFrames
NoPowerUpFrames:
		;
		; Set the correct framecounter
		;
		ldy #$0e
		ldx #$a2

		lda BANK_SELECTED
		cmp #BANK_ORG
		beq @is_org
		dex
		dex
		dey
		dey
@is_org:
		lda LevelNumber
		bne SaveFrameCounter
		inx
		iny
SaveFrameCounter:
		stx FrameCounter
		sty SavedEnterTimer
		;
		; On the correct framerule, continue with the game.
		;
		rts

TopText:
	text_block $2044, "RULE * FRAME"
	text_block $2051, " X   Y  TIME R "
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
        beq @draw
		lda StarFlagTaskControl
		cmp #$04
		beq @draw ; force remainder if flagpole end
		lda OperMode
		cmp #$02
		beq @draw ; force remainder if castle end
		lda WarpZoneControl
		beq nodraw
		lda GameEngineSubroutine
		cmp #$03
		bne nodraw ; force remainder if warp zone
@draw:	ldy VRAM_Buffer1_Offset
		lda #$20
		sta VRAM_Buffer1, y
		lda #$7E
		sta VRAM_Buffer1+1, y
		lda #$02
		sta VRAM_Buffer1+2, y
		lda IntervalTimerControl
		jsr DivByTen
		sta VRAM_Buffer1+4, y
		txa
		sta VRAM_Buffer1+3, y
		lda #0
		sta VRAM_Buffer1+5, y
		clc
		tya
		adc #5
		sta VRAM_Buffer1_Offset
nodraw:	rts

RedrawAllInner:
		jsr RedrawFramesRemaningInner
		jsr RedrawFrameNumbersInner
		rts

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
		lda #$6d
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
		bne @dont_draw_rule
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

PrintableWorldNumber:
		lda BANK_SELECTED
		cmp #BANK_ORG
		bne @get_ll_world
@org_world:
		lda WorldNumber
		jmp @to_print
@get_ll_world:
		lda IsPlayingExtendedWorlds
		beq @org_world
		lda WorldNumber
		and #3
		clc
		adc #9
@to_print:
		sec
		adc #0
		rts

GetSelectedValue:
		lda $0
		beq @get_world
		cmp #1
		beq @get_level
		cmp #2
		beq @get_pups
		bne @get_player
@get_level:
		lda LevelNumber
		sec
		adc #0
		rts
@get_pups:
		lda PowerUps
		rts
@get_player:
		lda WRAM_IsContraMode ;
		beq @not_peach
		lda #$19
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
		lda #$Eb
		sta VRAM_Buffer1+1, x
		lda #$04
		sta VRAM_Buffer1+2, x
		ldy #0
@copy_next:
		lda ($04), y
		sta VRAM_Buffer1+3, x
		inx
		iny
		cpy #4
		bne @copy_next
		lda VRAM_Buffer1_Offset
		clc 
		adc #7
		sta VRAM_Buffer1_Offset
		rts


menu_text:
	text_block $222B, "% WORLD"
	text_block $224B, "% LEVEL"
	text_block $226B, "% P-UPS"
	text_block $228B, "% HERO"
	text_block $22f0, "RULE"
	.byte $00

draw_menu:
		jsr DrawTitleMario
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
		inc $0
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
	.byte $22, $ca, $06, $24, $24, $24, $24, $24, $24, $00

DrawRuleCursor:
		lda RuleIndex
		bne @initialized
		lda #4
		sta RuleIndex
@initialized:
		ldy #9
		lda VRAM_Buffer1_Offset
		clc
		adc #9
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
		sbc #6
		adc RuleIndex
		tax
		dex
		lda #$29
		sta VRAM_Buffer1,x
		rts

MushroomIconData:
		.byte $22, $29, $87, $24, $24, $24, $24, $24, $24, $24
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
		cmp #4
		bmi FirstFour
		clc
		adc #2
FirstFour:
		adc VRAM_Buffer1_Offset
		tax
		lda #$ce
		sta VRAM_Buffer1+3-$0a,x
		rts

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
		cpx #1
		bpl @test_high
		ldx #4
@test_high:
		cpx #5
		bne @save_index
		ldx #1
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
		ldy RuleIndex
		dey
		clc
		adc ($04),y
		bmi @negative
		cmp #10
		bmi @save_digit
		lda #0
		jmp @save_digit
@negative:
		lda #9
@save_digit:
		sta ($04), y
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
		bne @hero_selected
		lda PowerUps
		clc
		adc $00
		and #$03
		sta PowerUps
@keep_peach:
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
	cpx #BANK_ANN              ; are we playing ANN?
	bne @checked_ann_r         ; no - skip ahead
	cpy #8                     ; yes - have we selected world 9
	bne @checked_ann_r         ; no - skip ahead
	iny                        ; yep - advance past world 9 (it doesnt exist in ANN)
@checked_ann_r:                ;
	cpx #BANK_ORG              ; are we playing smb1?
	bne @check_ll_r            ; nope - we have more worlds to consider
    cpy #9                     ; yes - are we past the end of the game?
	bcc @store                 ; no - we're done, store the world
	ldy #0                     ; yes - wrap around to world 1
	beq @store                 ; and store
@check_ll_r:                   ;
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
	cpx #BANK_ORG              ; are we playing smb1?
	bne @check_ll_l            ; nope - we have more worlds to consider
	ldy #$08                   ; yes - wrap around to world 9
	bne @store                 ; and store
@check_ll_l:                   ;
    ldy #$0C                   ; we are playing LL / ANN, wrap to world D
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
		ldy #3
@copy_rule:
		lda ($04), y
		sta SavedRule, y
		dey
		bpl @copy_rule
		inc OperMode_Task
		jmp ReturnBank

WriteRulePointer:
		lda WorldNumber
		asl ; *=2
		asl ; *=4
		asl ; *=8
		asl ; *=16
		cmp #(8*16)
		bcc @store
		ldx BANK_SELECTED
		cpx #BANK_ANN
		bne @store
		sec
		sbc #16 ;subtract offset for nippon ext, no world 9
@store:
		sta $04
		lda LevelNumber
		asl ; *=2
		asl ; *=4
		clc
		adc $04
		ldx BANK_SELECTED
		cpx #BANK_ORG
		beq @is_org
		cpx #BANK_SMBLL
		beq @is_lost
		clc
		adc #<WRAM_NipponRules
		sta $04
		lda #0
		adc #>WRAM_NipponRules
		sta $05
		rts
@is_lost:
		clc
		adc #<WRAM_LostRules
		sta $04
		lda #0
		adc #>WRAM_LostRules
		sta $05
		rts
@is_org:
		clc
		adc #<WRAM_OrgRules
		sta $04
		lda #0
		adc #>WRAM_OrgRules
		sta $05
		rts

toggle_second_quest:
		lda BANK_SELECTED
		cmp #BANK_SMBLL
		beq @is_ll
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
		lda #$22 ; Original color
		ldy BANK_SELECTED
		cpy #BANK_ORG
		beq @set_color
		lda #$0f ; Nippon color
@set_color:
		sta VRAM_Buffer1+3,x
		inx
		inx
		inx
		inx
		stx VRAM_Buffer1_Offset
@is_ll:
		rts

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
		cpx #5
		bne @save_menu_index
		ldx #0
@save_menu_index:
		stx WRAM_MenuIndex
		jmp @dec_timer
@check_b:
		cmp #B_Button
		bne @check_input
		jsr toggle_second_quest
		jmp @dec_timer
@check_input:
		ldx WRAM_MenuIndex
		cpx #4
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
		sta WRAM_SaveFramesLeft
		lda #0
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
		sta WRAM_SaveFramesLeft
		lda #$00
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
		lda BANK_SELECTED
		cmp #BANK_ORG
		bne @lost_sound
		jsr SoundEngine
		jmp @read_keypads
@lost_sound:
		jsr LL_SoundEngine
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
		cmp #$03
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
		dec WRAM_SaveFramesLeft
		beq @do_loadstate
		lda GamePauseStatus
		ora #02
		sta GamePauseStatus
		rts
@do_loadstate:
		lda #$FF
		sta WRAM_Timer+1 ; Invalidate timer
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
		; Controllers will be read again this frame. Reset them (very buggy otherwise ;)).
		sta SavedJoypad1Bits
		sta JoypadBitMask
		rts

SaveState:
		dec WRAM_SaveFramesLeft
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

noredraw_dec:
		dec WRAM_UserFramesLeft
noredraw:
		jmp UpdateStatusInput

RedrawUserVars:
		lda WRAM_UserFramesLeft
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

		lda BANK_SELECTED
		cmp #BANK_ORG
		beq @is_org
		RedrawUserVar WRAM_LostUser0, 3
		RedrawUserVar WRAM_LostUser1, 7
		jmp @terminate
@is_org:
		RedrawUserVar WRAM_OrgUser0, 3
		RedrawUserVar WRAM_OrgUser1, 7
@terminate:
		sty VRAM_Buffer1+$0A
		lda WRAM_DelayUserFrames
		sta WRAM_UserFramesLeft

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
		jsr AdvanceToRule
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
		lda FrameCounter
		sta WRAM_LevelFrameCounter
		lda PlayerStatus
		sta WRAM_LevelPlayerStatus
		lda PlayerSize
		sta WRAM_LevelPlayerSize
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
@done:
		jmp ReturnBank


PracticeInit:
		lda #0
		sta WRAM_Timer
		sta WRAM_Timer+1
		sta WRAM_SlowMotion
		sta WRAM_SlowMotionLeft
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
		sta WRAM_OrgUser0
		sta WRAM_LostUser0
		lda #>Player_Rel_XPos
		sta WRAM_OrgUser0+1
		sta WRAM_LostUser0+1
		lda #<Player_X_MoveForce
		sta WRAM_OrgUser1
		sta WRAM_LostUser1
		lda #>Player_X_MoveForce
		sta WRAM_OrgUser1+1
		sta WRAM_LostUser1+1

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

EndLevel:
		jsr EndLevelInner
		jmp ReturnBank

EndLevelInner:
		lda WorldNumber
		asl ; *= 2
		asl ; *= 4
		asl ; *= 8
		asl ; *= 16
		sta $00
		lda LevelNumber
		asl ; *= 2
		adc $00
		tax
		lda BANK_SELECTED
		cmp #BANK_ORG
		beq @is_org
		lda WRAM_LostTimes, x
		sta $01
		lda WRAM_LostTimes+1, x
		sta $02
		jmp @checktime
@is_org:
		lda WRAM_OrgTimes, x
		sta $01
		lda WRAM_OrgTimes+1, x
		sta $02
@checktime:
		lda WRAM_Timer
		cmp $01
		bcc @new_record
		beq @checklower
		rts
@checklower:
		lda WRAM_Timer+1
		cmp $02
		bcc @new_record
		beq @new_record
		rts
@new_record:
		ldy #0
		lda WRAM_Timer
		sta ($01), y
		lda WRAM_Timer+1
		iny
		sta ($01), y
		dey
		sty WRAM_Timer
		sty WRAM_Timer+1
		rts


N = WRAM_Temp
CARRY = WRAM_Temp+7
;
; Source div32_16_16:
; http://www.6502.org/source/integers/ummodfix/ummodfix.htm
;
div32_16_16:
		sec
        lda N+2
        sbc N
        lda N+3
        sbc N+1
        bcs @oflo
        ldx #$11
@loop:
 		rol N+4
        rol N+5
                        
        dex
        beq @end

        rol N+2
        rol N+3
        lda #0
        sta CARRY
        rol CARRY

        sec
        lda N+2
        sbc N
        sta N+6
        lda N+3
        sbc N+1
        tay
        lda CARRY
        sbc #0
        bcc @loop

        lda N+6
        sta N+2
        sty N+3
        bcs @loop ; always
 @oflo:
 		lda #$FF
        sta N+2
        sta N+3
        sta N+4
        sta N+5
@end:
		rts

PROD = WRAM_Temp+$10
MULR = WRAM_Temp+$10+8
MULND = WRAM_Temp+$10+8+4

mult64_32_32:
		lda     #$00
		sta     PROD+4   ;Clear upper half of
		sta     PROD+5   ;product
		sta     PROD+6
		sta     PROD+7
		ldx     #$20     ;Set binary count to 32
SHIFT_R:
		lsr     MULR+3   ;Shift multiplyer right
		ror     MULR+2
		ror     MULR+1
		ror     MULR
		bcc     ROTATE_R ;Go rotate right if c = 0
		lda     PROD+4   ;Get upper half of product
		clc              ; and add multiplicand to
		adc     MULND    ; it
		sta     PROD+4
		lda     PROD+5
		adc     MULND+1
		sta     PROD+5
		lda     PROD+6
		adc     MULND+2
		sta     PROD+6
		lda     PROD+7
		adc     MULND+3
ROTATE_R:
		ror
		sta     PROD+7   ; right
		ror     PROD+6
		ror     PROD+5
		ror     PROD+4
		ror     PROD+3
		ror     PROD+2
		ror     PROD+1
		ror     PROD
		dex              ;Decrement bit count and
		bne     SHIFT_R  ; loop until 32 bits are
		rts

; https://forums.nesdev.com/viewtopic.php?f=2&t=11341
HexToBCD:
		sta  $01
		lsr
		adc  $01
		ror
		lsr
		lsr
		adc  $01
		ror
		adc  $01
		ror
		lsr
		and  #$3C
		sta  $02
		lsr
		adc  $02
		adc  $01
		rts

FrameToTime:
		jsr FrameToTimeInner
		jmp ReturnBank

FrameToTimeInner:
		lda #0
		sta PROD+3
		sta CARRY
		sta MULR+2
		sta MULR+3
		sta MULND+3
		stx MULR
		sty MULR+1
		lda #$a0
		sta MULND
		lda #$86
		sta MULND+1
		lda #$01
		sta MULND+2
		jsr mult64_32_32 ; x = frames * 100000

		lda PROD+0
		sta N+4
		lda PROD+1
		sta N+5
		lda PROD+2
		sta N+2
		lda PROD+3
		sta N+3
		lda #<60098
		sta N+0
		lda #>60098
		sta N+1
		jsr div32_16_16 ; x / 60098

		lda #0
		sta N+2
		sta N+3

		sta N+1
		lda #100
		sta N+0
		jsr div32_16_16 ; r = x % 100; s = x / 100

		lda N+2
		jsr HexToBCD
		sta WRAM_PrettyTimeFrac

		lda #0
		sta N+2
		sta N+3

		sta N+1
		lda #60
		sta N+0
		jsr div32_16_16 ; m = s/60 s = s%60

		lda N+2
		jsr HexToBCD
		sta WRAM_PrettyTimeSec
		lda N+4
		jsr HexToBCD
		sta WRAM_PrettyTimeMin

		rts



BCD_BITS = 19
bcdNum = WRAM_Timer
bcdResult = 2
curDigit = 7
b = 2

TimerToDecimal:
		lda #$80 >> ((BCD_BITS - 1) & 3)
		sta curDigit
		ldx #(BCD_BITS - 1) >> 2
		ldy #BCD_BITS - 5
@loop:
		; Trial subtract this bit to A:b
		sec
		lda bcdNum
		sbc bcdTableLo,y
		sta b
		lda bcdNum+1
		sbc bcdTableHi,y

		; If A:b > bcdNum then bcdNum = A:b
		bcc @trial_lower
		sta bcdNum+1
		lda b
		sta bcdNum
@trial_lower:
		; Copy bit from carry into digit and pick up 
		; end-of-digit sentinel into carry
		rol curDigit
		dey
		bcc @loop

		; Copy digit into result
		lda curDigit
		sta bcdResult,x
		lda #$10  ; Empty digit; sentinel at 4 bits
		sta curDigit
		; If there are digits left, do those
		dex
		bne @loop
		lda bcdNum
		sta bcdResult
		rts

bcdTableLo:
		.byte <10, <20, <40, <80
		.byte <100, <200, <400, <800
		.byte <1000, <2000, <4000, <8000
		.byte <10000, <20000, <40000

bcdTableHi:
		.byte >10, >20, >40, >80
		.byte >100, >200, >400, >800
		.byte >1000, >2000, >4000, >8000
		.byte >10000, >20000, >40000

DrawTimeDigit:
	pha
		lsr
		lsr
		lsr
		lsr
		sta VRAM_Buffer1, y
		iny
	pla
		and #$0F
		sta VRAM_Buffer1, y
		iny
		rts

WriteTime:
	tya
	pha
    ldx $00
    ldy $01
		jsr FrameToTimeInner
	pla
	tay
		lda WRAM_PrettyTimeMin
		and #$0F
		sta VRAM_Buffer1, y
		iny
		lda #$AF ; .
		sta VRAM_Buffer1, y
		iny

		lda WRAM_PrettyTimeSec
		jsr DrawTimeDigit
		lda #$AF ; .
		sta VRAM_Buffer1, y
		iny

		lda WRAM_PrettyTimeFrac
		jsr DrawTimeDigit
  .if 0
		lda #$29 ; x
		sta VRAM_Buffer1, y
		iny
	tya
	pha
		jsr TimerToDecimal
	pla
	tay
		ldx #4
@writeframe:
		lda bcdResult,x
		sta VRAM_Buffer1,y
		iny
		dex
		bpl @writeframe
  .endif
		rts

PersonalBestText:
YourTime:
	.byte $22, $2a, $0c
	.byte "TIME ", $fe, $ff
YourPB:
	.byte $22, $4a, $0c
	.byte "PB   ", $fe, $ff
NewRecord:
	.byte $22, $4a, $0c
	.byte "NEW RECORD! ", $ff
LoadedGame:
	.byte $22, $2a, $0c
	.byte "SAVES USED! ", $ff

PbTextOffsets:
	.byte YourTime - PersonalBestText
	.byte YourPB - PersonalBestText
    .byte NewRecord - PersonalBestText
    .byte LoadedGame - PersonalBestText

WriteTimeText:
		ldy VRAM_Buffer1_Offset
		lda PbTextOffsets, x
		tax
@copy_more:
		lda PersonalBestText, x
		sta VRAM_Buffer1, y
		cmp #$ff
		beq @done
		cmp #$fe
		bne @no_time
		txa
	pha
		jsr WriteTime
	pla
		tax
		inx
		bne @copy_more ; Always...
@no_time:
		iny
		inx
		bne @copy_more
@done:
		lda #0
		sta VRAM_Buffer1, y
		sty VRAM_Buffer1_Offset
		rts

GetPbTimeX:
		lda WRAM_LoadedWorld
		ldx BANK_SELECTED
		cpx #BANK_ORG
		beq @not_ext
		ldx IsPlayingExtendedWorlds
		beq @not_ext
		and #$03
		clc
		adc #$09
@not_ext:
	    asl
	    asl
	    asl
	    sta $00
	    lda WRAM_LoadedLevel
	    asl
	    adc $00
	    tax
	    lda BANK_SELECTED
	    cmp #BANK_ORG
	    beq @org
	    lda WRAM_LostTimes, x
	    sta $00
	    lda WRAM_LostTimes+1,x
	    sta $01
	    rts
@org:
	    lda WRAM_OrgTimes, x
	    sta $00
	    lda WRAM_OrgTimes+1, x
	    sta $01
	    rts


RenderIntermediateTime:
		jsr RenderIntermediateTimeInner
		jmp ReturnBank

RenderIntermediateTimeInner:
	    lda WRAM_PracticeFlags
	    and #PF_LevelEntrySaved
	    bne @dontshow
	    lda WRAM_Timer+1
	    beq @dontshow
	    cmp #$FF
	    bne @no_load
	    ldx #3
	    jsr WriteTimeText
	    jmp @resettimer
@no_load:
	    lda WRAM_Timer
	    sta $00
	    lda WRAM_Timer+1
	    sta $01
		ldx #0
		jsr WriteTimeText
	    jsr GetPbTimeX
	    lda $00
	    ora $01
	    bne @checkisrecord
@newrecord:
		lda #Sfx_ExtraLife
		sta Square2SoundQueue
	    lda BANK_SELECTED
	    cmp #BANK_ORG
	    beq @save_org
	    lda WRAM_Timer
	    sta WRAM_LostTimes, x
	    lda WRAM_Timer+1
	    sta WRAM_LostTimes+1, x
	    jmp @printrecord
@save_org:
	    lda WRAM_Timer
	    sta WRAM_OrgTimes, x
	    lda WRAM_Timer+1
	    sta WRAM_OrgTimes+1, x
@printrecord:
	    ldx #2
	    jsr WriteTimeText
	    jmp @resettimer
@checkisrecord:
	    lda WRAM_Timer+1
	    cmp $01
	    bmi @newrecord
	    bne @notarecord
	    lda WRAM_Timer
	    cmp $00
	    bmi @newrecord
@notarecord:
		ldx #1
		jsr WriteTimeText
@resettimer:
	    lda #0
	    sta WRAM_Timer
	    sta WRAM_Timer+1
@dontshow:
    	rts

EndOfCastle:
		lda WRAM_Timer+1
		cmp #$EE ; FUCK HACK
		beq @exit
		ldx WorldNumber
		cpx #World8
		bne @check_ext
@is_end:
		PF_SetToLevelEnd_A
		jsr RenderIntermediateTimeInner
		lda WRAM_PracticeFlags
		ora #PF_LevelEntrySaved
		sta WRAM_PracticeFlags
		lda #$EE
		sta WRAM_Timer+1
		bne @exit
@check_ext:
		lda BANK_SELECTED
		cmp #BANK_ORG
		beq @exit
		lda IsPlayingExtendedWorlds
		beq @exit
		cpx #3 ; World D
		beq @is_end
@exit:
		jmp ReturnBank

