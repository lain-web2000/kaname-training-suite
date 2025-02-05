.macro lsr_by n
	.repeat n, i
		lsr
	.endrep
.endmacro

.macro DoUpdateSockHash
		.local @dont_render
		lda WRAM_PracticeFlags
		and #PF_SockMode
		beq @dont_render
		lda IntervalTimerControl
		and #3
		cmp #2
		bne @dont_render
		jsr Enter_ForceUpdateSockHash
	@dont_render:
.endmacro

.macro practice_callgate
	.res $FE00 - *, $EA

	Enter_EndOfCastle:
		lda #BANK_COMMON
		jsr SetBankFromA
		jmp EndOfCastle

	Enter_RenderIntermediateTime:
		lda #BANK_COMMON
		jsr SetBankFromA
		jmp RenderIntermediateTime

	Enter_FrameToTime:
		lda #BANK_COMMON
		jsr SetBankFromA
		jmp FrameToTime

	Enter_UpdateGameTimer:
		lda #BANK_COMMON
		jsr SetBankFromA
		jmp UpdateGameTimer

	Enter_InitializeWRAM:
		lda #BANK_COMMON
		jsr SetBankFromA
		jmp InitializeWRAM

	Enter_SetDefaultWRAM:
		lda #BANK_COMMON
		jsr SetBankFromA
		jmp SetDefaultWRAM

	Enter_FactoryResetWRAM:
		lda #BANK_COMMON
		jsr SetBankFromA
		jmp FactoryResetWRAM

	Enter_RedrawSockTimer:
		lda #BANK_COMMON
		jsr SetBankFromA
		jmp RedrawSockTimer

	Enter_PracticeInit:
		lda #BANK_COMMON
		jsr SetBankFromA
		jmp PracticeInit

	Enter_ForceUpdateSockHash:
		lda #BANK_COMMON
		jsr SetBankFromA
		jmp ForceUpdateSockHash

	Enter_PracticeOnFrame:
		lda #BANK_COMMON
		jsr SetBankFromA
		jmp PracticeOnFrame

	Enter_PracticeTitleMenu:
		lda #BANK_COMMON
		jsr SetBankFromA
		jmp PracticeTitleMenu

	Enter_UpdateFrameRule:
		lda #BANK_COMMON
		jsr SetBankFromA
		jmp UpdateFrameRule

	Enter_WritePracticeTop:
		lda #BANK_COMMON
		jsr SetBankFromA
		jmp WritePracticeTop

	Enter_RedrawUserVars:
		lda #BANK_COMMON
		jsr SetBankFromA
		jmp RedrawUserVars

	Enter_RedrawAll:
		lda #BANK_COMMON
		jsr SetBankFromA
		jmp RedrawAll

	Enter_RedrawFrameNumbers:
		lda #BANK_COMMON
		jsr SetBankFromA
		jmp RedrawFrameNumbers

	Enter_ProcessLevelLoad:
		lda #BANK_COMMON
		jsr SetBankFromA
		jmp ProcessLevelLoad

	Enter_LoadPhysicsData:
		lda #BANK_COMMON
		jsr SetBankFromA
		jmp LoadPhysicsData

	Enter_LoadMarioPhysics:
		lda #BANK_COMMON
		jsr SetBankFromA
		jmp LoadMarioPhysics

	Enter_LL_GetAreaDataAddrs:
		lda #BANK_LLDATA
		jsr Set16KBankFromA
		jsr GetAreaDataAddrs
		lda #BANK_SMBLL
		jmp Set16KBankFromA

	Enter_LL_GetAreaPointer:
		lda #BANK_LLDATA
		jsr Set16KBankFromA
		jsr GetAreaPointer
		lda #BANK_SMBLL
		jmp Set16KBankFromA
		
	Enter_LL_LoadAreaPointer:
		lda #BANK_LLDATA
		jsr Set16KBankFromA
		jsr LoadAreaPointer
		lda #BANK_SMBLL
		jmp Set16KBankFromA
		
