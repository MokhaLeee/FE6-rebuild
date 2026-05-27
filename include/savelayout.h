#pragma once

#include "prelude.h"
#include "save.h"

#include "save_core.h"
#include "save_stats.h"
#include "save_game.h"
#include "save_multiarena.h"
#include "save_xmap.h"

#include "gbasram.h"

#define SIZE_4K 4096

/**
 * new plan
 * SAVE NAME       SAVE OFFSET     SAVE LENGTH     DEFAULT LENGTH  EXPANSION SIZE
 * meta            0x00            0x100           0x94            0x0
 * suspend0        0x100           0x2B00          0x1DAC          0x1184
 * save1           0x2C00          0x1B00          0xDF0           0x9B8
 * save2           0x4700          0x1B00          0xDF0           0x9B8
 * save3           0x6200          0x1B00          0xDF0           0x9B8
 * __PAD__         0x7D00          0x300
 * link_arena      -----           -----           0x93C           0x0
 * block_6         -----           -----           0x1000           -----
 */

enum ems_format_offset {
	EMS_OFFSET_GLOBALINFO = 0x0,
	EMS_OFFSET_SUS = 0x100,
	EMS_OFFSET_SAV0 = 0x2C00,
	EMS_OFFSET_SAV1 = 0x4700,
	EMS_OFFSET_SAV2 = 0x6200,
};

enum EMS_format_size {
	EMS_SIZE_GLOBALINFO = 0x100,
	EMS_SIZE_SUS = 0x2B00,
	EMS_SIZE_SAV = 0x1B00,
};

enum ems_chunk_index {
	EMS_CHUNK_PLAYST = 1,
};

struct EmsChunk {
	int size;
	int chunk_idx;
	void (*save)(u8 *buf, int size);
	void (*load)(u8 *buf, int size);
};

extern const struct EmsChunk gMsaChunk[];
extern const struct EmsChunk gMsuChunk[];
