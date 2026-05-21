	.section .content_data

.align 2,0
.global Img_Icons
Img_Icons:
	#incbin "fe6-base.gba", 0x0F9D80, (0x0FED80 - 0x0F9D80)

.align 2,0
.global Pal_Icons
Pal_Icons:
	#incbin "fe6-base.gba", 0x0FED80, (0x0FEDC0 - 0x0FED80)

.align 2,0
.global GFX_AffinIcon_Fire
GFX_AffinIcon_Fire:
	#incbin "AffinIcon/Fire.4bpp"

.align 2,0
.global GFX_AffinIcon_Thunder
GFX_AffinIcon_Thunder:
	#incbin "AffinIcon/Thunder.4bpp"

.align 2,0
.global GFX_AffinIcon_Wind
GFX_AffinIcon_Wind:
	#incbin "AffinIcon/Wind.4bpp"

.align 2,0
.global GFX_AffinIcon_Ice
GFX_AffinIcon_Ice:
	#incbin "AffinIcon/Ice.4bpp"

.align 2,0
.global GFX_AffinIcon_Dark
GFX_AffinIcon_Dark:
	#incbin "AffinIcon/Dark.4bpp"

.align 2,0
.global GFX_AffinIcon_Light
GFX_AffinIcon_Light:
	#incbin "AffinIcon/Light.4bpp"

.align 2,0
.global GFX_AffinIcon_Anima
GFX_AffinIcon_Anima:
	#incbin "AffinIcon/Anima.4bpp"

.align 2,0
.global GFX_MountIcon_Mount
GFX_MountIcon_Mount:
	#incbin "MountIcon/Mount.4bpp"

.align 2,0
.global GFX_MountIcon_Wyvern
GFX_MountIcon_Wyvern:
	#incbin "MountIcon/Wyvern.4bpp"

.align 2,0
.global GFX_MountIcon_Pegasus
GFX_MountIcon_Pegasus:
	#incbin "MountIcon/Pegasus.4bpp"

/* wtype */
.align 2,0
.global GFX_WtypeIcon_Sword
GFX_WtypeIcon_Sword:
	#incbin "WtypeIcon/Sword.4bpp"

.align 2,0
.global GFX_WtypeIcon_Axe
GFX_WtypeIcon_Axe:
	#incbin "WtypeIcon/Axe.4bpp"

.align 2,0
.global GFX_WtypeIcon_Lance
GFX_WtypeIcon_Lance:
	#incbin "WtypeIcon/Lance.4bpp"

.align 2,0
.global GFX_WtypeIcon_Bow
GFX_WtypeIcon_Bow:
	#incbin "WtypeIcon/Bow.4bpp"

.align 2,0
.global GFX_WtypeIcon_Anima
GFX_WtypeIcon_Anima:
	#incbin "WtypeIcon/Anima.4bpp"

.align 2,0
.global GFX_WtypeIcon_Light
GFX_WtypeIcon_Light:
	#incbin "WtypeIcon/Light.4bpp"

.align 2,0
.global GFX_WtypeIcon_Dark
GFX_WtypeIcon_Dark:
	#incbin "WtypeIcon/Dark.4bpp"

.align 2,0
.global GFX_WtypeIcon_Staff
GFX_WtypeIcon_Staff:
	#incbin "WtypeIcon/Staff.4bpp"
