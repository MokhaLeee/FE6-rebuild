	.section .rodata

.align 2,0
.global Img_MonologueText
Img_MonologueText: @ 0834658C
	.incbin "vanilla/data/Monologue/Img_MonologueText.4bpp.lz"

.align 2,0
.global Pal_MonologueText
Pal_MonologueText: @ 08349A78
	.incbin "vanilla/data/Monologue/Img_MonologueText.gbapal", 0, 0x20

