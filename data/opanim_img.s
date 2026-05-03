	.section .rodata

	.global Img_Title_08364AB4
Img_Title_08364AB4: @ 08364AB4
	.incbin "fe6-base.gba", 0x364AB4, (0x3674BC - 0x364AB4) @ length: 2A08

	.global Img_EndingMonologue
Img_EndingMonologue: @ 0836F6D4
	.incbin "fe6-base.gba", 0x36F6D4, (0x373F80 - 0x36F6D4) @ length: 48AC

	.global Tsa_EndingMonologue
Tsa_EndingMonologue: @ 08373F80
	.incbin "fe6-base.gba", 0x373F80, (0x374670 - 0x373F80) @ length: 06F0

	.global Zpal_EndingMonologue
Zpal_EndingMonologue: @ 08374670
	.incbin "fe6-base.gba", 0x374670, (0x3747A4 - 0x374670) @ length: 0134

	.global Img_OpAnimThunderStorm
Img_OpAnimThunderStorm: @ 0837ACD0
	.incbin "fe6-base.gba", 0x37ACD0, (0x37C844 - 0x37ACD0) @ length: 1B74

	.global Tsa_OpAnimThunderStorm
Tsa_OpAnimThunderStorm: @ 0837C844
	.incbin "fe6-base.gba", 0x37C844, (0x37CB0C - 0x37C844) @ length: 02C8

	.global Pal_OpAnimThunderStorm1
Pal_OpAnimThunderStorm1: @ 0837CB0C
	.incbin "fe6-base.gba", 0x37CB0C, (0x37CB2C - 0x37CB0C) @ length: 0020

	.global Pal_OpAnimThunderStorm2
Pal_OpAnimThunderStorm2: @ 0837CB2C
	.incbin "fe6-base.gba", 0x37CB2C, (0x37CB4C - 0x37CB2C) @ length: 0020

	.global Pal_OpAnimThunderStorm3
Pal_OpAnimThunderStorm3: @ 0837CB4C
	.incbin "fe6-base.gba", 0x37CB4C, (0x37CB6C - 0x37CB4C) @ length: 0020

	.global Pal_OpAnimThunderStorm4
Pal_OpAnimThunderStorm4: @ 0837CB6C
	.incbin "fe6-base.gba", 0x37CB6C, (0x37CB8C - 0x37CB6C) @ length: 0020

	.global Img_OpAnim_Dragon
Img_OpAnim_Dragon: @ 0837CB8C
	.incbin "fe6-base.gba", 0x37CB8C, (0x37EEB4 - 0x37CB8C) @ length: 2328

	.global Tsa_Opanim6_0837EEB4
Tsa_Opanim6_0837EEB4: @ 0837EEB4
	.incbin "fe6-base.gba", 0x37EEB4, (0x37F418 - 0x37EEB4) @ length: 0564

	.global Pal_Opanim6_0837F418
Pal_Opanim6_0837F418: @ 0837F418
	.incbin "fe6-base.gba", 0x37F418, (0x37F478 - 0x37F418) @ length: 0060
