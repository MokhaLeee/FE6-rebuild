	.section .rodata

.align 2,0
.global Pal_CommGameBgScreenInShop
Pal_CommGameBgScreenInShop: @ 083278AC
	.incbin "fe6-base.gba", 0x3278AC, (0x3278EC - 0x3278AC) @ length: 0040

.align 2,0
.global Tsa_CommGameBgScreenInShop
Tsa_CommGameBgScreenInShop: @ 083278EC
	.incbin "fe6-base.gba", 0x3278EC, (0x3280B0 - 0x3278EC) @ length: 07C4

.align 2,0
.global Img_SaveMenuChapterTitleBgChr
Img_SaveMenuChapterTitleBgChr: @ 083280B0
	.incbin "fe6-base.gba", 0x3280B0, (0x32A130 - 0x3280B0) @ length: 2080

.align 2,0
.global Tsa_SaveMenuSpinDecoration
Tsa_SaveMenuSpinDecoration: @ 0832A130
	.incbin "fe6-base.gba", 0x32A130, (0x32A29C - 0x32A130) @ length: 016C

.align 2,0
.global Img_SupportMenu
Img_SupportMenu: @ 0832A29C
	.incbin "fe6-base.gba", 0x32A29C, (0x32B554 - 0x32A29C) @ length: 12B8

.align 2,0
.global Img_SaveMenuDefaultObjGfx
Img_SaveMenuDefaultObjGfx: @ 0832B554
	.incbin "fe6-base.gba", 0x32B554, (0x32BDE8 - 0x32B554) @ length: 0894

.align 2,0
.global Pal_SupportMenu
Pal_SupportMenu: @ 0832BDE8
	.incbin "fe6-base.gba", 0x32BDE8, (0x32BF28 - 0x32BDE8) @ length: 0140

.align 2,0
.global Img_XmapObj
Img_XmapObj: @ 0832BF28
	.incbin "fe6-base.gba", 0x32BF28, (0x32C33C - 0x32BF28) @ length: 0414

.align 2,0
.global Pal_XmapObj
Pal_XmapObj: @ 0832C33C
	.incbin "fe6-base.gba", 0x32C33C, (0x32C35C - 0x32C33C) @ length: 0020

.align 2,0
.global Pal_SaveMenuObjHighlightCycle
Pal_SaveMenuObjHighlightCycle: @ 0832C35C
	.incbin "fe6-base.gba", 0x32C35C, (0x32C39C - 0x32C35C) @ length: 0040

.align 2,0
.global SpriteAnim_SaveMenuSuspendIcon
SpriteAnim_SaveMenuSuspendIcon: @ 0832C39C
	.incbin "fe6-base.gba", 0x32C39C, (0x32C5E8 - 0x32C39C) @ length: 024C

.align 2,0
.global gUnk_0832C5E8
gUnk_0832C5E8: @ 0832C5E8
	.incbin "fe6-base.gba", 0x32C5E8, (0x32CA9C - 0x32C5E8) @ length: 04B4

.align 2,0
.global gUnk_0832CA9C
gUnk_0832CA9C: @ 0832CA9C
	.incbin "fe6-base.gba", 0x32CA9C, (0x32CAFC - 0x32CA9C) @ length: 0060

.align 2,0
.global gUnk_0832CAFC
gUnk_0832CAFC: @ 0832CAFC
	.incbin "fe6-base.gba", 0x32CAFC, (0x32CC90 - 0x32CAFC) @ length: 0194

.align 2,0
.global gUnk_0832CC90
gUnk_0832CC90: @ 0832CC90
	.incbin "fe6-base.gba", 0x32CC90, (0x32CCB0 - 0x32CC90) @ length: 9FD0
