	.section .rodata

.align 2,0
.global Img_LimitViewSquares
Img_LimitViewSquares: @ 08308B98
	.incbin "fe6-base.gba", 0x308B98, (0x308E98 - 0x308B98) @ length: 0300

.align 2,0
.global Pal_LimitViewBlue
Pal_LimitViewBlue: @ 08308E98
	.incbin "fe6-base.gba", 0x308E98, (0x308EF8 - 0x308E98) @ length: 0060

.align 2,0
.global Pal_LimitViewRed
Pal_LimitViewRed: @ 08308EF8
	.incbin "fe6-base.gba", 0x308EF8, (0x308F58 - 0x308EF8) @ length: 0060

.align 2,0
.global Pal_LimitViewGreen
Pal_LimitViewGreen: @ 08308F58
	.incbin "fe6-base.gba", 0x308F58, (0x308FB8 - 0x308F58) @ length: 0060

.align 2,0
.global Img_MovePath
Img_MovePath: @ 08308FB8
	.incbin "fe6-base.gba", 0x308FB8, (0x3091F0 - 0x308FB8) @ length: 0238

.align 2,0
.global Pal_MovePath
Pal_MovePath: @ 083091F0
	.incbin "fe6-base.gba", 0x3091F0, (0x309210 - 0x3091F0) @ length: 0020

.align 2,0
.global Img_StatusHealEffect
Img_StatusHealEffect: @ 08309210
	.incbin "fe6-base.gba", 0x309210, (0x309298 - 0x309210) @ length: 0088

.align 2,0
.global Pal_StatusHealEffect
Pal_StatusHealEffect: @ 08309298
	.incbin "fe6-base.gba", 0x309298, (0x3092B8 - 0x309298) @ length: 0020

.align 2,0
.global Tsa_StatusHealEffect
Tsa_StatusHealEffect: @ 083092B8
	.incbin "fe6-base.gba", 0x3092B8, (0x3092CC - 0x3092B8) @ length: 0014

.align 2,0
.global Img_PlayRankTimeOBJ
Img_PlayRankTimeOBJ: @ 083092CC
	.incbin "fe6-base.gba", 0x3092CC, (0x3093EC - 0x3092CC) @ length: 0120

.align 2,0
.global Tsa_StatusScreen_FactionInfoFrame
Tsa_StatusScreen_FactionInfoFrame: @ 083093EC
	.incbin "fe6-base.gba", 0x3093EC, (0x3093F8 - 0x3093EC) @ length: 000C

.align 2,0
.global Tsa_StatusScreen_PlaytimeFrame
Tsa_StatusScreen_PlaytimeFrame: @ 083093F8
	.incbin "fe6-base.gba", 0x3093F8, (0x309408 - 0x3093F8) @ length: 0010

.align 2,0
.global Tsa_08309408
Tsa_08309408: @ 08309408
	.incbin "fe6-base.gba", 0x309408, (0x309474 - 0x309408) @ length: 006C

.align 2,0
.global Pal_Unk_08309474
Pal_Unk_08309474: @ 08309474
	.incbin "fe6-base.gba", 0x309474, (0x3094F4 - 0x309474) @ length: 0080

.align 2,0
.global Pal_Unk_083094F4
Pal_Unk_083094F4: @ 083094F4
	.incbin "fe6-base.gba", 0x3094F4, (0x309574 - 0x3094F4) @ length: 0080

.align 2,0
.global Img_ChapterIntroMotif
Img_ChapterIntroMotif: @ 08309574
	.incbin "fe6-base.gba", 0x309574, (0x30A574 - 0x309574) @ length: 1000

.align 2,0
.global Tm_ChapterIntroMotif
Tm_ChapterIntroMotif: @ 0830A574
	.incbin "fe6-base.gba", 0x30A574, (0x30A770 - 0x30A574) @ length: 01FC

.align 2,0
.global Pal_ChapterIntroMotif
Pal_ChapterIntroMotif: @ 0830A770
	.incbin "fe6-base.gba", 0x30A770, (0x30A790 - 0x30A770) @ length: 0020

