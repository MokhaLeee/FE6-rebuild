	.section .rodata
    .ALIGN 4, 0

.global Img_Icons
Img_Icons:
	.incbin "fe6-base.gba", 0x0F9D80, (0x0FED80 - 0x0F9D80)

.global Pal_Icons
Pal_Icons:
	.incbin "fe6-base.gba", 0x0FED80, (0x0FEDC0 - 0x0FED80)

.global GFX_AffinIcon_Fire
GFX_AffinIcon_Fire:
	.incbin "gamedata/icon/AffinIcon/Fire.4bpp"

.global GFX_AffinIcon_Thunder
GFX_AffinIcon_Thunder:
	.incbin "gamedata/icon/AffinIcon/Thunder.4bpp"

.global GFX_AffinIcon_Wind
GFX_AffinIcon_Wind:
	.incbin "gamedata/icon/AffinIcon/Wind.4bpp"

.global GFX_AffinIcon_Ice
GFX_AffinIcon_Ice:
	.incbin "gamedata/icon/AffinIcon/Ice.4bpp"

.global GFX_AffinIcon_Dark
GFX_AffinIcon_Dark:
	.incbin "gamedata/icon/AffinIcon/Dark.4bpp"

.global GFX_AffinIcon_Light
GFX_AffinIcon_Light:
	.incbin "gamedata/icon/AffinIcon/Light.4bpp"

.global GFX_AffinIcon_Anima
GFX_AffinIcon_Anima:
	.incbin "gamedata/icon/AffinIcon/Anima.4bpp"

.global GFX_MountIcon_Mount
GFX_MountIcon_Mount:
	.incbin "gamedata/icon/MountIcon/Mount.4bpp"

.global GFX_MountIcon_Wyvern
GFX_MountIcon_Wyvern:
	.incbin "gamedata/icon/MountIcon/Wyvern.4bpp"

.global GFX_MountIcon_Pegasus
GFX_MountIcon_Pegasus:
	.incbin "gamedata/icon/MountIcon/Pegasus.4bpp"

/* wtype */
.global GFX_WtypeIcon_Sword
GFX_WtypeIcon_Sword:
	.incbin "gamedata/icon/WtypeIcon/Sword.4bpp"

.global GFX_WtypeIcon_Axe
GFX_WtypeIcon_Axe:
	.incbin "gamedata/icon/WtypeIcon/Axe.4bpp"

.global GFX_WtypeIcon_Lance
GFX_WtypeIcon_Lance:
	.incbin "gamedata/icon/WtypeIcon/Lance.4bpp"

.global GFX_WtypeIcon_Bow
GFX_WtypeIcon_Bow:
	.incbin "gamedata/icon/WtypeIcon/Bow.4bpp"

.global GFX_WtypeIcon_Anima
GFX_WtypeIcon_Anima:
	.incbin "gamedata/icon/WtypeIcon/Anima.4bpp"

.global GFX_WtypeIcon_Light
GFX_WtypeIcon_Light:
	.incbin "gamedata/icon/WtypeIcon/Light.4bpp"

.global GFX_WtypeIcon_Dark
GFX_WtypeIcon_Dark:
	.incbin "gamedata/icon/WtypeIcon/Dark.4bpp"

.global GFX_WtypeIcon_Staff
GFX_WtypeIcon_Staff:
	.incbin "gamedata/icon/WtypeIcon/Staff.4bpp"
