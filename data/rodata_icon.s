
	.section .rodata

.align 2,0
.global Img_FactionMiniCard
Img_FactionMiniCard: @ 080FEDC0
	.incbin "fe6-base.gba", 0x0FEDC0, (0x0FFBC0 - 0x0FEDC0)

.align 2,0
.global Pal_FactionMiniCard
Pal_FactionMiniCard: @ 080FFBC0
	.incbin "fe6-base.gba", 0x0FFBC0, (0x0FFC00 - 0x0FFBC0)
