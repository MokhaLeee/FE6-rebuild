#include "save_core.h"
#include "savelayout.h"

#include "gbasram.h"
#include "gbaio.h"
#include "util.h"
#include "eventinfo.h"
#include "supply.h"
#include "bm.h"
#include "hardware.h"
#include "faction.h"
#include "battle.h"
#include "chapter.h"
#include "unit.h"
#include "action.h"
#include "trap.h"
#include "save-hw.h"

static char const sSaveMarker[] = "AGB-FE6";

struct SramMain *CONST_DATA gSramMain = CART_SRAM;

u16 Checksum16(void const *data, int size)
{
	u16 const *data_u16 = data;
	int i;
	u32 add_acc = 0;
	u32 xor_acc = 0;

	for (i = 0; i < size / 2; ++i) {
		add_acc += data_u16[i];
		xor_acc ^= data_u16[i];
	}

	return add_acc + xor_acc;
}

void *SramOffsetToAddr(u16 off)
{
	return CART_SRAM + off;
}

u16 SramAddrToOffset(void *addr)
{
	return addr - CART_SRAM;
}

bool ReadGlobalSaveInfo(struct GlobalSaveInfo *info)
{
	struct GlobalSaveInfo local_info;

	if (!IsSaveWorking())
		return FALSE;

	if (info == NULL)
		info = &local_info;

	ReadSave(&gSramMain->head, info, sizeof(struct GlobalSaveInfo));

	if (!StringEquals(info->name, sSaveMarker))
		return FALSE;

	if (info->magic32 == SAVE_MAGIC32 && info->magic16 == SAVE_MAGIC16 && info->checksum == Checksum16(info, GLOBALSIZEINFO_SIZE_FOR_CHECKSUM))
		return TRUE;

	return FALSE;
}

void WriteGlobalSaveInfo(struct GlobalSaveInfo *info)
{
	info->checksum = Checksum16(info, GLOBALSIZEINFO_SIZE_FOR_CHECKSUM);
	WriteSave(info, &gSramMain->head, sizeof(struct GlobalSaveInfo));
}

void WriteGlobalSaveInfoNoChecksum(struct GlobalSaveInfo *info)
{
	WriteSave(info, &gSramMain->head, sizeof(struct GlobalSaveInfo));
}

void InitGlobalSaveInfo(void)
{
	struct GlobalSaveInfo info;

	int i;

	WipeSave();

	StringCopy(info.name, sSaveMarker);
	info.magic32 = SAVE_MAGIC32;
	info.magic16 = SAVE_MAGIC16;
	info.completed = FALSE;
	info.completed_true = FALSE;
	info.completed_hard = FALSE;
	info.completed_true_hard = FALSE;
	info.unk_0E_4 = 0;
	info.last_suspend_slot = 0;
	info.last_game_save_id = 0;

	for (i = 0; i < MAX_CLEARED_PLAYTHROUGHS; i++)
		info.cleared_playthroughs[i] = 0;

	WriteGlobalSaveInfo(&info);
}

bool ReadSaveBlockInfo(struct SaveBlockInfo *block_info, int save_id)
{
	struct SaveBlockInfo local_block_info;
	u32 magic32;

	if (block_info == NULL)
		block_info = &local_block_info;

	ReadSave(&gSramMain->block_info[save_id], block_info, sizeof(struct SaveBlockInfo));

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
		magic32 = SAVE_MAGIC32_MULTIARENA;
		break;

	case SAVE_XMAP:
		magic32 = SAVE_MAGIC32_XMAP;
		break;

	default:
		return FALSE;
	}

	if (block_info->magic32 != magic32)
		return FALSE;

	return VerifySaveBlockChecksum(block_info);
}

void WriteChapterFlags(void *sram_dst)
{
	WriteSave(GetChapterFlagBits(), sram_dst, GetChapterFlagBitsSize());
}

void WritePermanentFlags(void *sram_dst)
{
	WriteSave(GetPermanentFlagBits(), sram_dst, GetPermanentFlagBitsSize());
}

void ReadChapterFlags(void const *sram_src)
{
	ReadSave(sram_src, GetChapterFlagBits(), GetChapterFlagBitsSize());
}

void ReadPermanentFlags(void const *sram_src)
{
	ReadSave(sram_src, GetPermanentFlagBits(), GetPermanentFlagBitsSize());
}

void WriteSupplyItems(void *sram_dst)
{
	WriteSave(GetSupplyItems(), sram_dst, SUPPLY_ITEM_COUNT *sizeof(u16));
}

void ReadSupplyItems(void const *sram_src)
{
	ReadSave(sram_src, GetSupplyItems(), SUPPLY_ITEM_COUNT *sizeof(u16));
}

bool IsNotFirstPlaythrough(void)
{
	struct GlobalSaveInfo info;

	if (ReadGlobalSaveInfo(&info))
		return info.completed;

	return FALSE;
}

bool func_fe6_08084714(void)
{
	return TRUE;
}

bool IsMultiArenaAvailable(void)
{
	if (IsSaveWorking()) {
		int i;

		for (i = 0; i < 3; i++) {
			if (IsGameSavePastFirstChapter(i))
				return TRUE;
		}

		return IsMultiArenaSaveReady();
	}

	return FALSE;
}

bool IsNotFirstPlaythrough_2(void)
{
	return IsNotFirstPlaythrough();
}

bool CheckHasCompletedSave(void)
{
	int i;
	struct PlaySt play_st;

	for (i = 0; i < 3; i++) {
		if (IsSaveValid(i)) {
			ReadGameSavePlaySt(i, &play_st);

			if ((play_st.flags & PLAY_FLAG_COMPLETE) != 0)
				return TRUE;
		}
	}

	return FALSE;
}
