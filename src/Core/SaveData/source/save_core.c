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