.align 2,0
.global Img_ChapterIntroFog
Img_ChapterIntroFog: @ 0830A790
	.incbin "fe6-base.gba", 0x30A790, (0x30C414 - 0x30A790) @ length: 1C84

.align 2,0
.global Pal_ChapterIntroFog
Pal_ChapterIntroFog: @ 0830C414
	.incbin "fe6-base.gba", 0x30C414, (0x30C804 - 0x30C414) @ length: 03F0

.align 2,0
.global Img_ChapterTitleBG1
Img_ChapterTitleBG1: @ 0830C804
	.incbin "fe6-base.gba", 0x30C804, (0x30CFE0 - 0x30C804) @ length: 07DC

.align 2,0
.global Img_ChapterTitleBG2
Img_ChapterTitleBG2: @ 0830CFE0
	.incbin "fe6-base.gba", 0x30CFE0, (0x30D4F0 - 0x30CFE0) @ length: 0510

.align 2,0
.global Tsa_ChapterTitleFxDefaultBG
Tsa_ChapterTitleFxDefaultBG: @ 0830D4F0
	.incbin "fe6-base.gba", 0x30D4F0, (0x30D5E4 - 0x30D4F0) @ length: 00F4

.align 2,0
.global Pal_Unk_0830D5E4
Pal_Unk_0830D5E4: @ 0830D5E4
	.incbin "fe6-base.gba", 0x30D5E4, (0x30D604 - 0x30D5E4) @ length: 0020

.align 2,0
.global Img_GameOverText
Img_GameOverText: @ 0830D604
	.incbin "fe6-base.gba", 0x30D604, (0x30D93C - 0x30D604) @ length: 0338

.align 2,0
.global Pal_GameOverText
Pal_GameOverText: @ 0830D93C
	.incbin "fe6-base.gba", 0x30D93C, (0x30D95C - 0x30D93C) @ length: 0020

.align 2,0
.global Pal_Unk_0830D95C
Pal_Unk_0830D95C: @ 0830D95C
	.incbin "fe6-base.gba", 0x30D95C, (0x30D97C - 0x30D95C) @ length: 0020

.align 2,0
.global Tsa_Unk_0830D97C
Tsa_Unk_0830D97C: @ 0830D97C
	.incbin "fe6-base.gba", 0x30D97C, (0x30D9C0 - 0x30D97C) @ length: B038

.align 2,0
.global Img_ChapterTitle_0830D9C0
Img_ChapterTitle_0830D9C0:	@ 0x30D9C0
	.incbin "fe6-base.gba", 0x30D9C0, 0x30DDBC - 0x30D9C0

.align 2,0
.global Img_ChapterTitle_0830DDBC
Img_ChapterTitle_0830DDBC:	@ 0x30DDBC
	.incbin "fe6-base.gba", 0x30DDBC, 0x30E1DC - 0x30DDBC

.align 2,0
.global Img_ChapterTitle_0830E1DC
Img_ChapterTitle_0830E1DC:	@ 0x30E1DC
	.incbin "fe6-base.gba", 0x30E1DC, 0x30E640 - 0x30E1DC

.align 2,0
.global Img_ChapterTitle_0830E640
Img_ChapterTitle_0830E640:	@ 0x30E640
	.incbin "fe6-base.gba", 0x30E640, 0x30EA4C - 0x30E640

.align 2,0
.global Img_ChapterTitle_0830EA4C
Img_ChapterTitle_0830EA4C:	@ 0x30EA4C
	.incbin "fe6-base.gba", 0x30EA4C, 0x30EDC8 - 0x30EA4C

.align 2,0
.global Img_ChapterTitle_0830EDC8
Img_ChapterTitle_0830EDC8:	@ 0x30EDC8
	.incbin "fe6-base.gba", 0x30EDC8, 0x30F250 - 0x30EDC8

.align 2,0
.global Img_ChapterTitle_0830F250
Img_ChapterTitle_0830F250:	@ 0x30F250
	.incbin "fe6-base.gba", 0x30F250, 0x30F6C4 - 0x30F250

