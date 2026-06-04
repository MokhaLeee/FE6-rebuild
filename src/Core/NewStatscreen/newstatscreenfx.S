.section .rodata.statscreen

.align 2, 0
.global Tsa_Mss_Upper
Tsa_Mss_Upper:
	.incbin "graphics/statscreen/Tsa_Mss_Upper.dmp.lz"

.align 2, 0
.global Tsa_Mss_Left
Tsa_Mss_Left:
	.incbin "graphics/statscreen/Tsa_Mss_Left.dmp.lz"

.align 2, 0
.global Tsa_Mss_Right
Tsa_Mss_Right:
	.incbin "graphics/statscreen/Tsa_Mss_Right.dmp.lz"

.align 2, 0
.global Img_MssUI
Img_MssUI:
	.incbin "graphics/statscreen/ModernStatScreen_UI.4bpp.lz"

.align 2, 0
.global Pal_MssUI
Pal_MssUI:
	.incbin "graphics/statscreen/ModernStatScreen_UI.gbapal", 0, 0x20

.align 2, 0
.global Img_MssUI2
Img_MssUI2:
	.incbin "graphics/statscreen/ModernStatScreen_UI2.4bpp.lz"

.align 2, 0
.global Pal_MssUI2
Pal_MssUI2:
	.incbin "graphics/statscreen/ModernStatScreen_UI2.gbapal", 0, 0x20

.align 2, 0
.global Img_MssSprites
Img_MssSprites:
	.incbin "graphics/statscreen/ModernStatScreen_Spirtes.4bpp.lz"
