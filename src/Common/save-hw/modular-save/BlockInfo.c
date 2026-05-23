#include "prelude.h"
#include "hardware.h"
#include "armfunc.h"
#include "save.h"
#include "savelayout.h"

#include "save-hw.h"

const struct FlashLayout gFlashLayout[SAVE_COUNT] = {
	[SAVE_SUSPEND] = { 0x2000,  0xA000 },
	[SAVE_GAME0]   = { 0xB000,  0x7000 },
	[SAVE_GAME1]   = { 0x12000, 0x7000 },
	[SAVE_GAME2]   = { 0x19000, 0x7000 },
};

static void *get_save_addr(int save_id)
{
	return CART_SRAM + gFlashLayout[save_id].addr;
}

void *GetSaveReadAddr(int save_id)
{
	return get_save_addr(save_id);
}

void *GetSaveWriteAddr(int save_id)
{
	return get_save_addr(save_id);
}

/**src/Common/save-hw/source
 * block info:
 */
static int SramChecksum32(void const *sram_src, int size)
{
	if (size > 0x1000)
		size = 0x1000;

	ReadSave(sram_src, gBuf, size);
	return Checksum32(gBuf, size);
}

static bool ReadSaveBlockInfo(int save_id)
{
	struct SaveFlashLayout_BlockInfo *buf = (void *)gBuf;
	struct SaveBlockInfo *info;

	switch (save_id) {
	case SAVE_GAME0:
	case SAVE_GAME1:
	case SAVE_GAME2:
	case SAVE_SUSPEND:
	case SAVE_SUSPEND_ALT:
		break;

	default:
		return false;
	}

	ReadSave(SramOffsetToAddr(FLASH_SIZE_BLOCKINFO), buf, sizeof(struct SaveFlashLayout_BlockInfo));
	info = &buf->block_info[save_id];

	/* 1: check magic16 */
	if (info->magic16 != SAVE_MAGIC16)
		return false;

	/* 2: check magic32 */
	if (info->magic32 != SAVE_MAGIC32)
		return false;

	if (info->checksum32 != (u32)SramChecksum32(get_save_addr(save_id), 0x1000))
		return false;

	return true;
}

void WriteSaveBlockInfo(struct SaveBlockInfo *block_info, int save_id)
{
	struct SaveFlashLayout_BlockInfo *buf = (void *)gBuf;

	if (save_id >= SAVE_COUNT)
		return;

	switch (block_info->kind) {
	case SAVE_KIND_GAME:
	case SAVE_KIND_SUSPEND:
		break;

	default:
		return;
	}

	block_info->magic16 = SAVE_MAGIC16;
	block_info->magic32 = SAVE_MAGIC32;
	block_info->size = 0x1000;
	block_info->offset = gFlashLayout[save_id].addr;
	block_info->checksum32 = SramChecksum32(get_save_addr(save_id), 0x1000);

	ReadSave(SramOffsetToAddr(FLASH_OFFSET_GLOBALINFO), buf, sizeof(struct SaveFlashLayout_BlockInfo));
	memcpy(&buf->block_info[save_id], block_info, sizeof(struct SaveBlockInfo));
	WriteSave(buf, SramOffsetToAddr(FLASH_SIZE_BLOCKINFO), sizeof(struct SaveFlashLayout_BlockInfo));
}

bool IsSaveValid(int save_id)
{
	switch (save_id) {
	case SAVE_GAME0:
	case SAVE_GAME1:
	case SAVE_GAME2:
	case SAVE_SUSPEND:
	case SAVE_SUSPEND_ALT:
		return ReadSaveBlockInfo(save_id);

	default:
		return false;
	}
}

bool IsValidSuspendSave(int save_id)
{
	switch (save_id) {
	case SAVE_SUSPEND:
	case SAVE_SUSPEND_ALT:
		return ReadSaveBlockInfo(save_id);

	default:
		return false;
	}
}
