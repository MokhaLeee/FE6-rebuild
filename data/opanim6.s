	.include "asm_proc.inc"
	.data

	.global gTitleDuration
gTitleDuration: @ 08692118
	.4byte 0x348

	.global gUnk_0869211C
gUnk_0869211C: @ 0869211C
	.4byte 0x1E

	.global gUnk_08692120
gUnk_08692120: @ 08692120
	.4byte 0x1E

	.global gUnk_08692124
gUnk_08692124: @ 08692124
	.4byte 0x20

	.global gUnk_08692128
gUnk_08692128: @ 08692128
	.4byte 0x30

	.global gUnk_0869212C
gUnk_0869212C: @ 0869212C
	.4byte 0x10

	.global ProcScr_TitleScreenFromOp
ProcScr_TitleScreenFromOp: @ 08692130
	PROC_MARK 9
	PROC_ONEND Title_End
	PROC_CALL func_fe6_0809B378
	PROC_CALL Title_Init
	PROC_CALL StartMidFadeFromBlack
	PROC_REPEAT WhileFadeExists
	PROC_CALL func_fe6_0809B590
	PROC_REPEAT func_fe6_0809B608
	PROC_START_CHILD ProcScr_Title_086922C8
	PROC_START_CHILD_LOCKING ProcScr_Title_08692268
	PROC_START_CHILD_LOCKING ProcScr_Title_08692280
	PROC_SLEEP 0
	PROC_CALL Title_InitDisp
	PROC_END_EACH ProcScr_Title_086922C8
	PROC_CALL func_fe6_0809BB00
	PROC_CALL Title_StartBgm
	PROC_CALL func_fe6_08014934
	PROC_SLEEP 0
	PROC_CALL Title_ReinitTimer
	PROC_REPEAT Title_Idle
	PROC_CALL FadeInBlackWithCallBack_Speed20
	PROC_SLEEP 0
	PROC_END
