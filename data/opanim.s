	.include "asm_proc.inc"
	.data

	.global gUnk_08691644
gUnk_08691644: @ 08691644
	.incbin "fe6-base.gba", 0x691644, (0x6916E5 - 0x691644) @ length: 00A1

	.global gUnk_086916E5
gUnk_086916E5: @ 086916E5
	.incbin "fe6-base.gba", 0x6916E5, (0x691738 - 0x6916E5) @ length: 0053

	.global Msgs_OpAnim_08691738
Msgs_OpAnim_08691738: @ 08691738
	.incbin "fe6-base.gba", 0x691738, (0x691778 - 0x691738) @ length: 0040

	.global gOpAnimSubtitleConf
gOpAnimSubtitleConf: @ 08691778
	.incbin "fe6-base.gba", 0x691778, (0x6917D8 - 0x691778) @ length: 0060

	.global ProcScr_OpAnimSubtitleDisp
ProcScr_OpAnimSubtitleDisp: @ 086917D8
	PROC_MARK 9
	PROC_CALL OpAnimSubtitleDisp_Init
	PROC_REPEAT OpAnimSubtitleDisp_Wait
	PROC_SLEEP 0
	PROC_CALL OpAnimSubtitleDisp_Setup
	PROC_REPEAT OpAnimSubtitleDisp_Loop
	PROC_END

	.global NewOpAnimSubtitleIntroDisp
NewOpAnimSubtitleIntroDisp: @ 08691858
	PROC_MARK 9
	PROC_SLEEP 0
	PROC_CALL func_fe6_08098F68
	PROC_REPEAT func_fe6_080990B8
	PROC_CALL func_fe6_080990E4
	PROC_REPEAT func_fe6_080990F0
	PROC_END

	.global ProcScr_08691890
ProcScr_08691890: @ 08691890
	PROC_SLEEP 0
	PROC_CALL func_fe6_08099534
	PROC_REPEAT func_fe6_08099540
	PROC_END

	.global gUnk_086918B0
gUnk_086918B0: @ 086918B0
	.incbin "fe6-base.gba", 0x6918B0, (0x691930 - 0x6918B0) @ length: 0270