.endmacro


.macro scenarios_callgate
	.res $FE00 - *, $EA
	Enter_ScenLoadArea:
		lda #BANK_SCEN_DATA
		jsr SetBankFromA
		jmp ScenLoadArea

	Enter_ScenReset:
		lda #BANK_SCEN_DATA
		jsr SetBankFromA
		jmp ScenReset

	Enter_ScenUpdateSelected:
		lda #BANK_SCEN_DATA
		jsr SetBankFromA
		jmp ScenUpdateSelected

	Enter_ScenValidate:
		lda #BANK_SCEN_DATA
		jsr SetBankFromA
		jmp ScenValidate

.endmacro

;
; Lower banks
; 
.macro control_bank
	.res $FF00 - *, $EA

	Enter_SoundEngine:
		lda #BANK_COMMON
		jsr SetBankFromA
		jmp SoundEngineExternal

	ReturnBank:
		lda BANK_SELECTED
		jmp SetBankFromA

	SetChrBank0FromA:
		sta $5123
		rts

	SetChrBank1FromA:
		sta $5127
		rts

	SetChrBanksFromAX:
		jsr SetChrBank0FromA
		txa
		jmp SetChrBank1FromA

	Set16KBankFromA:
		clc
		ora #$80
		sta $5115
		rts
		
	SetBankFromA:
		clc
		ora #$80
		sta $5115
		adc #$2
		sta $5117
		rts

	MapperReset:
		;
		; Clear MMC5 state
		;
		sei
		cld
		ldx #$FF
		txs
		lda #%01000000
		sta $4017 ;No more APU IRQ, stinky.
		ldx #$02
		stx $5102 ;Enable writing to PRG-RAM
		dex
		stx $5103 ;Enable writing to PRG-RAM
		stx $5101 ;Use CHR mode 1 (4K CHR Bankswitching)
		stx $5100 ;Use PRG mode 0 (2x16K PRG Bankswitching)
		dex
		stx $5104
		stx $5113
		stx BANK_SELECTED
		jsr SetBankFromA
		lda #$44
		sta $5105
		jmp Start

DelayLoop:
	sbc #$01
	bcs DelayLoop
	pla
	rts		
DelayIRQ:
	pha
	lda #$0e
	sec
	sbc #$01
	bcs DelayLoop
	pla
	rts

	
InterruptRequest:
	sei
	php                      ;save regs
	pha
	txa
	pha
	tya
	pha
	jsr DelayIRQ
    ldy #$06                 ;delay for right part of scanline 31 (LMAO MMC5 ON EDN8 WANTS A WORD WITH YOU)
DelS:
	dey
    bne DelS
	lda $5204      		     ;disable IRQs for the rest of the frame
	lda Mirror_PPU_CTRL_REG1
	and #%11110110           ;mask out sprite address and nametable             
	ora $77a      	 		 ;mask in whatever's set here
	sta Mirror_PPU_CTRL_REG1  ;update the register and its mirror
	sta PPU_CTRL_REG1
	lda #$00
	lda $5204      		     ;disable IRQs for the rest of the frame
	lda HorizontalScroll
	sta PPU_SCROLL_REG       ;set scroll regs for the screen under the status bar
	lda VerticalScroll       ;to achieve the split screen effect
	sta PPU_SCROLL_REG
	lda #$00
	sta $77b           		 ;indicate IRQ was acknowledged
	pla
	tay                      ;return regs, reenable IRQs and leave
	pla
	tax
	pla
	plp
	cli
	rti

StartBank:
		sta BANK_SELECTED
		ldx #$00
		stx PPU_CTRL_REG1
		stx PPU_CTRL_REG2
		jsr SetBankFromA
		jmp Start
		
		.res $FFFA - *, $ea
		;
		; Interrupt table
		;
		.word NonMaskableInterrupt
		.word MapperReset
		.word InterruptRequest
.endmacro
