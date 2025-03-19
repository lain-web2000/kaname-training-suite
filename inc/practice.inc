;-------------------------------------------------------------------------------------
; MMC3 Registers
MMC3_BankSelect		  = $8000
MMC3_BankData		  = $8001
MMC3_Mirroring		  = $a000
MMC3_PRGRAMProtect    = $a001

MMC3_IRQLatch		  = $c000
MMC3_IRQReload		  = $c001
MMC3_IRQDisable		  = $e000
MMC3_IRQEnable		  = $e001

;-------------------------------------------------------------------------------------
;
;Practice ROM stuff

SaveFramesLeft = $013a
UserFramesLeft = $013b
FrameruleNumber = $07d7 ;replaced by rule numbers

LastInputBits				= $075a ; Previously NumberOfLives
FrameRuleData				= $07df ; Previously in score somewhere

SavedRule = $07d9
RuleIndex = $0717 ; Previously DemoAction (can be changed to temp?)
PowerUps = $07e3 ; Previously unused
CategorySelect = $07e4
CurrentRule = $7df

.define PF_SockMode $01 ; Todo move elsewhere...
.define PF_SaveState $02
.define PF_LoadState $04
.define PF_RestartLevel $08
.define PF_LevelEntrySaved $10
.define PF_DisablePracticeInfo $20
.define PF_EnableInputDisplay $40

RULE_COUNT_OFFSET = $0b

TITLE_INIT		= $01

BANK_LOADER		= 0
BANK_COMMON		= 4
BANK_CHR		= 8

.ifdef ORG
	BANK_ORGDATA	= 10
	BANK_ORG		= 12
.elseif .defined(LOST)
	BANK_LLDATA		= 10
	BANK_SMBLL		= 12
.else
	BANK_ANNDATA	= 10
	BANK_ANN		= 12
.endif

CHR_INTRO_BG = 0
CHR_INTRO_SPR = 1
.ifdef ORG
	CHR_SM1CHAR1 = 2
	CHR_SM1CHAR2 = 3
.else
	CHR_SM2CHAR1 = 2
	CHR_SM2CHAR2 = 3
.endif

.ifndef RESTART_LEVEL_BUTTONS
	.define RESTART_LEVEL_BUTTONS Select_Button|Up_Dir
.endif

.ifndef RESTART_GAME_BUTTONS
	.define RESTART_GAME_BUTTONS Select_Button|Down_Dir
.endif

.ifndef SAVE_STATE_BUTTONS
	.define SAVE_STATE_BUTTONS Select_Button|Right_Dir
.endif

.ifndef LOAD_STATE_BUTTONS
	.define LOAD_STATE_BUTTONS Select_Button|Left_Dir
.endif