.align 2,0
.global Img_ChapterTitle_0830F6C4
Img_ChapterTitle_0830F6C4:	@ 0x30F6C4
	.incbin "fe6-base.gba", 0x30F6C4, 0x30F9B8 - 0x30F6C4

.align 2,0
.global Img_ChapterTitle_0830F9B8
Img_ChapterTitle_0830F9B8:	@ 0x30F9B8
	.incbin "fe6-base.gba", 0x30F9B8, 0x30FE60 - 0x30F9B8

.align 2,0
.global Img_ChapterTitle_0830FE60
Img_ChapterTitle_0830FE60:	@ 0x30FE60
	.incbin "fe6-base.gba", 0x30FE60, 0x3102CC - 0x30FE60

.align 2,0
.global Img_ChapterTitle_083102CC
Img_ChapterTitle_083102CC:	@ 0x3102CC
	.incbin "fe6-base.gba", 0x3102CC, 0x3107A8 - 0x3102CC

.align 2,0
.global Img_ChapterTitle_083107A8
Img_ChapterTitle_083107A8:	@ 0x3107A8
	.incbin "fe6-base.gba", 0x3107A8, 0x310BBC - 0x3107A8

.align 2,0
.global Img_ChapterTitle_08310BBC
Img_ChapterTitle_08310BBC:	@ 0x310BBC
	.incbin "fe6-base.gba", 0x310BBC, 0x311094 - 0x310BBC

.align 2,0
.global Img_ChapterTitle_08311094
Img_ChapterTitle_08311094:	@ 0x311094
	.incbin "fe6-base.gba", 0x311094, 0x3114AC - 0x311094

.align 2,0
.global Img_ChapterTitle_083114AC
Img_ChapterTitle_083114AC:	@ 0x3114AC
	.incbin "fe6-base.gba", 0x3114AC, 0x311890 - 0x3114AC

.align 2,0
.global Img_ChapterTitle_08311890
Img_ChapterTitle_08311890:	@ 0x311890
	.incbin "fe6-base.gba", 0x311890, 0x311D54 - 0x311890

.align 2,0
.global Img_ChapterTitle_08311D54
Img_ChapterTitle_08311D54:	@ 0x311D54
	.incbin "fe6-base.gba", 0x311D54, 0x312158 - 0x311D54

.align 2,0
.global Img_ChapterTitle_08312158
Img_ChapterTitle_08312158:	@ 0x312158
	.incbin "fe6-base.gba", 0x312158, 0x3124FC - 0x312158

.align 2,0
.global Img_ChapterTitle_083124FC
Img_ChapterTitle_083124FC:	@ 0x3124FC
	.incbin "fe6-base.gba", 0x3124FC, 0x3129A0 - 0x3124FC

.align 2,0
.global Img_ChapterTitle_083129A0
Img_ChapterTitle_083129A0:	@ 0x3129A0
	.incbin "fe6-base.gba", 0x3129A0, 0x312D20 - 0x3129A0

.align 2,0
.global Img_ChapterTitle_08312D20
Img_ChapterTitle_08312D20:	@ 0x312D20
	.incbin "fe6-base.gba", 0x312D20, 0x313104 - 0x312D20

.align 2,0
.global Img_ChapterTitle_08313104
Img_ChapterTitle_08313104:	@ 0x313104
	.incbin "fe6-base.gba", 0x313104, 0x3135C0 - 0x313104

.align 2,0
.global Img_ChapterTitle_083135C0
Img_ChapterTitle_083135C0:	@ 0x3135C0
	.incbin "fe6-base.gba", 0x3135C0, 0x31394C - 0x3135C0

.align 2,0
.global Img_ChapterTitle_0831394C
Img_ChapterTitle_0831394C:	@ 0x31394C
	.incbin "fe6-base.gba", 0x31394C, 0x313D38 - 0x31394C

.align 2,0
.global Img_ChapterTitle_08313D38
Img_ChapterTitle_08313D38:	@ 0x313D38
	.incbin "fe6-base.gba", 0x313D38, 0x3140C8 - 0x313D38

