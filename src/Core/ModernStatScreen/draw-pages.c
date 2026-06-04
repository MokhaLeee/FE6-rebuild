#include "prelude.h"
#include "hardware.h"
#include "util.h"
#include "text.h"
#include "msg.h"
#include "face.h"
#include "unit.h"
#include "item.h"
#include "battle.h"
#include "icon.h"
#include "armfunc.h"

#include "klib.h"
#include "statscreen.h"
#include "skill-sys.h"

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
_UNUSED
static void put_multi_line_text(const char *str, struct Text *texts, u16 *tm, int max_line)
{
	int i;

	for (i = 0; i < max_line; i++) {
		PutDrawText(
			&texts[i],
			tm + TM_OFFSET(0, i * 2),
			TEXT_COLOR_SYSTEM_WHITE,
			0, 0, str);

		str = GetStringLineEnd(str);
		if (*str == '\0')
			break;

		str++;
	}
}

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
			TmBuff_MssL0 + TM_OFFSET(2, 2 + i * 2));
	}
}

static struct StatScreenTextInfo const textinfo_rpage2[] = {
	{ gMssSt.texts + MSS_TEXT_P3_WEXP1, TmBuff_MssR0 + TM_OFFSET(3, 2),  TEXT_COLOR_SYSTEM_GOLD, 0, "剣" },
	{ gMssSt.texts + MSS_TEXT_P3_WEXP2, TmBuff_MssR0 + TM_OFFSET(3, 4),  TEXT_COLOR_SYSTEM_GOLD, 0, "槍" },
	{ gMssSt.texts + MSS_TEXT_P3_WEXP3, TmBuff_MssR0 + TM_OFFSET(3, 6),  TEXT_COLOR_SYSTEM_GOLD, 0, "斧" },
	{ gMssSt.texts + MSS_TEXT_P3_WEXP4, TmBuff_MssR0 + TM_OFFSET(3, 8),  TEXT_COLOR_SYSTEM_GOLD, 0, "弓" },
	{ gMssSt.texts + MSS_TEXT_P3_WEXP5, TmBuff_MssR0 + TM_OFFSET(3, 10), TEXT_COLOR_SYSTEM_GOLD, 0, "理" },
	{ gMssSt.texts + MSS_TEXT_P3_WEXP6, TmBuff_MssR0 + TM_OFFSET(3, 12), TEXT_COLOR_SYSTEM_GOLD, 0, "光" },
	{ gMssSt.texts + MSS_TEXT_P3_WEXP7, TmBuff_MssR0 + TM_OFFSET(3, 14), TEXT_COLOR_SYSTEM_GOLD, 0, "闇" },
	{ gMssSt.texts + MSS_TEXT_P3_WEXP8, TmBuff_MssR0 + TM_OFFSET(3, 16), TEXT_COLOR_SYSTEM_GOLD, 0, "杖" },
	{ 0 }, // end
};

static void put_wexp_bar(int num, int x, int y, int kind)
{
	struct Unit *unit = gMssSt.unit;
	int wexp = unit->wexp[kind];

	PutIcon(TmBuff_MssR0 + TM_OFFSET(x, y),
		WTYPE_ICON(kind),
		TILEREF(0, BGPAL_MSS_ICON1));

	PutSpecialChar(
		TmBuff_MssR0 + TM_OFFSET(x + 5, y),
		(wexp >= WEXP_S) ? TEXT_COLOR_SYSTEM_GREEN : TEXT_COLOR_SYSTEM_BLUE,
		GetWeaponLevelSpecialCharFromExp(wexp));

	if (wexp != WEXP_0)
		wexp -= WEXP_E;

	PutDrawUiGauge(
		BGCHR_MSS_STATBAR + 1 + num * 6,
		5,
		TmBuff_MssR1 + TM_OFFSET(x + 3, y + 1),
		TILEREF(0, BGPAL_MSS_STATBAR),
		34,
		k_udiv(k_umod(wexp, (WEXP_D - WEXP_E)) * 33, 48), 0);
}

static void put_rpage2(void)
{
	PutStatScreenText(textinfo_rpage2);

	put_wexp_bar(0, 1, 2, ITEM_KIND_SWORD);
	put_wexp_bar(1, 1, 4, ITEM_KIND_LANCE);
	put_wexp_bar(2, 1, 6, ITEM_KIND_AXE);
	put_wexp_bar(3, 1, 8, ITEM_KIND_BOW);

	put_wexp_bar(4, 1, 10, ITEM_KIND_ANIMA);
	put_wexp_bar(5, 1, 12, ITEM_KIND_LIGHT);
	put_wexp_bar(6, 1, 14, ITEM_KIND_ELDER);
	put_wexp_bar(7, 1, 16, ITEM_KIND_STAFF);
}

