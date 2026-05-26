#pragma once

#include "prelude.h"
#include "save.h"

#include "save_core.h"
#include "save_stats.h"
#include "save_game.h"
#include "save_multiarena.h"
#include "save_xmap.h"

#include "gbasram.h"

struct SramMain
{
    struct GlobalSaveInfo head;
    struct SaveBlockInfo block_info[SAVE_COUNT];
    struct SuspendSaveBlock suspend;
    struct SuspendSaveBlock suspend_alt;
    struct GameSaveBlock game_0;
    struct GameSaveBlock game_1;
    struct GameSaveBlock game_2;
    struct MultiArenaSaveBlock multi_arena;
};

STATIC_ASSERT(CART_SRAM_SIZE - SRAM_XMAP_SIZE >= sizeof(struct SramMain));

/**
 * new plan
 * SAVE NAME       SAVE OFFSET     SAVE LENGTH     DEFAULT LENGTH  EXPANSION SIZE
 * meta            0x00            0x94            0x94            0x0
 * suspend0        0x94            0x2F30          0x1DAC          0x1184
 * save1           0x2F54          0x17A8          0xDF0           0x9B8
 * save2           0x46CC          0x17A8          0xDF0           0x9B8
 * save3           0x5E44          0x17A8          0xDF0           0x9B8
 * link_arena      -----           -----           0x93C           0x0
 * _PAD_           0x75BC          0x944           -----           -----
 * block_6         -----           -----           0x1000           -----
 */

enum ems_format_offset {
	EMS_OFFSET_GLOBALINFO = 0x0,
	EMS_OFFSET_SUS = 0x94,
	EMS_OFFSET_SAV0 = 0x2F54,
	EMS_OFFSET_SAV1 = 0x46CC,
	EMS_OFFSET_SAV2 = 0x5E44,
};

enum EMS_format_size {
	EMS_SIZE_GLOBALINFO = 0x94,
	EMS_SIZE_SUS = 0x2F30,
	EMS_SIZE_SAV = 0x17A8,
};

struct EmsChunk {
	int size;
	int chunk_idx;
	void (*save)(u8 *buf, int size);
	void (*load)(u8 *buf, int size);
};

extern const struct EmsChunk gMsaChunk[];
extern const struct EmsChunk gMsuChunk[];
