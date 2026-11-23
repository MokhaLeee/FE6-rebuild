    .section .rodata

.align 2,0
.global Img_UiArenaBG
Img_UiArenaBG: @ 082D80B0
    .incbin "fe6-base.gba", 0x2D80B0, (0x2DAC8C - 0x2D80B0) @ length: 2BDC

.align 2,0
.global Tsa_UiArenaBG
Tsa_UiArenaBG: @ 082DAC8C
    .incbin "fe6-base.gba", 0x2DAC8C, (0x2DB140 - 0x2DAC8C) @ length: 04B4

.align 2,0
.global Pal_UiArenaBG
Pal_UiArenaBG: @ 082DB140
    .incbin "fe6-base.gba", 0x2DB140, (0x2DB1C0 - 0x2DB140) @ length: 0080
