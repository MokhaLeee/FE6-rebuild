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
 * flash format
 * SAVE NAME   OFFSET   SIZE    COMMIT
 * global      0          4K
 * block_info  4K         4K     4 * SaveBlockInfo
 * suspend     8K        36K
 * save0       44K       28K
 * save1       72K       28K
 * save2       100J      28K
 * _END_       0x20000
 */
enum flash_format_offset {
	FLASH_OFFSET_GLOBALINFO = 0x0,
	FLASH_OFFSET_BLOCKINFO = 0x1000,
	FLASH_OFFSET_SUS = 0x2000,
	FLASH_OFFSET_SAV0 = 0xB000,
	FLASH_OFFSET_SAV1 = 0x12000,
	FLASH_OFFSET_SAV2 = 0x19000,
};

enum flash_format_size {
	FLASH_SIZE_GLOBALINFO = SIZE_4K,
	FLASH_SIZE_BLOCKINFO = SIZE_4K,
	FLASH_SIZE_SUS = (36 / 4) * SIZE_4K,
	FLASH_SIZE_SAV = (28 / 4) * SIZE_4K,
};

struct FlashLayout {
	u32 addr, size;
};

extern const struct FlashLayout gFlashLayout[SAVE_COUNT];

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

struct SaveFlashLayout_BlockInfo {
	struct SaveBlockInfo block_info[SAVE_COUNT];
};
