#include "prelude.h"
#include "hardware.h"
#include "armfunc.h"
#include "save.h"
#include "savelayout.h"

#include "save-hw.h"

#if 0

void WriteSaveBlockInfo(struct SaveBlockInfo *block_info, int save_id)
{
    struct SaveBlockInfo *dst = &(((struct SramMain *)CART_SRAM)->block_info[save_id]);
	block_info->magic16 = SAVE_MAGIC16;
	block_info->offset = SramAddrToOffset(GetSaveWriteAddr(save_id));

	if (save_id >= SAVE_COUNT)
		return;

	switch (block_info->kind) {
	case SAVE_KIND_GAME:
		block_info->size = EMS_SIZE_SAV;
		break;

	case SAVE_KIND_SUSPEND:
		block_info->size = EMS_SIZE_SUS;
		break;

	case SAVE_KIND_MULTIARENA:
	case SAVE_KIND_XMAP:
	case SAVE_KIND_INVALID:
		block_info->size = 0;
		block_info->offset = 0;
		block_info->magic16 = 0;
		break;

	default:
		return;
	}

	PopulateSaveBlockChecksum(block_info);
	WriteSave(block_info, dst, sizeof(struct SaveBlockInfo));
}

void *GetSaveWriteAddr(int save_id)
{
	switch (save_id) {
	case SAVE_GAME0:
		return CART_SRAM + EMS_OFFSET_SAV0;

	case SAVE_GAME1:
		return CART_SRAM + EMS_OFFSET_SAV1;

	case SAVE_GAME2:
		return CART_SRAM + EMS_OFFSET_SAV2;

	case SAVE_SUSPEND:
    case SAVE_SUSPEND_ALT:
		return CART_SRAM + EMS_OFFSET_SUS;

	default:
		return NULL;
	}
}

void *GetSaveReadAddr(int save_id)
{
	struct SaveBlockInfo block_info;

	ReadSaveBlockInfo(&block_info, save_id);
	return SramOffsetToAddr(block_info.offset);
}

#else

void WriteSaveBlockInfo(struct SaveBlockInfo *block_info, int save_id)
{
	block_info->magic16 = SAVE_MAGIC16;
	block_info->offset = SramAddrToOffset(GetSaveWriteAddr(save_id));

	if (save_id >= SAVE_COUNT)
		return;

	switch (block_info->kind) {
	case SAVE_KIND_GAME:
		block_info->size = sizeof(struct GameSaveBlock);
		break;

	case SAVE_KIND_SUSPEND:
		block_info->size = sizeof(struct SuspendSaveBlock);
		break;

	case SAVE_KIND_MULTIARENA:
		block_info->size = sizeof(struct MultiArenaSaveBlock);
		break;

	case SAVE_KIND_XMAP:
		block_info->size = SRAM_XMAP_SIZE;
		break;

	case SAVE_KIND_INVALID:
		block_info->size = 0;
		block_info->offset = 0;
		block_info->magic16 = 0;
		break;

	default:
		return;
	}

	PopulateSaveBlockChecksum(block_info);
	WriteSave(block_info, &gSramMain->block_info[save_id], sizeof(struct SaveBlockInfo));
}

void *GetSaveWriteAddr(int save_id)
{
	switch (save_id) {
	case SAVE_GAME0:
		return &gSramMain->game_0;

	case SAVE_GAME1:
		return &gSramMain->game_1;

	case SAVE_GAME2:
		return &gSramMain->game_2;

	case SAVE_SUSPEND:
		return &gSramMain->suspend;

	case SAVE_SUSPEND_ALT:
		return &gSramMain->suspend_alt;

	case SAVE_MULTIARENA:
		return &gSramMain->multi_arena;

	case SAVE_XMAP:
		return SRAM_XMAP_ADDR;

	default:
		return NULL;
	}
}

void *GetSaveReadAddr(int save_id)
{
	struct SaveBlockInfo block_info;
	ReadSaveBlockInfo(&block_info, save_id);
	return SramOffsetToAddr(block_info.offset);
}

#endif
