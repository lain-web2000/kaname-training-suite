SaveFramesLeft = $013a
UserFramesLeft = $013b

.define PF_SockMode $01 ; Todo move elsewhere...
.define PF_SaveState $02
.define PF_LoadState $04
.define PF_RestartLevel $08
.define PF_LevelEntrySaved $10
.define PF_DisablePracticeInfo $20
.define PF_EnableInputDisplay $40

.macro PF_SetToLevelEnd_A
	lda WRAM_PracticeFlags
	and #(PF_LevelEntrySaved^$FF)
	sta WRAM_PracticeFlags
.endmacro

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
	CHR_SM2CHARSET = 4
.else
	CHR_SM2CHAR1 = 2
	CHR_SM2CHAR2 = 3
	CHR_SM1CHARSET = 4
.endif

SavedRule = $07d9
RuleIndex = $0717 ; Previously DemoAction (can be changed to temp?)
PowerUps = $07e3 ; Previously unused
CategorySelect = $07e4
CurrentRule = $7df

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

