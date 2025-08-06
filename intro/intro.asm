.export NonMaskableInterrupt

HEAP_SPRITE_OFF = 17*4
PRINCESS_SPRITE_OFF = 53*4
HAND_SPRITE_OFF = 52*4
HEART_SPRITE_OFF = 59*4

LoaderFrameCounter = $30
CurrentHead = $31

CursorY = $200

STAR_INDEX = $700
SEL_INDEX = $701
LDR_MODE = $702 ; ?
SETTINGS_INDEX = $703
LAST_INPUT = $704
SETTINGS_X = $705
RECORD_BUTTONS = $706
RECORD_FRAMES = $707
SETTINGS_ATTR = $708
RECORDS_MODE = $709
RECORDS_TMP = $70A
RECORDS_TMP_HI = $70B
bcdNum = $70C
; bcdNum+1 = $70D
.ifdef ORG
	ContraCodeX = $710
	ContraSoundFrames = $711
.endif

CreditsIndex = $712

FCEUX_Fail = $714

MirrorPPUCTRL = $720
RndSeed = $721

NumHearts = $722

HeartXLow = $723
HeartYLow = $724
HeartVX = $725 ; and 726
HeartVY = $727 ; and 728
; 5x ^

MAX_HEARTS = 4
SEL_START_Y = $9e
CURSOR_SPRITE = $0A
FIRST_HEAD_TILE = $2E
HEART_SPRITE = $18

.ifdef ORG
	.include "smb1.inc"
.else
	.include "smb2.inc"
.endif
	.include "practice.inc"
	.include "macros.inc"
	.include "wram.inc"
	.include "text.inc"

	.include "intro.inc"
	.include "famistudio.inc"

	.org $8000
	.segment "bank1"

.export Start_I

.ifdef ORG
Start:
.endif
Start_I:
		lda #$c0
		sta JOYPAD_PORT+1
		lda #$00
		sta MirrorPPUCTRL
		sta PPU_CTRL_REG1
		;
		; Init Random
		;
		ldx #0
@more_random:
		lda $000, x
		adc $100, x
		adc $200, x
		adc $300, x
		adc $400, x
		adc $500, x
		adc $600, x
		adc $700, x
		dex
		bne @more_random
		sta RndSeed
		;
		; Wait for stable ppu state
		;
wait_vbl0:
		lda PPU_STATUS
		bpl wait_vbl0	
wait_vbl1:
		lda PPU_STATUS
		bpl wait_vbl1
		inx
clear_memory:
		lda #$00
		sta $0000, x
		sta $0100, x
		sta $0300, x
		sta $0400, x
		sta $0500, x
		sta $0600, x
		cpx #<BANK_SELECTED
		beq dont_wipe_bank_selection
		sta $0700, x
dont_wipe_bank_selection:
		lda #$fe
		sta $0200, x
		inx
		bne clear_memory
detect_fceux:			;shoutouts to 100th_coin!
		jsr screen_off 	;disable rendering
		lda #$20
		ldx #$a5
		sta $2006
		sta $2006
		sta $2007  ; write $20 to vram
		stx $2007  ; write $a5 to vram
		sta $2006
		sta $2006
		lda $2007 ; the buffer now holds $20
		ldx #$67
		lda $3ff0, x ; dummy read $3f57 (a mirror of $2007), then read $4057 (open bus emulation is not needed to pass this test!)
		lda $2007    ; if the dummy read was on a mirror of $2007, then the ppu read buffer should be updated, and $a5 is the value to be read next. otherwise, read $20, failing the test.
		bpl test_fail
		;
		; Turn on rendering (Sprites, background)
		;
		lda #$1E
		sta PPU_CTRL_REG2
		bne load_chr
test_fail:
		lda #$1E
		sta PPU_CTRL_REG2
		inc FCEUX_Fail
