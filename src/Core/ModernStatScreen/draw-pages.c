#include "prelude.h"
#include "hardware.h"
#include "util.h"
#include "text.h"
#include "msg.h"
#include "face.h"
#include "unit.h"
#include "item.h"
#include "battle.h"
#include "armfunc.h"
#include "klib.h"
#include "statscreen.h"

/**
 * upper
 */
static void put_upage(void)
{
	int x_offset, x_text;
	char *str;
	struct Unit *unit = gMssSt.unit;

	PutFaceChibi(GetUnitChibiId(unit),
		TmBuff_MssU0 + TM_OFFSET(1, 1),
		BGCHR_MSS_FACE, BGPAL_MSS_FACE, FALSE);

	/* level & exp */
	x_offset = 5;

	PutTwoSpecialChar(TmBuff_MssU0 + TM_OFFSET(x_offset + 0, 1), TEXT_COLOR_SYSTEM_GOLD, TEXT_SPECIAL_LV_A, TEXT_SPECIAL_LV_B);
	PutNumberOrBlank(TmBuff_MssU0 + TM_OFFSET(x_offset + 3, 1), TEXT_COLOR_SYSTEM_BLUE, unit->level);
	PutSpecialChar(TmBuff_MssU0 + TM_OFFSET(x_offset + 4, 1), TEXT_COLOR_SYSTEM_GOLD, TEXT_SPECIAL_EXP_E);
	PutNumberOrBlank(TmBuff_MssU0 + TM_OFFSET(x_offset + 6, 1), TEXT_COLOR_SYSTEM_BLUE, unit->exp);

	/* HP */
	PutTwoSpecialChar(TmBuff_MssU0 + TM_OFFSET(x_offset + 0, 3), TEXT_COLOR_SYSTEM_GOLD, TEXT_SPECIAL_HP_A, TEXT_SPECIAL_HP_B);
	PutSpecialChar(TmBuff_MssU0 + TM_OFFSET(x_offset + 4, 3), TEXT_COLOR_SYSTEM_GOLD, TEXT_SPECIAL_SLASH);
	PutNumberOrBlank(TmBuff_MssU0 + TM_OFFSET(x_offset + 3, 3), TEXT_COLOR_SYSTEM_BLUE, GetUnitCurrentHp(unit));
	PutNumberOrBlank(TmBuff_MssU0 + TM_OFFSET(x_offset + 6, 3), TEXT_COLOR_SYSTEM_BLUE, GetUnitMaxHp(unit));

	/* p/j name */
	x_offset = 12;

	str = DecodeMsg(unit->pinfo->msg_name);
	x_text = GetStringTextCenteredPos(8 * 7, str);

	PutDrawText(
		&gMssSt.texts[MSS_TEXT_PNAME],
		TmBuff_MssU0 + TM_OFFSET(x_offset, 1),
		TEXT_COLOR_SYSTEM_WHITE,
		x_text, 0, str);

	str = DecodeMsg(unit->jinfo->msg_name);
	x_text = GetStringTextCenteredPos(8 * 7, str);

	PutDrawText(
		&gMssSt.texts[MSS_TEXT_JNAME],
		TmBuff_MssU0 + TM_OFFSET(x_offset, 3),
		TEXT_COLOR_SYSTEM_WHITE,
		x_text, 0, str);
}

/**
 * page 0
 */
static void put_lpage1(void)
{
}

static void mss_PutNumberBonus(int number, u16 *tm)
{
	if (number == 0)
		return;

	if (number < 0) {
		u16 tileref = gActiveFont->tileref;

		gActiveFont->tileref |= BGPAL_MSS_STATBAR << 0xC;
		PutSpecialChar(tm, 3, TEXT_SPECIAL_DASH);
		PutNumberSmall(tm + ((number >= 10) ? 2 : 1), 3, -number);
		gActiveFont->tileref = tileref;
		return;
	}

	PutSpecialChar(tm, TEXT_COLOR_SYSTEM_GREEN, TEXT_SPECIAL_PLUS);
	PutNumberSmall(tm + ((number >= 10) ? 2 : 1), TEXT_COLOR_SYSTEM_GREEN, number);
}

static void mss_put_stat(int num, int x, int y, int base, int total, int max)
{
	int bonus = total - base;

	PutNumberOrBlank(TmBuff_MssR0 + TM_OFFSET(x, y),
		(base == max) ? TEXT_COLOR_SYSTEM_GREEN : TEXT_COLOR_SYSTEM_BLUE, base);

	mss_PutNumberBonus(bonus, TmBuff_MssR0 + TM_OFFSET(x + 1, y));

	if (total > 30) {
		total = 30;
		bonus = total - base;
	}

	PutDrawUiGauge(
		BGCHR_MSS_STATBAR + 1 + num * 6, 6,
		TmBuff_MssR1 + TM_OFFSET(x - 2, y + 1),
		TILEREF(0, BGPAL_MSS_STATBAR),
		k_udiv(max * 41, 30),
		k_udiv(base * 41, 30),
		bonus > 0 ? k_udiv(bonus * 41, 30) : -k_udiv(-bonus * 41, 30));
}