/**
 * page 3
 */
static struct StatScreenTextInfo const textinfo_lpage3[] = {
	{ gMssSt.texts + MSS_TEXT_P1_SKILLS, TmBuff_MssL0 + TM_OFFSET(1, 1),  TEXT_COLOR_SYSTEM_GOLD, 0, "Skills:" },
	{ gMssSt.texts + MSS_TEXT_P1_BMAGS, TmBuff_MssL0 + TM_OFFSET(1, 6),  TEXT_COLOR_SYSTEM_GOLD, 0, "B.Magic:" },
	{ 0 }, // end
};

static void put_lpage3(void)
{
	int i;
	struct Unit *unit = gMssSt.unit;
	struct SkillList *slist = GetSkillList(unit);

	PutStatScreenText(textinfo_lpage3);

	for (i = 0; i < slist->amt; i++) {
		PutIcon(
			TmBuff_MssL0 + TM_OFFSET(1 + i * 2, 3),
			SKILL_ICON(slist->sid[i]),
			TILEREF(0, BGPAL_MSS_ICON0)
		);
	}
}

static struct StatScreenTextInfo const textinfo_rpage3[] = {
	{ gMssSt.texts + MSS_TEXT_P2_ATK, TmBuff_MssR0 + TM_OFFSET(1, 3),  TEXT_COLOR_SYSTEM_GOLD, 0, "Attack" },
	{ gMssSt.texts + MSS_TEXT_P2_HIT, TmBuff_MssR0 + TM_OFFSET(1, 5),  TEXT_COLOR_SYSTEM_GOLD, 0, "Hit" },
	{ gMssSt.texts + MSS_TEXT_P2_CRT, TmBuff_MssR0 + TM_OFFSET(1, 7),  TEXT_COLOR_SYSTEM_GOLD, 0, "Crit" },
	{ gMssSt.texts + MSS_TEXT_P2_AVO, TmBuff_MssR0 + TM_OFFSET(1, 9),  TEXT_COLOR_SYSTEM_GOLD, 0, "Avoid" },
	{ gMssSt.texts + MSS_TEXT_P2_DDG, TmBuff_MssR0 + TM_OFFSET(1, 11), TEXT_COLOR_SYSTEM_GOLD, 0, "Dodge" },
	{ gMssSt.texts + MSS_TEXT_P2_SIL, TmBuff_MssR0 + TM_OFFSET(1, 13), TEXT_COLOR_SYSTEM_GOLD, 0, "Silencer" },
	{ gMssSt.texts + MSS_TEXT_P2_RNG, TmBuff_MssR0 + TM_OFFSET(1, 15), TEXT_COLOR_SYSTEM_GOLD, 0, "Range" },
	{ 0 }, // end
};

static void put_rpage3()
{
	const char *str;

	PutStatScreenText(textinfo_rpage3);

	PutNumberOrBlank(TmBuff_MssR0 + TM_OFFSET(7, 3),  TEXT_COLOR_SYSTEM_BLUE, gBattleUnitA.battle_attack);
	PutNumberOrBlank(TmBuff_MssR0 + TM_OFFSET(7, 5),  TEXT_COLOR_SYSTEM_BLUE, gBattleUnitA.battle_hit);
	PutNumberOrBlank(TmBuff_MssR0 + TM_OFFSET(7, 7),  TEXT_COLOR_SYSTEM_BLUE, gBattleUnitA.battle_crit);
	PutNumberOrBlank(TmBuff_MssR0 + TM_OFFSET(7, 9),  TEXT_COLOR_SYSTEM_BLUE, gBattleUnitA.battle_avoid);
	PutNumberOrBlank(TmBuff_MssR0 + TM_OFFSET(7, 11), TEXT_COLOR_SYSTEM_BLUE, gBattleUnitA.battle_dodge);
	PutNumberOrBlank(TmBuff_MssR0 + TM_OFFSET(7, 13), TEXT_COLOR_SYSTEM_BLUE, gBattleUnitA.battle_silencer);

	str = GetItemRangeString(gBattleUnitA.weapon_before);
	Text_InsertDrawString(&gMssSt.texts[MSS_TEXT_P2_RNG], 55 - GetStringTextLen(str), TEXT_COLOR_SYSTEM_BLUE, str);
}

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
		put_lpage3();
		put_rpage3();
		break;

	case 3:
		break;

	default:
		break;
	}
}
