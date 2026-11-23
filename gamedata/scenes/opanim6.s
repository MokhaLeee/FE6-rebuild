	.include "asm_proc.inc"
	.data

.align 2,0
.global gTitleDuration
gTitleDuration: @ 08692118
	.4byte 0x348

.align 2,0
.global gTitleSwordSlideInDuration
gTitleSwordSlideInDuration: @ 0869211C
	.4byte 0x1E

.align 2,0
.global gTitleLogoFadeInDuration
gTitleLogoFadeInDuration: @ 08692120
	.4byte 0x1E

.align 2,0
.global gTitleLogoShadowDuration
gTitleLogoShadowDuration: @ 08692124
	.4byte 0x20

.align 2,0
.global gTitleLensFlareDuration
gTitleLensFlareDuration: @ 08692128
	.4byte 0x30

.align 2,0
.global gTitleSwordDelay
gTitleSwordDelay: @ 0869212C
	.4byte 0x10

.align 2,0
.global ProcScr_TitleScreenFromOp
ProcScr_TitleScreenFromOp: @ 08692130
	PROC_MARK 9
	PROC_ONEND Title_End
	PROC_CALL Title_EndIfOpAnimSkipped
	PROC_CALL Title_Init
	PROC_CALL StartMidFadeFromBlack
	PROC_REPEAT WhileFadeExists
	PROC_CALL Title_StartLogoFadeIn
	PROC_REPEAT Title_LogoFadeIn
	PROC_START_CHILD ProcScr_TitleLensFlare
	PROC_START_CHILD_LOCKING ProcScr_TitleSwordDelay
	PROC_START_CHILD_LOCKING ProcScr_TitleSwordSlideIn
	PROC_SLEEP 0
	PROC_CALL Title_InitDisp
	PROC_END_EACH ProcScr_TitleLensFlare
	PROC_CALL Title_PlayRevealSe
	PROC_CALL Title_StartBgm
	PROC_CALL func_fe6_08014934
	PROC_SLEEP 0
	PROC_CALL Title_ReinitTimer
	PROC_REPEAT Title_Idle
	PROC_CALL FadeInBlackWithCallBack_Speed20
	PROC_SLEEP 0
	PROC_END
