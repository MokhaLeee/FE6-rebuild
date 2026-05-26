#include "save_core.h"
#include "savelayout.h"

#include "gbasram.h"
#include "gbaio.h"
#include "util.h"
#include "eventinfo.h"
#include "supply.h"
#include "bm.h"
#include "hardware.h"
#include "armfunc.h"
#include "faction.h"
#include "battle.h"
#include "chapter.h"
#include "unit.h"
#include "action.h"
#include "trap.h"
#include "save-hw.h"

u16 Checksum16(void const *data, int size) {
	u16 const *data_u16 = data;
	int i;
	u32 add_acc = 0;
	u32 xor_acc = 0;

	if (size > 0x1000)
		size = 0x1000;

	for (i = 0; i < size / 2; ++i) {
		add_acc += data_u16[i];
		xor_acc ^= data_u16[i];
	}

	return add_acc + xor_acc;
}

int SramChecksum32(void const *sram_src, int size)
{
	if (size > 0x1000)
		size = 0x1000;

	ReadSave(sram_src, gBuf, size);
	return Checksum32(gBuf, size);
}

void *SramOffsetToAddr(u16 off)
{
	return CART_SRAM + off;
}

u16 SramAddrToOffset(const void *addr)
{
	return addr - CART_SRAM;
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
