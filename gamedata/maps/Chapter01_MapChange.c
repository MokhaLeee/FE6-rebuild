#include "prelude.h"
#include "chapterinfo.h"

/* 第 1 章的地图变更：村庄关闭、建筑变废墟。 */

static const u16 Tiles_MapChange_Ch1_0[] = {
	0xE1C, 0xE20, 0xE24,
	0xE9C, 0xEA0, 0xEA4,
	0xF1C, 0xF20, 0xF24,
};

static const u16 Tiles_MapChange_Ch1_1[] = {
	0xE1C, 0xE20, 0xE24,
	0xE9C, 0xEA0, 0xEA4,
	0xF1C, 0xF20, 0xF24
};

static const u16 Tiles_MapChange_Ch1_2[] = {
	0x80,
};

static const u16 Tiles_MapChange_Ch1_3[] = {
	0x80,
};

const struct MapChangeInfo MapChange_Ch1[] = {
	{
		.id = 0,
		.x = 11,
		.y = 17,
		.width = 3,
		.height = 3,
		.metatiles = Tiles_MapChange_Ch1_0,
	},
	{
		.id = 1,
		.x = 3,
		.y = 7,
		.width = 3,
		.height = 3,
		.metatiles = Tiles_MapChange_Ch1_1,
	},
	{
		.id = 2,
		.x = 12,
		.y = 19,
		.width = 1,
		.height = 1,
		.metatiles = Tiles_MapChange_Ch1_2,
	},
	{
		.id = 3,
		.x = 4,
		.y = 9,
		.width = 1,
		.height = 1,
		.metatiles = Tiles_MapChange_Ch1_3,
	},
	{ .id = -1 }
};
