#include "prelude.h"
#include "statscreen.h"
#include "unit.h"
#include "battle.h"
#include "item.h"
#include "text.h"
#include "hardware.h"
#include "support.h"
#include "icon.h"
#include "armfunc.h"
#include "systemlabels.h"
#include "util.h"
#include "constants/videoalloc_global.h"

#include "klib.h"

static struct StatScreenTextInfo const gStatScreenEquipmentLabelsInfo[] = {
	{ gStatScreenSt.text + STATSCREEN_TEXT_EQUIPATTACK, gUiTmScratchA + TM_OFFSET(3,  13), TEXT_COLOR_SYSTEM_GOLD, 0, SystemLabel_EquipAttack },
	{ gStatScreenSt.text + STATSCREEN_TEXT_EQUIPHIT,	gUiTmScratchA + TM_OFFSET(3,  15), TEXT_COLOR_SYSTEM_GOLD, 0, SystemLabel_EquipHit },
	{ gStatScreenSt.text + STATSCREEN_TEXT_EQUIPRANGE,  gUiTmScratchA + TM_OFFSET(10, 11), TEXT_COLOR_SYSTEM_GOLD, 0, SystemLabel_EquipRange },
	{ gStatScreenSt.text + STATSCREEN_TEXT_EQUIPCRIT,   gUiTmScratchA + TM_OFFSET(10, 13), TEXT_COLOR_SYSTEM_GOLD, 0, SystemLabel_EquipCrit },
	{ gStatScreenSt.text + STATSCREEN_TEXT_EQUIPAVOID,  gUiTmScratchA + TM_OFFSET(10, 15), TEXT_COLOR_SYSTEM_GOLD, 0, SystemLabel_EquipAvoid },

	{ 0 }, // end
};

void PutStatScreenItemsPage(void)
{
	int i, item;
	const char *str;

	Decompress(Tsa_Statscreen_08307DD4, gBuf);
	TmApplyTsa(gUiTmScratchB, gBuf, TILEREF(BGCHR_WINDOWFRAME, BGPAL_WINDOWFRAME));

	Decompress(Tsa_Statscreen_08308070, gBuf);
	TmApplyTsa(gUiTmScratchC + TM_OFFSET(1, 11), gBuf, TILEREF(BGCHR_STATSCREEN_EQUIPSTATFRAME, BGPAL_STATSCREEN_EQUIPSTATFRAME));

	PutStatScreenText(gStatScreenEquipmentLabelsInfo);

	for (i = 0; (i < ITEMSLOT_INV_COUNT) && (item = gStatScreenSt.unit->items[i]); i++)
	{
		DrawItemStatScreenLine(gStatScreenSt.text + STATSCREEN_TEXT_ITEM_A + i,
			item, IsItemDisplayUsable(gStatScreenSt.unit, item),
			gUiTmScratchA + TM_OFFSET(1, 1 + i * 2));
	}

	i = GetUnitEquippedWeaponSlot(gStatScreenSt.unit);
	item = 0;

	if (i >= 0)
	{
		PutSpecialChar(
			gUiTmScratchA + TM_OFFSET(16, 1 + i * 2),
			0, TEXT_SPECIAL_EXP_E);

		TmApplyTsa(
			gUiTmScratchC + TM_OFFSET(1, 2 + i * 2),
			Tsa_Statscreen_083080AC, TILEREF(BGCHR_STATSCREEN_EQUIPSTATFRAME, BGPAL_STATSCREEN_EQUIPSTATFRAME));

		item = gStatScreenSt.unit->items[i];
	}

	PutNumberOrBlank(gUiTmScratchA + TM_OFFSET(8,  13),
		TEXT_COLOR_SYSTEM_BLUE, gBattleUnitA.battle_attack);

	PutNumberOrBlank(gUiTmScratchA + TM_OFFSET(8,  15),
		TEXT_COLOR_SYSTEM_BLUE, gBattleUnitA.battle_hit);

	PutNumberOrBlank(gUiTmScratchA + TM_OFFSET(15, 13),
		TEXT_COLOR_SYSTEM_BLUE, gBattleUnitA.battle_crit);

	PutNumberOrBlank(gUiTmScratchA + TM_OFFSET(15, 15),
		TEXT_COLOR_SYSTEM_BLUE, gBattleUnitA.battle_avoid);

	str = GetItemRangeString(item);
	Text_InsertDrawString(gStatScreenSt.text + STATSCREEN_TEXT_EQUIPRANGE,
		47 - GetStringTextLen(str), TEXT_COLOR_SYSTEM_BLUE, str);

	for (i = 0; i < 8; ++i)
	{
		gUiTmScratchA[TM_OFFSET(2 + i, 11)] = TILEREF(0x278 + i, BGPAL_ICONS + 1);
		gUiTmScratchA[TM_OFFSET(2 + i, 12)] = TILEREF(0x270 + i, BGPAL_ICONS + 1);
	}
}