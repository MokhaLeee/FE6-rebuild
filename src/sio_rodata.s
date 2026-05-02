.section .rodata

	.global Pal_LinkArenaMuralBackground
Pal_LinkArenaMuralBackground: @ 08109C80
	.incbin "fe6-base.gba", 0x109C80, (0x109CC0 - 0x109C80) @ length: 0040
