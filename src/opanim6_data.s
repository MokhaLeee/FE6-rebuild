	.include "asm_proc.inc"
	.data

	.global ProcScr_OpAnim6
ProcScr_OpAnim6: @ 08691E48
	PROC_MARK 9
	PROC_CALL OpAnim6_StartBGM
	PROC_CALL OpAnim6_PutThunderStormGfx
	PROC_SLEEP 30
	PROC_REPEAT OpAnim6_StartThunderStorm
	PROC_SLEEP 6
	PROC_CALL OpAnim6_PutIdunnGfx
	PROC_SLEEP 1
	PROC_CALL func_fe6_0809AD3C
	PROC_SLEEP 0
	PROC_CALL func_fe6_0809AD64
	PROC_SLEEP 30
	PROC_END

	.global ProcScr_OpAnimThunderStorm
ProcScr_OpAnimThunderStorm: @ 08691EB8
	PROC_CALL OpAnimThunderStorm_Init
	PROC_SLEEP 1
	PROC_CALL OpAnimThunderStorm_PutPal1
	PROC_SLEEP 0
	PROC_CALL OpAnimThunderStorm_PutPal2
	PROC_SLEEP 0
	PROC_CALL OpAnimThunderStorm_PutPal3
	PROC_SLEEP 0
	PROC_CALL OpAnimThunderStorm_PutPal4
	PROC_SLEEP 0
	PROC_CALL OpAnimThunderStorm_PutPal5
	PROC_END
