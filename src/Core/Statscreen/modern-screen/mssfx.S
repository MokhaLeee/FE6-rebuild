.section .rodata.statscreen

.align 2, 0
.global Tsa_Mss_Upper
Tsa_Mss_Upper:
	.incbin "contents/statscreen/Modern/Tsa_Mss_Upper.dmp.lz"

.align 2, 0
.global Tsa_Mss_Left
Tsa_Mss_Left:
	.incbin "contents/statscreen/Modern/Tsa_Mss_Left.dmp.lz"

.align 2, 0
.global Tsa_Mss_Right
Tsa_Mss_Right:
	.incbin "contents/statscreen/Modern/Tsa_Mss_Right.dmp.lz"

.align 2, 0
.global Img_MssUI
Img_MssUI:
	.incbin "contents/statscreen/Modern/ModernStatScreen_UI.4bpp.lz"

.align 2, 0
.global Pal_MssUI
Pal_MssUI:
	.incbin "contents/statscreen/Modern/ModernStatScreen_UI.gbapal", 0, 0x20

.align 2, 0
.global Img_MssUI2
Img_MssUI2:
	.incbin "contents/statscreen/Modern/ModernStatScreen_UI2.4bpp.lz"

.align 2, 0
.global Pal_MssUI2
Pal_MssUI2:
	.incbin "contents/statscreen/Modern/ModernStatScreen_UI2.gbapal", 0, 0x20

.align 2, 0
.global Img_MssSprites
Img_MssSprites:
	.incbin "contents/statscreen/Modern/ModernStatScreen_Spirtes.4bpp.lz"

.align 2, 0
.global Img_MssTitles
Img_MssTitles:
	.incbin "contents/statscreen/Modern/ModernStatScreen_Titles.4bpp.lz"

.align 2, 0
.global Pal_MssTitles
Pal_MssTitles:
	.incbin "contents/statscreen/Modern/ModernStatScreen_Titles.gbapal", 0, 0x20

.align 2, 0
.global Img_MssTitleLetters
Img_MssTitleLetters:
	.incbin "contents/statscreen/Modern/ModernStatScreen_TitleLetters.4bpp.lz"

.align 2, 0
.global Pal_MssTitleLetters
Pal_MssTitleLetters:
	.incbin "contents/statscreen/Modern/ModernStatScreen_TitleLetters.gbapal", 0, 0x20
