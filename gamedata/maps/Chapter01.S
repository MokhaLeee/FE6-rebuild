@ 第 1 章专属地图数据的符号 + incbin 流程。
@ 数据源在 contents/maps/Chapter01/。

.section .content_data.map

@ 第 1 章地图布局：15x21，每格 metatile 号 * 4
.align 2, 0
.global MapTsa_Ch1
MapTsa_Ch1:
	.incbin "contents/maps/Chapter01/MapTsa_Ch1.dmp.lz"
