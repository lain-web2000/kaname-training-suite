		.org $6000
		.include "text.inc"

WRAM_StartAddress:
WRAM_Magic:
	.res $04, $00

WRAM_MenuIndex:
	.byte $00
WRAM_PracticeFlags:
	.byte $00
WRAM_SelectedSlot:
	.byte $00
	
.ifdef ORG
	WRAM_MinusWorld:
		.byte $00
.endif

WRAM_DelaySaveFrames:
	.byte $00
WRAM_DelayUserFrames:
	.byte $00
WRAM_SaveFramesLeft:
	.byte $00
WRAM_UserFramesLeft:
	.byte $00
WRAM_SaveStateBank:
	.byte $00
WRAM_DisableMusic:
	.byte $00
WRAM_DisableSound:
	.byte $00
WRAM_SaveButtons:
	.byte $00
WRAM_LoadButtons:
	.byte $00
WRAM_TitleButtons:
	.byte $00
WRAM_RestartButtons:
	.byte $00
WRAM_IRQUpdateFlag:
	.byte $00

WRAM_ToSaveFile:
WRAM_LoadedLevel:
	.byte $00
WRAM_LoadedWorld:
	.byte $00
WRAM_FetchNewGameTimerFlag:
	.byte $00
WRAM_LevelAreaPointer:
	.byte $00
WRAM_LevelEntrancePage:
	.byte $00
WRAM_LevelAreaType:
	.byte $00
WRAM_LevelIntervalTimerControl:
	.byte $00
WRAM_LevelFrameCounter:
	.byte $00
WRAM_LevelPlayerStatus:
	.byte $00
WRAM_LevelPlayerSize:
	.byte $00
WRAM_EntrySockTimer:
	.byte $00
WRAM_AreaSockTimer:
	.byte $00
WRAM_CoinTally:
	.byte $00
WRAM_CoinDisplay:
	.byte $00, $00
WRAM_LevelRandomData:
	.res $07, $00
WRAM_LevelFrameRuleData:
	.res $04, $00
WRAM_EnemyData:
	.res $100, $00
WRAM_LevelData:
	.res $100, $00
WRAM_IsContraMode:
	.word 0

WRAM_Temp:
	.res $64, $00

; Persistent

WRAM_UserVarA:
	.word 0
WRAM_UserVarB:
	.word 0

WRAM_RuleSlot1:
	.word 0, 0, 0, 0 ; World 1
	.word 0, 0, 0, 0 ; World 2
	.word 0, 0, 0, 0 ; World 3
	.word 0, 0, 0, 0 ; World 4
	.word 0, 0, 0, 0 ; World 5
	.word 0, 0, 0, 0 ; World 6
	.word 0, 0, 0, 0 ; World 7
	.word 0, 0, 0, 0 ; World 8
.ifndef ANN
	.word 0, 0, 0, 0 ; World 9
.endif
.ifndef ORG
	.word 0, 0, 0, 0 ; World A
	.word 0, 0, 0, 0 ; World B
	.word 0, 0, 0, 0 ; World C
	.word 0, 0, 0, 0 ; World D
.endif

WRAM_RuleSlot2:
	.word 0, 0, 0, 0 ; World 1
	.word 0, 0, 0, 0 ; World 2
	.word 0, 0, 0, 0 ; World 3
	.word 0, 0, 0, 0 ; World 4
	.word 0, 0, 0, 0 ; World 5
	.word 0, 0, 0, 0 ; World 6
	.word 0, 0, 0, 0 ; World 7
	.word 0, 0, 0, 0 ; World 8
.ifndef ANN
	.word 0, 0, 0, 0 ; World 9
.endif
.ifndef ORG
	.word 0, 0, 0, 0 ; World A
	.word 0, 0, 0, 0 ; World B
	.word 0, 0, 0, 0 ; World C
	.word 0, 0, 0, 0 ; World D
.endif

