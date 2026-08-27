    .section .content_data

.align 2,0
.global Img_StatScreenSprites
Img_StatScreenSprites:
    @ Img_Statscreen_083080D0
    .incbin "fe6-base.gba", 0x3080D0, (0x3087C8 - 0x3080D0) @ length: 06F8

.align 2,0
.global Pal_StatscreenPageNameFlashing
Pal_StatscreenPageNameFlashing: @ 083087C8
	.incbin "fe6-base.gba", 0x3087C8, (0x308920 - 0x3087C8) @ length: 0158
