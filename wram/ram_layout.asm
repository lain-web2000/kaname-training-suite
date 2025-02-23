		.org $6000
		.include "text.inc"

WRAM_StartAddress:
WRAM_Magic:
	.res $04, $00

WRAM_MenuIndex:
	.byte $00
WRAM_PracticeFlags:
	.byte $00
WRAM_CharSet:
	.byte $00
WRAM_MinusWorld:
	.byte $00
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
WRAM_LevelRandomData:
	.res $07, $00
WRAM_LevelFrameRuleData:
	.res $04, $00
WRAM_EnemyData:
	.res $80-(WRAM_EnemyData-WRAM_ToSaveFile), $00
WRAM_LevelData:
	.res $100, $00
WRAM_IsContraMode:
	.word 0

WRAM_Temp:
	.res $64, $00

; Persistent

WRAM_OrgUser0:
	.word 0
WRAM_OrgUser1:
	.word 0
WRAM_LostUser0:
	.word 0
WRAM_LostUser1:
	.word 0
WRAM_NipponUser0:
	.word 0
WRAM_NipponUser1:
	.word 0

WRAM_OrgRules:
	.dword 0, 0, 0, 0 ; World 1
	.dword 0, 0, 0, 0 ; World 2
	.dword 0, 0, 0, 0 ; World 3
	.dword 0, 0, 0, 0 ; World 4
	.dword 0, 0, 0, 0 ; World 5
	.dword 0, 0, 0, 0 ; World 6
	.dword 0, 0, 0, 0 ; World 7
	.dword 0, 0, 0, 0 ; World 8
	.dword 0, 0, 0, 0 ; World 9 (Minus World)

WRAM_LostRules:
	.dword 0, 0, 0, 0 ; World 1
	.dword 0, 0, 0, 0 ; World 2
	.dword 0, 0, 0, 0 ; World 3
	.dword 0, 0, 0, 0 ; World 4
	.dword 0, 0, 0, 0 ; World 5
	.dword 0, 0, 0, 0 ; World 6
	.dword 0, 0, 0, 0 ; World 7
	.dword 0, 0, 0, 0 ; World 8
	.dword 0, 0, 0, 0 ; World 9
	.dword 0, 0, 0, 0 ; World A
	.dword 0, 0, 0, 0 ; World B
	.dword 0, 0, 0, 0 ; World C
	.dword 0, 0, 0, 0 ; World D
	
WRAM_LostRules_L:
	.dword 0, 0, 0, 0 ; World 1
	.dword 0, 0, 0, 0 ; World 2
	.dword 0, 0, 0, 0 ; World 3
	.dword 0, 0, 0, 0 ; World 4
	.dword 0, 0, 0, 0 ; World 5
	.dword 0, 0, 0, 0 ; World 6
	.dword 0, 0, 0, 0 ; World 7
	.dword 0, 0, 0, 0 ; World 8
	.dword 0, 0, 0, 0 ; World 9
	.dword 0, 0, 0, 0 ; World A
	.dword 0, 0, 0, 0 ; World B
	.dword 0, 0, 0, 0 ; World C
	.dword 0, 0, 0, 0 ; World D
	
WRAM_NipponRules:
	.dword 0, 0, 0, 0 ; World 1
	.dword 0, 0, 0, 0 ; World 2
	.dword 0, 0, 0, 0 ; World 3
	.dword 0, 0, 0, 0 ; World 4
	.dword 0, 0, 0, 0 ; World 5
	.dword 0, 0, 0, 0 ; World 6
	.dword 0, 0, 0, 0 ; World 7
	.dword 0, 0, 0, 0 ; World 8
	.dword 0, 0, 0, 0 ; World 9
	.dword 0, 0, 0, 0 ; World A
	.dword 0, 0, 0, 0 ; World B
	.dword 0, 0, 0, 0 ; World C
	.dword 0, 0, 0, 0 ; World D

WRAM_NipponRules_L:
	.dword 0, 0, 0, 0 ; World 1
	.dword 0, 0, 0, 0 ; World 2
	.dword 0, 0, 0, 0 ; World 3
	.dword 0, 0, 0, 0 ; World 4
	.dword 0, 0, 0, 0 ; World 5
	.dword 0, 0, 0, 0 ; World 6
	.dword 0, 0, 0, 0 ; World 7
	.dword 0, 0, 0, 0 ; World 8
	.dword 0, 0, 0, 0 ; World 9
	.dword 0, 0, 0, 0 ; World A
	.dword 0, 0, 0, 0 ; World B
	.dword 0, 0, 0, 0 ; World C
	.dword 0, 0, 0, 0 ; World D
	
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