load_chr:
		ldx #CHR_INTRO_BG
		jsr LoadChrDataFromX
		ldx #CHR_INTRO_SPR
		jsr LoadChrDataFromX
		lda FCEUX_Fail
		bne WarningScreen
		jsr ReadJoypads
		lda SavedJoypadBits
		cmp #Start_Button+Select_Button
		bne NoCredits
WarningScreen:
		jmp PracticeCredits
NoCredits:
		jsr ReadJoypads
		lda SavedJoypadBits
		cmp #A_Button+B_Button
		bne @No_InputLog
		lda #BANK_CHR
		jsr StartBank
@No_InputLog:
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
		jsr enter_loader
		
		ldx #$00
		stx PPU_SCROLL_REG ; No scrolling
		stx PPU_SCROLL_REG
		stx WRAM_IsContraMode ; Reset contra mode on restart
		
		;
		; Enable NMI
		;
		lda #%10001000
		sta MirrorPPUCTRL
		sta PPU_CTRL_REG1
hang:
		jmp hang

MenuPage1:
m_start:
	.byte "START"
m_setting:
	.byte "SETTINGS"
MenuPage2:
m_input:
	.byte "INPUTLOG"
m_blank:
	.byte $24, $24, $24, $24, $24, $24, $24, $24
	
MenuLength:
	.byte m_setting-m_start
	.byte m_input-m_setting
	.byte m_blank-m_input

MenuOffset:
	.byte m_start-m_start
	.byte m_setting-m_start
	.byte m_input-m_start
	.byte m_blank-m_start

draw_menu:
		lda PPU_STATUS
		;
		; Copycopycopycopy
		;
		lda PPU_STATUS
		lda #$22
		sta PPU_ADDRESS
		lda #$8C
		sta PPU_ADDRESS

		ldx CreditsIndex
		ldy MenuLength, x
		lda MenuOffset, x
		tax
@more:
		lda m_start, x
		sta PPU_DATA
		inx
		dey
		bne @more
		sty PPU_SCROLL_REG ; No scrolling
		sty PPU_SCROLL_REG
		ldx #$01
		stx CreditsIndex
draw_menu_2:
		lda PPU_STATUS
		;
		; Copycopycopycopy
		;
		lda PPU_STATUS
		lda #$22
		sta PPU_ADDRESS
		lda #$CC
		sta PPU_ADDRESS

		ldx CreditsIndex
		ldy MenuLength, x
		lda MenuOffset, x
		tax
@more:
		lda m_start, x
		sta PPU_DATA
		inx
		dey
		bne @more
		sty PPU_SCROLL_REG ; No scrolling
		sty PPU_SCROLL_REG
		ldx #$00
@done:
		stx CreditsIndex
		rts
		
CreditsTextYadaYada:
	.byte $20, $6a, "DEVELOPERS", $FF
	.byte $20, $88, "--------------", $FF
	.byte $20, $cc, "WEB2000", $FF
	.byte $21, $08, "SIMPLISTIC6502", $FF
	.byte $21, $89, "ORIGINAL DEVS", $FF
	.byte $21, $a8, "---------------", $FF
	.byte $21, $eb, "PELLSSON", $FF
	.byte $22, $29, "THREECREEPIO", $FF


	.byte $22, $aa, "FORKED FROM", $FF
	.byte $22, $c8, "---------------", $FF
	.byte $23, $01, "HTTP://GITHUB.COM/PELLSSON/SMB", $FF
	.byte $23, $41, "HTTP://GITHUB.COM/", $FF
	.byte $23, $6a, "THREECREEPIO/INPUTLOG", $FF

	.byte $3f, $00, $0f, $30, $fe

PracticeCredits:
			  jsr screen_off
			  jsr InitializeNameTables
			  ldx #$00
			  cmp FCEUX_Fail
			  bne DoAnotherLine
DoAnotherLineDawg:
			  lda CreditsTextYadaYada,x
			  sta PPU_ADDRESS
			  inx
			  lda CreditsTextYadaYada,x
			  sta PPU_ADDRESS
			  inx