.align 2,0
.global Img_ChapterTitle_083140C8
Img_ChapterTitle_083140C8:	@ 0x3140C8
	.incbin "fe6-base.gba", 0x3140C8, 0x3144E4 - 0x3140C8

.align 2,0
.global Img_ChapterTitle_083144E4
Img_ChapterTitle_083144E4:	@ 0x3144E4
	.incbin "fe6-base.gba", 0x3144E4, 0x3149C8 - 0x3144E4

.align 2,0
.global Img_ChapterTitle_083149C8
Img_ChapterTitle_083149C8:	@ 0x3149C8
	.incbin "fe6-base.gba", 0x3149C8, 0x314E14 - 0x3149C8

.align 2,0
.global Img_ChapterTitle_08314E14
Img_ChapterTitle_08314E14:	@ 0x314E14
	.incbin "fe6-base.gba", 0x314E14, 0x3151E8 - 0x314E14

.align 2,0
.global Img_ChapterTitle_083151E8
Img_ChapterTitle_083151E8:	@ 0x3151E8
	.incbin "fe6-base.gba", 0x3151E8, 0x31569C - 0x3151E8

.align 2,0
.global Img_ChapterTitle_0831569C
Img_ChapterTitle_0831569C:	@ 0x31569C
	.incbin "fe6-base.gba", 0x31569C, 0x315AC0 - 0x31569C

.align 2,0
.global Img_ChapterTitle_08315AC0
Img_ChapterTitle_08315AC0:	@ 0x315AC0
	.incbin "fe6-base.gba", 0x315AC0, 0x315F88 - 0x315AC0

.align 2,0
.global Img_ChapterTitle_08315F88
Img_ChapterTitle_08315F88:	@ 0x315F88
	.incbin "fe6-base.gba", 0x315F88, 0x316354 - 0x315F88

.align 2,0
.global Img_ChapterTitle_08316354
Img_ChapterTitle_08316354:	@ 0x316354
	.incbin "fe6-base.gba", 0x316354, 0x3167EC - 0x316354

.align 2,0
.global Img_ChapterTitle_083167EC
Img_ChapterTitle_083167EC:	@ 0x3167EC
	.incbin "fe6-base.gba", 0x3167EC, 0x316C00 - 0x3167EC

.align 2,0
.global Img_ChapterTitle_08316C00
Img_ChapterTitle_08316C00:	@ 0x316C00
	.incbin "fe6-base.gba", 0x316C00, 0x317014 - 0x316C00

.align 2,0
.global Img_ChapterTitle_08317014
Img_ChapterTitle_08317014:	@ 0x317014
	.incbin "fe6-base.gba", 0x317014, 0x317484 - 0x317014

.align 2,0
.global Img_ChapterTitle_08317484
Img_ChapterTitle_08317484:	@ 0x317484
	.incbin "fe6-base.gba", 0x317484, 0x317858 - 0x317484

.align 2,0
.global Img_ChapterTitle_08317858
Img_ChapterTitle_08317858:	@ 0x317858
	.incbin "fe6-base.gba", 0x317858, 0x317AA4 - 0x317858

.align 2,0
.global Img_ChapterTitle_08317AA4
Img_ChapterTitle_08317AA4:	@ 0x317AA4
	.incbin "fe6-base.gba", 0x317AA4, 0x317D94 - 0x317AA4

.align 2,0
.global Img_ChapterTitle_08317D94
Img_ChapterTitle_08317D94:	@ 0x317D94
	.incbin "fe6-base.gba", 0x317D94, 0x318040 - 0x317D94

.align 2,0
.global Img_ChapterTitle_08318040
Img_ChapterTitle_08318040:	@ 0x318040
	.incbin "fe6-base.gba", 0x318040, 0x31833C - 0x318040

.align 2,0
.global Img_ChapterTitle_0831833C
Img_ChapterTitle_0831833C:	@ 0x31833C
	.incbin "fe6-base.gba", 0x31833C, 0x318658 - 0x31833C

.align 2,0
.global Img_ChapterTitle_08318658
Img_ChapterTitle_08318658:	@ 0x318658
	.incbin "fe6-base.gba", 0x318658, 0x3189B4 - 0x318658