static struct StatScreenTextInfo const textinfo_rpage1[] = {
	{ gMssSt.texts + MSS_TEXT_POW, TmBuff_MssR0 + TM_OFFSET(1, 2),  TEXT_COLOR_SYSTEM_GOLD, 0, "Str" },
	{ gMssSt.texts + MSS_TEXT_MAG, TmBuff_MssR0 + TM_OFFSET(1, 4),  TEXT_COLOR_SYSTEM_GOLD, 0, "Mag" },
	{ gMssSt.texts + MSS_TEXT_SKL, TmBuff_MssR0 + TM_OFFSET(1, 6),  TEXT_COLOR_SYSTEM_GOLD, 0, "Skl" },
	{ gMssSt.texts + MSS_TEXT_SPD, TmBuff_MssR0 + TM_OFFSET(1, 8),  TEXT_COLOR_SYSTEM_GOLD, 0, "Spd" },
	{ gMssSt.texts + MSS_TEXT_DEF, TmBuff_MssR0 + TM_OFFSET(1, 10), TEXT_COLOR_SYSTEM_GOLD, 0, "Def" },
	{ gMssSt.texts + MSS_TEXT_RES, TmBuff_MssR0 + TM_OFFSET(1, 12), TEXT_COLOR_SYSTEM_GOLD, 0, "Res" },
	{ gMssSt.texts + MSS_TEXT_LCK, TmBuff_MssR0 + TM_OFFSET(1, 14), TEXT_COLOR_SYSTEM_GOLD, 0, "Lck" },
	{ gMssSt.texts + MSS_TEXT_MOV, TmBuff_MssR0 + TM_OFFSET(1, 16), TEXT_COLOR_SYSTEM_GOLD, 0, "Mov" },
	{ 0 }, // end
};

static void put_rpage1()
{
	struct Unit *unit = gMssSt.unit;

	PutStatScreenText(textinfo_rpage1);

	mss_put_stat(0, 5, 2,  unit->pow, GetUnitPower(unit), GetUnitMaxStatusPow(unit));
	mss_put_stat(1, 5, 4,  unit->mag, GetUnitMagic(unit), GetUnitMaxStatusMag(unit));
	mss_put_stat(2, 5, 6,  unit->skl, GetUnitSkill(unit), GetUnitMaxStatusSkl(unit));
	mss_put_stat(3, 5, 8,  unit->spd, GetUnitSpeed(unit), GetUnitMaxStatusSpd(unit));
	mss_put_stat(4, 5, 10,  unit->def, GetUnitDefense(unit), GetUnitMaxStatusDef(unit));
	mss_put_stat(5, 5, 12, unit->res, GetUnitResistance(unit), GetUnitMaxStatusRes(unit));
	mss_put_stat(6, 5, 14, unit->lck, GetUnitLuck(unit), GetUnitMaxStatusLck(unit));
	mss_put_stat(7, 5, 16, UNIT_MOV_BASE(unit), GetUnitMovement(unit), GetUnitMaxStatusMov(unit));
}

/**
 * page 1
 */
static void put_lpage2(void)
{
	int i;
	struct Unit *unit = gMssSt.unit;

	for (i = 0; i < ITEMSLOT_INV_COUNT; i++) {
		int item = unit->items[i];

		if (item == 0)
			break;

		DrawItemStatScreenLine(
			&gMssSt.texts[MSS_TEXT_ITEM1 + i],
			item, IsItemDisplayUsable(unit, item),
			TmBuff_MssL0 + TM_OFFSET(2, 1 + i * 2));
	}
}

static void put_rpage2()
{}

/**
 * total
 */
void Mss_PreparePage(struct ProcMss *proc)
{
	CpuFastFill(0, TmBuff_MssU0, sizeof(TmBuff_MssU0));
	CpuFastFill(0, TmBuff_MssU2, sizeof(TmBuff_MssU2));

	CpuFastFill(0, TmBuff_MssL0, sizeof(TmBuff_MssL0));
	CpuFastFill(0, TmBuff_MssL1, sizeof(TmBuff_MssL1));
	CpuFastFill(0, TmBuff_MssL2, sizeof(TmBuff_MssL2));

	CpuFastFill(0, TmBuff_MssR0, sizeof(TmBuff_MssR0));
	CpuFastFill(0, TmBuff_MssR1, sizeof(TmBuff_MssR1));
	CpuFastFill(0, TmBuff_MssR2, sizeof(TmBuff_MssR2));

	Decompress(Tsa_Mss_Upper, gBuf);
	TmApplyTsa(TmBuff_MssU2, gBuf, TILEREF(BGCHR_MSS_UI, BGPAL_MSS_UI));

	Decompress(Tsa_Mss_Right, gBuf);
	TmApplyTsa(TmBuff_MssR2, gBuf, TILEREF(BGCHR_MSS_UI, BGPAL_MSS_UI));

	Decompress(Tsa_Mss_Left, gBuf);
	TmApplyTsa(TmBuff_MssL2, gBuf, TILEREF(BGCHR_MSS_UI, BGPAL_MSS_UI));

	put_upage();

	switch (proc->page) {
	case 0:
		put_lpage1();
		put_rpage1();
		break;

	case 1:
		put_lpage2();
		put_rpage2();
		break;

	case 2:
		break;

	case 3:
		break;

	default:
		break;
	}
}