WRAM_RuleSlot3:
	.word 0, 0, 0, 0 ; World 1
	.word 0, 0, 0, 0 ; World 2
	.word 0, 0, 0, 0 ; World 3
	.word 0, 0, 0, 0 ; World 4
	.word 0, 0, 0, 0 ; World 5
	.word 0, 0, 0, 0 ; World 6
	.word 0, 0, 0, 0 ; World 7
	.word 0, 0, 0, 0 ; World 8
.ifndef ANN
	.word 0, 0, 0, 0 ; World 9
.endif
.ifndef ORG
	.word 0, 0, 0, 0 ; World A
	.word 0, 0, 0, 0 ; World B
	.word 0, 0, 0, 0 ; World C
	.word 0, 0, 0, 0 ; World D
.endif

WRAM_RuleSlot4:
	.word 0, 0, 0, 0 ; World 1
	.word 0, 0, 0, 0 ; World 2
	.word 0, 0, 0, 0 ; World 3
	.word 0, 0, 0, 0 ; World 4
	.word 0, 0, 0, 0 ; World 5
	.word 0, 0, 0, 0 ; World 6
	.word 0, 0, 0, 0 ; World 7
	.word 0, 0, 0, 0 ; World 8
.ifndef ANN
	.word 0, 0, 0, 0 ; World 9
.endif
.ifndef ORG
	.word 0, 0, 0, 0 ; World A
	.word 0, 0, 0, 0 ; World B
	.word 0, 0, 0, 0 ; World C
	.word 0, 0, 0, 0 ; World D
.endif

WRAM_RuleSlot5:
	.word 0, 0, 0, 0 ; World 1
	.word 0, 0, 0, 0 ; World 2
	.word 0, 0, 0, 0 ; World 3
	.word 0, 0, 0, 0 ; World 4
	.word 0, 0, 0, 0 ; World 5
	.word 0, 0, 0, 0 ; World 6
	.word 0, 0, 0, 0 ; World 7
	.word 0, 0, 0, 0 ; World 8
.ifndef ANN
	.word 0, 0, 0, 0 ; World 9
.endif
.ifndef ORG
	.word 0, 0, 0, 0 ; World A
	.word 0, 0, 0, 0 ; World B
	.word 0, 0, 0, 0 ; World C
	.word 0, 0, 0, 0 ; World D
.endif

WRAM_AdvRNGSlot:
	.word 0, 0, 0, 0 ; World 1
	.word 0, 0, 0, 0 ; World 2
	.word 0, 0, 0, 0 ; World 3
	.word 0, 0, 0, 0 ; World 4
	.word 0, 0, 0, 0 ; World 5
	.word 0, 0, 0, 0 ; World 6
	.word 0, 0, 0, 0 ; World 7
	.word 0, 0, 0, 0 ; World 8
.ifndef ANN
	.word 0, 0, 0, 0 ; World 9
.endif
.ifndef ORG
	.word 0, 0, 0, 0 ; World A
	.word 0, 0, 0, 0 ; World B
	.word 0, 0, 0, 0 ; World C
	.word 0, 0, 0, 0 ; World D
.endif
	
WRAM_Timer:
	.word 0
;
; Number of stars collected
;
WRAM_LostStart:
	
	GamesBeatenCount:
		.byte $24

	LeavesXPosCopy:
		.res $0c, $00
	LeavesYPosCopy:
		.res $0c, $00
	
WRAM_LostEnd:

WRAM_SaveLost:
		.res WRAM_LostEnd - WRAM_LostStart, $00

WRAM_SaveRAM:
		.res $800, $00

WRAM_SaveWRAM:
		.res $80, $00
WRAM_SaveLevel:
		.res $100, $00

WRAM_SaveNT:
		.res $800, $00

WRAM_SavePAL:
		.res $20, $00

WRAM_StoredInputs:
        .res $0b, $00
		
BANK_SELECTED:
		.byte $00