MoreTextColonD:
			  lda CreditsTextYadaYada,x
			  inx
			  cmp #$ff
			  beq DoAnotherLineDawg
			  cmp #$fe
			  beq wedone
			  sta PPU_DATA
			  bne MoreTextColonD
wedone:
			  lda #$00
			  sta PPU_SCROLL_REG
			  sta PPU_SCROLL_REG
			  lda #%00001000
			  sta PPU_CTRL_REG1
			  lda #%00001110
			  sta PPU_CTRL_REG2
			  jmp hang
	
DoAnotherLine:
			  lda FCEUXWarningText,x
			  sta PPU_ADDRESS
			  inx
			  lda FCEUXWarningText,x
			  sta PPU_ADDRESS
			  inx
MoreText:
			  lda FCEUXWarningText,x
			  inx
			  cmp #$ff
			  beq DoAnotherLine
			  cmp #$fe
			  beq load_warning
			  sta PPU_DATA
			  bne MoreText

load_warning:
			  lda #$00
			  sta PPU_SCROLL_REG
			  sta PPU_SCROLL_REG
			lda #%00001000
			sta PPU_CTRL_REG1
			lda #%00001110
			sta PPU_CTRL_REG2
@wait_for_input:
			jsr ReadJoypads
			lda SavedJoypadBits
			cmp #Start_Button
			bne @wait_for_input
			jmp NoCredits
			  
FCEUXWarningText:
	.byte $20, $ad, "WARNING", $FF
	.byte $21, $02, "INACCURATE EMULATOR DETECTED", $FF
	.byte $21, $63, "SOME FEATURES MAY NOT WORK", $FF
	.byte $21, $a6, "OR BEHAVE ABNORMALLY.", $FF
	
	.byte $22, $02, "PLEASE CONSIDER SWITCHING TO", $FF
	.byte $22, $44, "A MORE ACCURATE EMULATOR", $FF
	.byte $22, $84, "FOR THE BEST EXPERIENCE.", $FF
	.byte $23, $05, "PRESS START TO CONTINUE", $FF

	.byte $3f, $05, $16, $ff
	.byte $23, $cb, $55, $55, $ff
	.byte $3f, $00, $0f, $30, $fe
			  
InitializeNameTables:
              lda PPU_STATUS            ;reset flip-flop
              lda #$24                  ;set vram address to start of name table 1
              jsr WriteNTAddr
              lda #$20                  ;and then set it to name table 0
WriteNTAddr:  sta PPU_ADDRESS
              lda #$00
              sta PPU_ADDRESS
              ldx #$04                  ;clear name table with blank tile #24
              ldy #$c0
              lda #$24
InitNTLoop:   sta PPU_DATA              ;count out exactly 768 tiles
              dey
              bne InitNTLoop
              dex
              bne InitNTLoop
              ldy #64                   ;now to clear the attribute table (with zero this time)
              txa
              sta VRAM_Buffer1_Offset   ;init vram buffer 1 offset
              sta VRAM_Buffer1          ;init vram buffer 1
InitATLoop:   sta PPU_DATA
              dey
              bne InitATLoop
			  rts

ReadJoypads: 
		lda SavedJoypadBits
		sta LAST_INPUT
		lda #$01
		sta JOYPAD_PORT
		lsr
		sta JOYPAD_PORT
		ldx #$00
		jsr SNESThingy
		inx
SNESThingy:
		ldy #$08
PortLoop:
		pha
		lda JOYPAD_PORT
		sta $00
		lsr
		ora $00
		lsr
		pla
		rol
		dey
		bne PortLoop
		sta SavedJoypadBits, x
		rts

get_random:
        lda RndSeed
        beq @do_eor
        asl
        beq @no_eor
        bcc @no_eor
@do_eor:
		eor #$1d
@no_eor:
		sta RndSeed
		rts

screen_off:
		ldx PPU_STATUS	; Read PPU status to reset the high/low latch
		ldx #$00
		stx PPU_SCROLL_REG ; No scrolling
		stx PPU_SCROLL_REG
		stx PPU_CTRL_REG2 ; No rendering
