	.section .content_data

.align 2,0
.global Img_Icons
Img_Icons:
	.incbin "fe6-base.gba", 0x0F9D80, (0x0FED80 - 0x0F9D80)

.align 2,0
.global Pal_Icons
Pal_Icons:
	.incbin "fe6-base.gba", 0x0FED80, (0x0FEDC0 - 0x0FED80)

.align 2,0
.global GFX_AffinIcon_Fire
GFX_AffinIcon_Fire:
	.incbin "content/icon/AffinIcon/Fire.4bpp"

.align 2,0
.global GFX_AffinIcon_Thunder
GFX_AffinIcon_Thunder:
	.incbin "content/icon/AffinIcon/Thunder.4bpp"

.align 2,0
.global GFX_AffinIcon_Wind
GFX_AffinIcon_Wind:
	.incbin "content/icon/AffinIcon/Wind.4bpp"

.align 2,0
.global GFX_AffinIcon_Ice
GFX_AffinIcon_Ice:
	.incbin "content/icon/AffinIcon/Ice.4bpp"

.align 2,0
.global GFX_AffinIcon_Dark
GFX_AffinIcon_Dark:
	.incbin "content/icon/AffinIcon/Dark.4bpp"

.align 2,0
.global GFX_AffinIcon_Light
GFX_AffinIcon_Light:
	.incbin "content/icon/AffinIcon/Light.4bpp"

.align 2,0
.global GFX_AffinIcon_Anima
GFX_AffinIcon_Anima:
	.incbin "content/icon/AffinIcon/Anima.4bpp"

.align 2,0
.global GFX_MountIcon_Mount
GFX_MountIcon_Mount:
	.incbin "content/icon/MountIcon/Mount.4bpp"

.align 2,0
.global GFX_MountIcon_Wyvern
GFX_MountIcon_Wyvern:
	.incbin "content/icon/MountIcon/Wyvern.4bpp"

.align 2,0
.global GFX_MountIcon_Pegasus
GFX_MountIcon_Pegasus:
	.incbin "content/icon/MountIcon/Pegasus.4bpp"

/* wtype */
.align 2,0
.global GFX_WtypeIcon_Sword
GFX_WtypeIcon_Sword:
	.incbin "content/icon/WtypeIcon/Sword.4bpp"

.align 2,0
.global GFX_WtypeIcon_Axe
GFX_WtypeIcon_Axe:
	.incbin "content/icon/WtypeIcon/Axe.4bpp"

.align 2,0
.global GFX_WtypeIcon_Lance
GFX_WtypeIcon_Lance:
	.incbin "content/icon/WtypeIcon/Lance.4bpp"

.align 2,0
.global GFX_WtypeIcon_Bow
GFX_WtypeIcon_Bow:
	.incbin "content/icon/WtypeIcon/Bow.4bpp"

.align 2,0
.global GFX_WtypeIcon_Anima
GFX_WtypeIcon_Anima:
	.incbin "content/icon/WtypeIcon/Anima.4bpp"

.align 2,0
.global GFX_WtypeIcon_Light
GFX_WtypeIcon_Light:
	.incbin "content/icon/WtypeIcon/Light.4bpp"

.align 2,0
.global GFX_WtypeIcon_Dark
GFX_WtypeIcon_Dark:
	.incbin "content/icon/WtypeIcon/Dark.4bpp"

.align 2,0
.global GFX_WtypeIcon_Staff
GFX_WtypeIcon_Staff:
	.incbin "content/icon/WtypeIcon/Staff.4bpp"
