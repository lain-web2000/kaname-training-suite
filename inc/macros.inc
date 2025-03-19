.macro lsr_by n
	.repeat n, i
		lsr
	.endrep
.endmacro

.macro DoUpdateSockHash
		.local @dont_render
		lda WRAM_PracticeFlags
		and #PF_SockMode
	.ifndef ORG
		beq @dont_render	;enable RULE as default on SMB2J and Nippon
	.else
		bne @dont_render	;enable SOCK as default on SMB1
	.endif
		lda IntervalTimerControl
		and #3
		cmp #2
		bne @dont_render
		jsr Enter_ForceUpdateSockHash
	@dont_render:
.endmacro

.macro PF_SetToLevelEnd_A
	lda WRAM_PracticeFlags
	and #(PF_LevelEntrySaved^$FF)
	sta WRAM_PracticeFlags
.endmacro