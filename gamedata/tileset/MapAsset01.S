@ MapAsset01 tileset 的共享资源符号 + incbin 流程。
@ 数据源在 contents/tileset/MapAsset01/。

.section .content_data.map

@ metatile 定义（1024 x 4 个 tile 引用）+ 地形 LUT
.align 2, 0
.global MapAsset01_TsaConf
MapAsset01_TsaConf:
	.incbin "contents/tileset/MapAsset01/TsaConf.dmp.lz"

@ tile 图集
.align 2, 0
.global MapAsset01_Img1
MapAsset01_Img1:
	.incbin "contents/tileset/MapAsset01/Img1.4bpp.lz"

.align 2, 0
.global MapAsset01_Img2
MapAsset01_Img2:
	.incbin "contents/tileset/MapAsset01/Img2.4bpp.lz"

@ 10 组调色板（正常 / 夜间）
.align 2, 0
.global MapAsset01_Pal
MapAsset01_Pal:
	.incbin "contents/tileset/MapAsset01/ConfImg.gbapal", 0, 0x140

.align 2, 0
.global MapAsset01_NightPal
MapAsset01_NightPal:
	.incbin "contents/tileset/MapAsset01/Pal2_ConfImg.gbapal", 0, 0x140
