
	.section .rodata

	BEGIN = 0x0F9998
	END   = 0x0F9C18

 .ALIGN 2, 0
.global gSinLut
gSinLut: @ 080F9998
	.incbin "fe6-base.gba", BEGIN, (END - BEGIN)
