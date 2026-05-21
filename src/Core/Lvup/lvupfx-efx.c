#include "prelude.h"
#include "banim.h"
#include "hardware.h"
#include "unit.h"
#include "manim.h"
#include "msg.h"
#include "text.h"
#include "constants/songs.h"

extern const u16 sEfxLvupPartsPos[];

const char *EkrLvupMsgs[8] = {
	"HP",  // TEXT("ＨＰ", "hp"),
	"Str", // TEXT("力",   "str"),
	"Skl", // TEXT("技",   "skl"),
	"Spd", // TEXT("速さ", "spd"),
	"Mag", // TEXT("魔力", "mag"),
	"Lck", // TEXT("幸運", "lck"),
	"Def", // TEXT("守備", "def"),
	"Res", // TEXT("魔防", "res")
};

const char gMsg_Lv[] = "LV";

void EkrLvup_InitStatusText(struct ProcEkrlvup *proc)
{
	int i;
	struct BattleUnit *bunit, *bunit2;
	struct Unit *unit;
	struct Text *th;
	const char *str;

	if (proc->anim_this == NULL) {
		struct BattleUnit ** test;
		bunit2 = gpEkrBattleUnitLeft;
		gpEkrLvupUnit = unit = &bunit2->unit;
		test = &gpEkrBattleUnitRight;
		gpEkrLvupBattleUnit = (bunit = *test);
	} else {
		struct BattleUnit ** test;
		bunit2 = gpEkrBattleUnitRight;
		gpEkrLvupUnit = unit = &bunit2->unit;
		test = &gpEkrBattleUnitLeft;
		gpEkrLvupBattleUnit = (bunit = *test);
	}

	if (proc->is_promotion == false) {
		unit = GetUnit(unit->id);

		gEkrLvupPreLevel = bunit2->previous_level;
		gEkrLvupBaseStatus[EKRLVUP_STAT_HP] = unit->max_hp;
		gEkrLvupBaseStatus[EKRLVUP_STAT_POW] = unit->pow;
		gEkrLvupBaseStatus[EKRLVUP_STAT_MAG] = unit->mag;
		gEkrLvupBaseStatus[EKRLVUP_STAT_LCK] = unit->lck;
		gEkrLvupBaseStatus[EKRLVUP_STAT_SKL] = unit->skl;
		gEkrLvupBaseStatus[EKRLVUP_STAT_SPD] = unit->spd;
		gEkrLvupBaseStatus[EKRLVUP_STAT_DEF] = unit->def;
		gEkrLvupBaseStatus[EKRLVUP_STAT_RES] = unit->res;
		gEkrLvupPostLevel = bunit2->previous_level + 1;

		gEkrLvupPostStatus[EKRLVUP_STAT_HP] = unit->max_hp + bunit2->change_hp;
		gEkrLvupPostStatus[EKRLVUP_STAT_POW] = unit->pow + bunit2->change_pow;
		gEkrLvupPostStatus[EKRLVUP_STAT_MAG] = unit->mag + bunit2->change_mag;
		gEkrLvupPostStatus[EKRLVUP_STAT_LCK] = unit->lck + bunit2->change_lck;
		gEkrLvupPostStatus[EKRLVUP_STAT_SKL] = unit->skl + bunit2->change_skl;
		gEkrLvupPostStatus[EKRLVUP_STAT_SPD] = unit->spd + bunit2->change_spd;
		gEkrLvupPostStatus[EKRLVUP_STAT_DEF] = unit->def + bunit2->change_def;
		gEkrLvupPostStatus[EKRLVUP_STAT_RES] = unit->res + bunit2->change_res;
	} else {
		gEkrLvupPreLevel = unit->level;
		gEkrLvupBaseStatus[EKRLVUP_STAT_HP] = unit->max_hp;
		gEkrLvupBaseStatus[EKRLVUP_STAT_POW] = unit->pow;
		gEkrLvupBaseStatus[EKRLVUP_STAT_MAG] = unit->mag;
		gEkrLvupBaseStatus[EKRLVUP_STAT_LCK] = unit->lck;
		gEkrLvupBaseStatus[EKRLVUP_STAT_SKL] = unit->skl;
		gEkrLvupBaseStatus[EKRLVUP_STAT_SPD] = unit->spd;
		gEkrLvupBaseStatus[EKRLVUP_STAT_DEF] = unit->def;
		gEkrLvupBaseStatus[EKRLVUP_STAT_RES] = unit->res;
		gEkrLvupPostLevel = 1;

		gEkrLvupPostStatus[EKRLVUP_STAT_HP] = bunit->unit.max_hp;
		gEkrLvupPostStatus[EKRLVUP_STAT_POW] = bunit->unit.pow;
		gEkrLvupPostStatus[EKRLVUP_STAT_MAG] = bunit->unit.mag;
		gEkrLvupPostStatus[EKRLVUP_STAT_LCK] = bunit->unit.lck;
		gEkrLvupPostStatus[EKRLVUP_STAT_SKL] = bunit->unit.skl;
		gEkrLvupPostStatus[EKRLVUP_STAT_SPD] = bunit->unit.spd;
		gEkrLvupPostStatus[EKRLVUP_STAT_DEF] = bunit->unit.def;
		gEkrLvupPostStatus[EKRLVUP_STAT_RES] = bunit->unit.res;
	}

	InitTextFont(&gBanimFont, (u8 *)BG_VRAM + VRAMOFF_BG_EKRLVUP_FONT, VRAMOFF_BG_EKRLVUP_FONT / 0x20, 0);

	for (i = 0; i < EKRLVUP_STAT_MAX; i++) {
		int text_x;

		str = EkrLvupMsgs[i];

		InitText(&gBanimText[i], 3);
		text_x = GetStringTextLen(str);
		text_x = (0x10 - text_x) >> 1;
		if (text_x < 0)
			text_x = 0;

		Text_SetCursor(&gBanimText[i], text_x);
		Text_SetColor(&gBanimText[i], TEXT_COLOR_SYSTEM_GOLD);
		Text_DrawString(&gBanimText[i], str);
		PutText(&gBanimText[i], gBg2Tm + sEfxLvupPartsPos[i]);
	}

	for (i = 0; i < EKRLVUP_STAT_MAX; i++) {
		InitText(&gBanimText[EKRLVUP_STAT_MAX + i], 2);
		Text_SetCursor(&gBanimText[EKRLVUP_STAT_MAX + i], 8);
		Text_SetColor(&gBanimText[EKRLVUP_STAT_MAX + i], TEXT_COLOR_SYSTEM_BLUE);
		Text_DrawNumber(&gBanimText[EKRLVUP_STAT_MAX + i], gEkrLvupBaseStatus[i]);
		PutText(&gBanimText[EKRLVUP_STAT_MAX + i], gBg2Tm + 3 + sEfxLvupPartsPos[i]);
	}

	/* class */
	th = &gBanimText[EKRLVUP_STAT_MAX + EKRLVUP_STAT_CLASS];
	InitText(th, 8);
	Text_DrawString(th,
		DecodeMsg(gpEkrLvupUnit->jinfo->msg_name));
	PutText(th, gBg2Tm + TM_OFFSET(2, 7));

	/* level msg */
	th = &gBanimText[EKRLVUP_STAT_MAX + EKRLVUP_STAT_LV_MSG];
	InitText(th, 3);
	Text_SetColor(th, TEXT_COLOR_SYSTEM_GOLD);
	Text_DrawString(th, gMsg_Lv);
	PutText(th, gBg2Tm + TM_OFFSET(10, 7));

	/* level value */
	th = &gBanimText[EKRLVUP_STAT_MAX + EKRLVUP_STAT_LV_VAL];
	InitText(th, 2);
	Text_SetCursor(th, 8);
	Text_SetColor(th, TEXT_COLOR_SYSTEM_BLUE);
	Text_DrawNumber(th, gEkrLvupPreLevel);
	PutText(th, gBg2Tm + TM_OFFSET(13, 7));
}
