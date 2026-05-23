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

void *SramOffsetToAddr(u16 off)
{
	return CART_SRAM + off;
}

u16 SramAddrToOffset(void *addr)
{
	return CART_SRAM - addr;
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
