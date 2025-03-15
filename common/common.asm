
	.include "shared.inc"
	.include "mario.inc"
	.include "macros.inc"
	.include "text.inc"

	.org $8000
	.segment "bank4"

	.ifndef ENABLE_SFX
      .define ENABLE_SFX 1
    .endif

    .ifndef ENABLE_MUSIC
      .define ENABLE_MUSIC 1
    .endif

Start:	; Dummy
NonMaskableInterrupt: ; Dummy

	.include "utils.inc"
.ifdef ORG
	.include "sound.asm"
.else
	.include "sound-ll.asm"
.endif
	.include "game.asm"
	.include "pausemenu.asm"
	.include "practice.asm"

	.export PracticeInit
	.export InitializeWRAM
	.export ForceUpdateSockHash
	.export PracticeOnFrame
	.export PracticeTitleMenu
.ifdef ORG
	.export SoundEngineExternal
.endif
	.export ProcessLevelLoad
	.export LoadPhysicsData
	.export LoadMarioPhysics
	.export RedrawUserVars
	.export RedrawAll
	.export HideRemainingFrames
	.export UpdateFrameRule
	.export WritePracticeTop
	.export RedrawFrameNumbers
	.export RedrawSockTimer
	.export SetDefaultWRAM
	.export FactoryResetWRAM
	.export UpdateGameTimer

.ifndef ORG
	.res $C000 - *, $FF
.else
	practice_callgate
	control_bank
.endif
