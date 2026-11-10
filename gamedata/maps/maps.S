@ contents/maps 下每个 .c 生成的地图数据，统一在这里定义符号并 incbin。
@
@ 构建链路（Makefile 现有规则）：
@   .c -> .o -> .dmp（objcopy）-> .dmp.lz（gbagfx）-> 这里 incbin
@ 游戏用 Decompress()（LZ77）读取最终的 .dmp.lz。

.section .content_data.map

@ 第 1 章地图布局：15x21，每格 metatile 号 * 4
.align 2, 0
.global MapTsa_Ch1
MapTsa_Ch1:
	.incbin "contents/maps/MapTsa_Ch1.dmp.lz"

@ MapAsset01 的 metatile 定义（1024 x 4 个 tile 引用）+ 地形 LUT
.align 2, 0
.global MapAsset01_TsaConf
MapAsset01_TsaConf:
	.incbin "contents/maps/MapAsset01_TsaConf.dmp.lz"