.ifndef ORG
		lda #$00
		sta MMC3_IRQDisable
.endif

.ifdef PAL
		lda #$00
		sta MMC3_IRQDisable
.endif

		lda MirrorPPUCTRL
		and #$7F
		sta PPU_CTRL_REG1 ; No NMI
		rts

enter_loader:
		jsr screen_off
		lda #SEL_START_Y
		sta CursorY
		lda #0 ; for famistudio_init
		sta SEL_INDEX
		sta LDR_MODE
		ldy #>music_data_
		ldx #<music_data_
		jsr famistudio_init
		lda #0
		jsr famistudio_music_play
		;
		; Install nametable
		;
		write_nt "intro_data"
		;
		; Copy static sprite-data over
		;
		jsr draw_menu
		ldx #$00
copy_more_sprites:
		lda static_sprite_data, x
		sta $200, x
		inx
		bne copy_more_sprites

		;
		; Install palette
		;
		lda PPU_STATUS ; Latch
		lda #$3F
		sta PPU_ADDRESS
		ldx #$00
		stx PPU_ADDRESS
next_palette_entry:
		lda palette_data, x
		sta PPU_DATA
		inx
		cpx #$20
		bne next_palette_entry
		;
		; Init WRAM
		;
		jsr Enter_InitializeWRAM
		
		rts
.ifdef ORG
	ContraCode:
		.byte Up_Dir, Up_Dir, Down_Dir, Down_Dir, Left_Dir, Right_Dir, Left_Dir, Right_Dir, B_Button, A_Button, Start_Button
	ContraCodeEnd:

	ContraFinishSound:
			dex
			stx ContraSoundFrames
			bne @wait_more
			inc WRAM_IsContraMode
			lda #BANK_ORG
			jmp StartBank
	@wait_more:
			jsr famistudio_update
			rti
.endif
NonMaskableInterrupt:
.ifdef ORG
		ldx ContraSoundFrames
		bne ContraFinishSound
.endif
		inc LoaderFrameCounter
		lda MirrorPPUCTRL
		and #$7F
		sta PPU_CTRL_REG1
		;
		; Turn on rendering (Sprites, background)
		;
		lda #$1E
		sta PPU_CTRL_REG2
		;
		; Copy sprite data
		;
		lda PPU_STATUS
		lda #$00
		sta PPU_SPR_ADDR
		lda #$02
		sta SPR_DMA

		jsr ReadJoypads

		ldx LDR_MODE
		beq @run_menu
		dex
		bne @not_settings
		jsr run_settings
		jmp exit_nmi
@not_settings:
		jmp exit_nmi
@run_menu:
		;
		; Rotate star palette
		;
		jsr move_stars_up
@no_move_stars:
		lda LoaderFrameCounter
		and #$07
		bne dont_update_cursor
		lda #$0B
		cmp $201
		bne hide_cursor
		lda #$0A
hide_cursor:
		sta $201
dont_update_cursor:
		;
		; Update sound
		;
		lda WRAM_DisableMusic
		bne @disabled
		jsr famistudio_update
@disabled:
		lda SavedJoypadBits
		cmp LAST_INPUT
		bne @has_input
		jmp exit_nmi
@has_input:
		cmp #0
		beq @handlein
		;
		; Check contra code
		;
.ifdef ORG
		ldx ContraCodeX
		cmp ContraCode, X
.endif
		bne @resetcode
		inx
.ifdef ORG
		stx ContraCodeX
		cpx #(ContraCodeEnd-ContraCode)
.endif
		bne @handlein
		ldx SEL_INDEX
		bne @resetcode
.ifdef ORG
		ldx #45
		stx ContraSoundFrames
.endif
		jsr famistudio_music_stop
		ldy #>sounds
		ldx #<sounds
		jsr famistudio_sfx_init
		ldx #0
		txa
		jsr famistudio_sfx_play
		jmp exit_nmi
@resetcode:
.ifdef ORG
		ldx #0
		stx ContraCodeX
