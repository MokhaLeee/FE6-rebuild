#include "prelude.h"
#include "statscreen.h"
#include "unit.h"
#include "battle.h"
#include "item.h"
#include "text.h"
#include "hardware.h"
#include "support.h"
#include "icon.h"
#include "msg.h"
#include "armfunc.h"
#include "systemlabels.h"
#include "util.h"
#include "constants/videoalloc_global.h"

#include "klib.h"

struct StatScreenTextInfo const gStatScreenWeaponExpLabelsPhysicalInfo[] = {
	{ gStatScreenSt.text + STATSCREEN_TEXT_WEXP_A, gUiTmScratchA + TM_OFFSET(3,  1), TEXT_COLOR_SYSTEM_WHITE, 0, "剣" },
	{ gStatScreenSt.text + STATSCREEN_TEXT_WEXP_B, gUiTmScratchA + TM_OFFSET(3,  3), TEXT_COLOR_SYSTEM_WHITE, 0, "槍" },
	{ gStatScreenSt.text + STATSCREEN_TEXT_WEXP_C, gUiTmScratchA + TM_OFFSET(11, 1), TEXT_COLOR_SYSTEM_WHITE, 0, "斧" },
	{ gStatScreenSt.text + STATSCREEN_TEXT_WEXP_D, gUiTmScratchA + TM_OFFSET(11, 3), TEXT_COLOR_SYSTEM_WHITE, 0, "弓" },

	{ 0 }, // end
};

struct StatScreenTextInfo const gStatScreenWeaponExpLabelsMagicalInfo[] = {
	{ gStatScreenSt.text + STATSCREEN_TEXT_WEXP_A, gUiTmScratchA + TM_OFFSET(3,  1), TEXT_COLOR_SYSTEM_WHITE, 0, "理" },
	{ gStatScreenSt.text + STATSCREEN_TEXT_WEXP_B, gUiTmScratchA + TM_OFFSET(3,  3), TEXT_COLOR_SYSTEM_WHITE, 0, "光" },
	{ gStatScreenSt.text + STATSCREEN_TEXT_WEXP_C, gUiTmScratchA + TM_OFFSET(11, 1), TEXT_COLOR_SYSTEM_WHITE, 0, "闇" },
	{ gStatScreenSt.text + STATSCREEN_TEXT_WEXP_D, gUiTmScratchA + TM_OFFSET(11, 3), TEXT_COLOR_SYSTEM_WHITE, 0, "杖" },

	{ 0 }, // end
};

static void PutStatScreenSupportList(void)
{
	int count, i;

	int y_tm = 6;
	int line = 0;

	int text_color = GetUnitTotalSupportLevel(gStatScreenSt.unit) == MAX_SIMULTANEOUS_SUPPORT_COUNT_PER_UNIT
		? TEXT_COLOR_SYSTEM_GREEN : TEXT_COLOR_SYSTEM_WHITE;

	for (count = GetUnitSupportCount(gStatScreenSt.unit), i = 0; i < count; i++) {
		int support_level = GetUnitSupportLevel(gStatScreenSt.unit, i);

		if (support_level != 0) {
			int rank_color;

			u8 pid = GetUnitSupportPid(gStatScreenSt.unit, i);

			PutIcon(gUiTmScratchA + TM_OFFSET(4, y_tm),
				GetAffinityIconByPid(pid),
				TILEREF(0, BGPAL_ICONS + 1));

			PutDrawText(gStatScreenSt.text + STATSCREEN_TEXT_SUPPORT_A + line,
				gUiTmScratchA + TM_OFFSET(7, y_tm),
				text_color, 0, 0, DecodeMsg(GetPInfo(pid)->msg_name));

			rank_color = TEXT_COLOR_SYSTEM_BLUE;

			if (support_level == SUPPORT_LEVEL_A)
				rank_color = TEXT_COLOR_SYSTEM_GREEN;

			if (text_color == TEXT_COLOR_SYSTEM_GREEN)
				rank_color = TEXT_COLOR_SYSTEM_GREEN;

			PutSpecialChar(gUiTmScratchA + TM_OFFSET(13, y_tm),
				rank_color, GetSupportLevelSpecialChar(support_level));

			y_tm += 2;
			line++;
		}
	}
}

static void PutStatScreenWeaponExpBar(int num, int x, int y, int item_kind)
{
	int color;
	int wexp = gStatScreenSt.unit->wexp[item_kind];

	PutIcon(gUiTmScratchA + TM_OFFSET(x, y),
		WTYPE_ICON(item_kind),
		TILEREF(0, BGPAL_ICONS + 1));

	color = (wexp >= WEXP_S)
		? TEXT_COLOR_SYSTEM_GREEN : TEXT_COLOR_SYSTEM_BLUE;

	// display rank letter
	PutSpecialChar(gUiTmScratchA + TM_OFFSET(x + 5, y),
		color, GetWeaponLevelSpecialCharFromExp(wexp));

	// this code makes the following assumptions
	STATIC_ASSERT(WEXP_C - WEXP_D == (WEXP_D - WEXP_E));
	STATIC_ASSERT(WEXP_B - WEXP_C == (WEXP_D - WEXP_E));
	STATIC_ASSERT(WEXP_A - WEXP_B == (WEXP_D - WEXP_E));
	STATIC_ASSERT(WEXP_S - WEXP_A == (WEXP_D - WEXP_E));

	if (wexp != WEXP_0)
		wexp -= WEXP_E;

	PutDrawUiGauge(0x400 + 1 + num * 6, 5,
		gUiTmScratchC + TM_OFFSET(x + 3, y + 1), TILEREF(0, BGPAL_STATSCREEN_STATBAR),
		34, k_udiv(k_umod(wexp, (WEXP_D - WEXP_E)) * 33, 48), 0); // math look weird but gets something that ranges from 0 to 33. I would do "((wexp % 50) * 34) / 50"
}

void PutStatScreenWeaponExpAndSupportsPage(void)
{
	Decompress(Tsa_Statscreen_08307E50, gBuf);
	TmApplyTsa(gUiTmScratchB, gBuf, TILEREF(BGCHR_WINDOWFRAME, BGPAL_WINDOWFRAME));

	if (UnitKnowsMagic(gStatScreenSt.unit)) {
		PutStatScreenText(gStatScreenWeaponExpLabelsMagicalInfo);

		PutStatScreenWeaponExpBar(0, 1, 1, ITEM_KIND_ANIMA);
		PutStatScreenWeaponExpBar(1, 1, 3, ITEM_KIND_LIGHT);
		PutStatScreenWeaponExpBar(2, 9, 1, ITEM_KIND_ELDER);
		PutStatScreenWeaponExpBar(3, 9, 3, ITEM_KIND_STAFF);
	} else {
		PutStatScreenText(gStatScreenWeaponExpLabelsPhysicalInfo);

		PutStatScreenWeaponExpBar(0, 1, 1, ITEM_KIND_SWORD);
		PutStatScreenWeaponExpBar(1, 1, 3, ITEM_KIND_LANCE);
		PutStatScreenWeaponExpBar(2, 9, 1, ITEM_KIND_AXE);
		PutStatScreenWeaponExpBar(3, 9, 3, ITEM_KIND_BOW);
	}

	PutStatScreenSupportList();
}
