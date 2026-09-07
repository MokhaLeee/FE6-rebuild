#include "prelude.h"
#include "hardware.h"
#include "armfunc.h"
#include "save.h"
#include "savelayout.h"

#include "save-hw.h"

void WriteSaveBlockInfo(struct SaveBlockInfo *block_info, int save_id)
{
	void *dst;
	block_info->magic16 = SAVE_MAGIC16;
	block_info->offset = SramAddrToOffset(GetSaveWriteAddr(save_id));

	if (unlikely(save_id >= SAVE_COUNT))
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

#if CONFIG_SECTOR_OPERATION_IN_4K
	ReadSave(CART_SRAM, gBuf, SIZE_4K);
	dst = gBuf + sizeof(struct GlobalSaveInfo) + save_id * sizeof(struct SaveBlockInfo);
	memcpy(dst, block_info, sizeof(struct SaveBlockInfo));
	WriteSave(gBuf, CART_SRAM, SIZE_4K);
#else
	dst = CART_SRAM + sizeof(struct GlobalSaveInfo) + save_id * sizeof(struct SaveBlockInfo);
	WriteSave(block_info, dst, sizeof(struct SaveBlockInfo));
#endif
}

bool ReadSaveBlockInfo(struct SaveBlockInfo *block_info, int save_id)
{
	const void *src;
	struct SaveBlockInfo local_block_info;
	u32 magic32;

	if (block_info == NULL)
		block_info = &local_block_info;

#if CONFIG_SECTOR_OPERATION_IN_4K
	src = gBuf + sizeof(struct GlobalSaveInfo) + save_id * sizeof(struct SaveBlockInfo);
	ReadSave(CART_SRAM, gBuf, SIZE_4K);
	memcpy(block_info, src, sizeof(struct SaveBlockInfo));
#else
	src = CART_SRAM + sizeof(struct GlobalSaveInfo) + save_id * sizeof(struct SaveBlockInfo);
	ReadSave(src, block_info, sizeof(struct SaveBlockInfo));
#endif

	if (block_info->magic16 != SAVE_MAGIC16)
		return FALSE;

	switch (save_id) {
	case SAVE_GAME0:
	case SAVE_GAME1:
	case SAVE_GAME2:
		magic32 = SAVE_MAGIC32;
		break;

	case SAVE_SUSPEND:
	case SAVE_SUSPEND_ALT:
		magic32 = SAVE_MAGIC32;
		break;

	case SAVE_MULTIARENA:
	case SAVE_XMAP:
	default:
		return FALSE;
	}

	if (block_info->magic32 != magic32)
		return FALSE;

	return VerifySaveBlockChecksum(block_info);
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

bool IsSaveValid(int save_id)
{
	return ReadSaveBlockInfo(NULL, save_id);
}