.endif
@handlein:
		cmp #Select_Button
		beq @go_down
		cmp #Down_Dir
		bne @check_up
@go_down:
		lda CursorY
		ldx SEL_INDEX
		inx 
		cpx #2
		bne @no_loop_around
		ldx #0
		lda #SEL_START_Y-16
@no_loop_around:
		clc
		adc #16
@move_cursor:
		sta CursorY
		stx SEL_INDEX
		jmp exit_nmi
@check_up:
		cmp #Up_Dir
		bne @check_start
		lda CursorY
		ldx SEL_INDEX
		dex
		bpl @no_underflow
		ldx #1
		lda #SEL_START_Y+(2*16)
@no_underflow:
		sec
		sbc #16
		jmp @move_cursor
@check_start:
		and #Start_Button
		beq exit_nmi
		ldx SEL_INDEX
		cpx #1
		beq @settings
		lda SavedJoypadBits
		cmp #Start_Button+A_Button
		bne @normal_rules
		lda #$01
		bne @start_game
@normal_rules:
		lda #$00
@start_game:
		sta WRAM_AdvRNG
		jsr famistudio_music_stop ; halt music
		jsr famistudio_update
		lda bank_table, x
		jmp StartBank
@settings:
		jsr enter_settings
exit_nmi:
		;
		; Reset
		;
		lda PPU_STATUS
		;
		; Undo scrolling
		;
		lda #$00
		sta PPU_SCROLL_REG ; No scrolling
		sta PPU_SCROLL_REG
		lda MirrorPPUCTRL
		sta PPU_CTRL_REG1	; Make sure NMI is on...
		rti		

move_stars_up: ; This code is literally lifted from the FDS BIOS (they used bwaaa in 1986 trust me)
		lda $84
		bne gotorotate
		lda #$04
		sta $84
		ldx #$d0
:
		dec $022c,x
		dex
		dex
		dex
		dex
		bne :-
gotorotate:
		dec $84
		ldy #$04
rotate_star_palette:
		ldx $24
		dec $022e,x
		lda #$03
		and $022e,x
		ora #$20
		sta $022e,x
		dex
		dex
		dex
		dex
		bne :+
		ldx #$d0
:
		stx $24
		dey
		bne rotate_star_palette
		rts
			
	.include "nt.asm"

static_sprite_data:
		.byte SEL_START_Y, CURSOR_SPRITE, $09, $50
		.byte $FF, $FF, $09, $50
		.byte $FF, $FF, $09, $50
		.byte $FF, $FF, $09, $50
		.byte $FF, $FF, $09, $50
		.byte $FF, $FF, $09, $50
		.byte $FF, $FF, $09, $50
		.byte $FF, $FF, $09, $50
		.byte $FF, $FF, $09, $50
		.byte $FF, $FF, $09, $50
		.byte $FF, $FF, $09, $50
		.byte $FF, $FF, $09, $50
		.incbin "stars-init.bin"

palette_data:
		.byte $0f, $01, $00, $01
		.byte $0f, $02, $02, $0f 
.ifdef ORG
	.ifndef PAL
		.byte $0f, $30, $25, $05
	.else
		.byte $0f, $30, $27, $07
	.endif
.elseif .defined(LOST)
		.byte $0f, $30, $2c, $0c
.else
		.byte $0f, $30, $26, $06
.endif
		.byte $0f, $10, $00, $16
palette_star_shuffle:
		.byte $0f, $27, $16, $01
		.byte $0f, $27, $30, $1a
		.byte $0f, $0f, $01, $0f
		.byte $0f, $0f, $0f, $0f

bank_table:

.ifdef ORG
		.byte BANK_ORG
.elseif .defined(LOST)
		.byte BANK_SMBLL
.else
		.byte BANK_ANN
.endif
		
	.include "settings.asm"
	.include "famistudio_ca65.s"
	.include "star_maze.s"
	.include "konami_pause.s"

	.res $C000 - *, $FF