.align 2,0
.global Img_MapUiElements
Img_MapUiElements: @ 083189B4
	.incbin "fe6-base.gba", 0x3189B4, (0x31906C - 0x3189B4) @ length: 06B8

.align 2,0
.global Pal_UnitMapUiFrame_Blue
Pal_UnitMapUiFrame_Blue: @ 0831906C
	.incbin "fe6-base.gba", 0x31906C, (0x31908C - 0x31906C) @ length: 0020

.align 2,0
.global Pal_UnitMapUiFrame_Red
Pal_UnitMapUiFrame_Red: @ 0831908C
	.incbin "fe6-base.gba", 0x31908C, (0x3190AC - 0x31908C) @ length: 0020

.align 2,0
.global Pal_UnitMapUiFrame_Green
Pal_UnitMapUiFrame_Green: @ 083190AC
	.incbin "fe6-base.gba", 0x3190AC, (0x3190CC - 0x3190AC) @ length: 0020

.align 2,0
.global Tsa_TerrainMapUi_Frame
Tsa_TerrainMapUi_Frame: @ 083190CC
	.incbin "fe6-base.gba", 0x3190CC, (0x319124 - 0x3190CC) @ length: 0058

.align 2,0
.global Tsa_UnitMapUi_Frame
Tsa_UnitMapUi_Frame: @ 08319124
	.incbin "fe6-base.gba", 0x319124, (0x3191B8 - 0x319124) @ length: ????

.align 2,0
.global Tsa_UnitBurstMapUi_Frame0
Tsa_UnitBurstMapUi_Frame0: @ 083191B8
	.incbin "fe6-base.gba", 0x3191B8, (0x31920C - 0x3191B8) @ length: ????

.align 2,0
.global Tsa_UnitBurstMapUi_Frame1
Tsa_UnitBurstMapUi_Frame1: @ 0831920C
	.incbin "fe6-base.gba", 0x31920C, (0x319260 - 0x31920C) @ length: ????

.align 2,0
.global Tsa_UnitBurstMapUi_Frame2
Tsa_UnitBurstMapUi_Frame2: @ 08319260
	.incbin "fe6-base.gba", 0x319260, (0x3192B4 - 0x319260) @ length: ????

.align 2,0
.global Tsa_UnitBurstMapUi_Frame3
Tsa_UnitBurstMapUi_Frame3: @ 083192B4
	.incbin "fe6-base.gba", 0x3192B4, (0x319308 - 0x3192B4) @ length: ????

.align 2,0
.global Tsa_UnitBurstMapUi_Frame4
Tsa_UnitBurstMapUi_Frame4: @ 08319308
	.incbin "fe6-base.gba", 0x319308, (0x31935C - 0x319308) @ length: ????

.align 2,0
.global Tsa_UnitBurstMapUi_Frame5
Tsa_UnitBurstMapUi_Frame5: @ 0831935C
	.incbin "fe6-base.gba", 0x31935C, (0x3193B0 - 0x31935C) @ length: ????

.align 2,0
.global Tsa_TerrainMapUi_Labels
Tsa_TerrainMapUi_Labels: @ 083193B0
	.incbin "fe6-base.gba", 0x3193B0, (0x3193BC - 0x3193B0) @ length: 000C

.align 2,0
.global Tsa_TerrainMapUi_BallistaLabels
Tsa_TerrainMapUi_BallistaLabels: @ 083193BC
	.incbin "fe6-base.gba", 0x3193BC, (0x3193C4 - 0x3193BC) @ length: 0008

.align 2,0
.global Tsa_TerrainMapUi_ObstacleLabels
Tsa_TerrainMapUi_ObstacleLabels: @ 083193C4
	.incbin "fe6-base.gba", 0x3193C4, (0x3193D0 - 0x3193C4) @ length: 000C

.align 2,0
.global Tsa_TerrainMapUi_ObstacleFullHp
Tsa_TerrainMapUi_ObstacleFullHp: @ 083193D0
	.incbin "fe6-base.gba", 0x3193D0, (0x3193EC - 0x3193D0) @ length: 001C
