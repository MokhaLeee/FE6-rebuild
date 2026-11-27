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
#include "support.h"

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

	/*
	 * The chibi goes last: it is the only slow part (it decompresses into
	 * CHR VRAM), and this function is also called early by Mss_PreparePage()
	 * to rotate the shared panel glyphs back in. Doing the text first keeps
	 * that rewrite just a few hundred cycles after the glyph slots were
	 * cleared, instead of after a decompression that the scanout could catch.
	 */
	PutFaceChibi(GetUnitChibiId(unit),
		TmBuff_MssU0 + TM_OFFSET(1, 1),
		BGCHR_MSS_FACE, BGPAL_MSS_FACE, FALSE);
}

/**
 * page 0 unit card
 */
static struct StatScreenTextInfo const textinfo_dual_side[] = {
	{ gMssSt.texts + MSS_TEXT_DUAL_COND_LBL,  TmBuff_MssD0 + TM_OFFSET(13, 1), TEXT_COLOR_SYSTEM_GOLD, 0, "Cond" },
	{ gMssSt.texts + MSS_TEXT_DUAL_AFFIN_LBL, TmBuff_MssD0 + TM_OFFSET(13, 5), TEXT_COLOR_SYSTEM_GOLD, 0, "Affin" },
	{ gMssSt.texts + MSS_TEXT_DUAL_SUP_LBL,   TmBuff_MssD0 + TM_OFFSET(13, 9), TEXT_COLOR_SYSTEM_GOLD, 0, "Sup" },
	{ 0 }, // end
};

static struct StatScreenTextInfo const textinfo_dual_footer[] = {
	{ gMssSt.texts + MSS_TEXT_DUAL_CON_LBL, TmBuff_MssD0 + TM_OFFSET(2, 16),  TEXT_COLOR_SYSTEM_GOLD, 0, "Con" },
	{ gMssSt.texts + MSS_TEXT_DUAL_AID_LBL, TmBuff_MssD0 + TM_OFFSET(10, 16), TEXT_COLOR_SYSTEM_GOLD, 0, "Aid" },
	{ 0 }, // end
};

static int dual_best_support_level(struct Unit *unit)
{
	int count = GetUnitSupportCount(unit);
	int best = 0;
	int i;

	if (count > UNIT_SUPPORT_COUNT)
		count = UNIT_SUPPORT_COUNT;

	for (i = 0; i < count; i++) {
		int level = GetUnitSupportLevel(unit, i);

		if (level > best)
			best = level;
	}

	return best;
}

/*
 * The portrait takes the top left, so the identity and the fields page 1 does
 * not show (Cond, Affin, support rank, Con, Aid) sit beside and under it.
 * Everything lands in the D0 buffer, which slide_dual_left() moves as one block.
 */
static void put_dual_card(void)
{
	struct Unit *unit = gMssSt.unit;
	u16 *tm = TmBuff_MssD0;
	char *str;

	PutStatScreenText(textinfo_dual_side);

	PutDrawText(&gMssSt.texts[MSS_TEXT_DUAL_COND],
		tm + TM_OFFSET(13, 3), TEXT_COLOR_SYSTEM_BLUE, 0, 0,
		GetUnitStatusName(unit));

	if (unit->pinfo->affinity != 0) {
		/* affinity icons live in the second icon palette bank, like the
		 * support list on page 3 and the vanilla personal page */
		PutIcon(tm + TM_OFFSET(13, 7),
			GetUnitAffinityIcon(unit), TILEREF(0, BGPAL_MSS_ICON1));

		PutDrawText(&gMssSt.texts[MSS_TEXT_DUAL_AFFIN],
			tm + TM_OFFSET(15, 7), TEXT_COLOR_SYSTEM_BLUE, 0, 0,
			GetAffinityName(unit->pinfo->affinity));
	}

	PutSpecialChar(tm + TM_OFFSET(17, 9), TEXT_COLOR_SYSTEM_BLUE,
		GetSupportLevelSpecialChar(dual_best_support_level(unit)));

	/* level / exp on the name row, hp on the class row: PutNumber() writes
	 * leftwards from the ones digit */
	PutTwoSpecialChar(tm + TM_OFFSET(12, 12), TEXT_COLOR_SYSTEM_GOLD,
		TEXT_SPECIAL_LV_A, TEXT_SPECIAL_LV_B);
	PutNumberOrBlank(tm + TM_OFFSET(15, 12), TEXT_COLOR_SYSTEM_BLUE, unit->level);
	PutSpecialChar(tm + TM_OFFSET(16, 12), TEXT_COLOR_SYSTEM_GOLD, TEXT_SPECIAL_EXP_E);
	PutNumberOrBlank(tm + TM_OFFSET(18, 12), TEXT_COLOR_SYSTEM_BLUE, unit->exp);

	PutTwoSpecialChar(tm + TM_OFFSET(12, 14), TEXT_COLOR_SYSTEM_GOLD,
		TEXT_SPECIAL_HP_A, TEXT_SPECIAL_HP_B);
	PutNumberOrBlank(tm + TM_OFFSET(15, 14), TEXT_COLOR_SYSTEM_BLUE, GetUnitCurrentHp(unit));
	PutSpecialChar(tm + TM_OFFSET(16, 14), TEXT_COLOR_SYSTEM_GOLD, TEXT_SPECIAL_SLASH);
	PutNumberOrBlank(tm + TM_OFFSET(18, 14), TEXT_COLOR_SYSTEM_BLUE, GetUnitMaxHp(unit));

	/*
	 * Name and class are left aligned in the left column, level/exp and hp sit
	 * to their right. PutText() writes the whole slot, so each needs its own
	 * tilemap base; both start at x=2 like the Con/Aid labels below them.
	 */
	str = DecodeMsg(unit->pinfo->msg_name);
	PutDrawText(&gMssSt.texts[MSS_TEXT_DUAL_NAME],
		tm + TM_OFFSET(2, 12), TEXT_COLOR_SYSTEM_WHITE, 0, 0, str);

	str = DecodeMsg(unit->jinfo->msg_name);
	PutDrawText(&gMssSt.texts[MSS_TEXT_DUAL_JNAME],
		tm + TM_OFFSET(2, 14), TEXT_COLOR_SYSTEM_WHITE, 0, 0, str);

	/* footer: con / aid */
	PutStatScreenText(textinfo_dual_footer);

	PutNumberOrBlank(tm + TM_OFFSET(7, 16), TEXT_COLOR_SYSTEM_BLUE, GetUnitCon(unit));
	PutNumberOrBlank(tm + TM_OFFSET(15, 16), TEXT_COLOR_SYSTEM_BLUE, GetUnitAid(unit));
}

/*
 * Page 1 left panel: skills. The layout adapts to how many there are.
 *
 *  0            "No skills"
 *  1..3         one icon + name per row
 *  more         icons only, up to 9 per row and 5 rows
 *
 * Black magic is not listed here: the concept belongs to the cskillsys port and
 * has no data source yet, so a label plus rows would always be empty. Add the
 * list (and rerun the split) when that port lands.
 */
enum {
	MSS_LPAGE1_NAME_ROWS = 3,
	MSS_LPAGE1_ICON_COLS = 9,
	MSS_LPAGE1_ICON_ROWS = 5,
};

static struct StatScreenTextInfo const textinfo_lpage1[] = {
	{ gMssSt.texts + MSS_TEXT_P1_SKILLS, TmBuff_MssL0 + TM_OFFSET(1, 1), TEXT_COLOR_SYSTEM_GOLD, 0, "Skills:" },
	{ 0 }, // end
};

static void put_lpage1(void)
{
	struct Unit *unit = gMssSt.unit;
	struct SkillList *slist = GetSkillList(unit);
	int count = slist->amt;
	int i;

	PutStatScreenText(textinfo_lpage1);

	if (count == 0) {
		PutDrawText(&gMssSt.texts[MSS_TEXT_P1_NOSKILL],
			TmBuff_MssL0 + TM_OFFSET(3, 3), TEXT_COLOR_SYSTEM_GRAY, 0, 0, "No skills");
		return;
	}

	if (count <= MSS_LPAGE1_NAME_ROWS) {
		for (i = 0; i < count; i++) {
			int sid = slist->sid[i];
			int y = 3 + i * 2;
			char *name = GetSkillNameStr(sid);

			PutIcon(TmBuff_MssL0 + TM_OFFSET(1, y),
				SKILL_ICON(sid), TILEREF(0, BGPAL_MSS_ICON0));

			/*
			 * A name wider than its slot would be drawn into the next one's
			 * glyphs. Drop it and keep the icon instead of corrupting the
			 * neighbouring rows.
			 */
			if (GetStringTextLen(name) > 16 * 8)
				continue;

			PutDrawText(&gMssSt.texts[MSS_TEXT_P1_SKILL1 + i],
				TmBuff_MssL0 + TM_OFFSET(3, y),
				TEXT_COLOR_SYSTEM_WHITE, 0, 0, name);
		}

		return;
	}

	/* too many for names: nine 16x16 icons per row, five rows */
	for (i = 0; i < count && i < MSS_LPAGE1_ICON_COLS * MSS_LPAGE1_ICON_ROWS; i++) {
		int col = i;
		int row = 0;

		while (col >= MSS_LPAGE1_ICON_COLS) {
			col -= MSS_LPAGE1_ICON_COLS;
			row++;
		}

		PutIcon(TmBuff_MssL0 + TM_OFFSET(1 + col * 2, 3 + row * 2),
			SKILL_ICON(slist->sid[i]), TILEREF(0, BGPAL_MSS_ICON0));
	}
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

static void put_rpage1_labels(void)
{
	PutStatScreenText(textinfo_rpage1);
}

static void put_rpage1_stats(void)
{
	struct Unit *unit = gMssSt.unit;

	mss_put_stat(0, 5, 2,  unit->pow, GetUnitPower(unit), GetUnitMaxStatusPow(unit));
	mss_put_stat(1, 5, 4,  unit->mag, GetUnitMagic(unit), GetUnitMaxStatusMag(unit));
	mss_put_stat(2, 5, 6,  unit->skl, GetUnitSkill(unit), GetUnitMaxStatusSkl(unit));
	mss_put_stat(3, 5, 8,  unit->spd, GetUnitSpeed(unit), GetUnitMaxStatusSpd(unit));
	mss_put_stat(4, 5, 10,  unit->def, GetUnitDefense(unit), GetUnitMaxStatusDef(unit));
	mss_put_stat(5, 5, 12, unit->res, GetUnitResistance(unit), GetUnitMaxStatusRes(unit));
	mss_put_stat(6, 5, 14, unit->lck, GetUnitLuck(unit), GetUnitMaxStatusLck(unit));
	mss_put_stat(7, 5, 16, UNIT_MOV_BASE(unit), GetUnitMovement(unit), GetUnitMaxStatusMov(unit));
}

static void put_rpage1()
{
	put_rpage1_labels();
	put_rpage1_stats();
}

/**
 * page 1
 */
enum {
	MSS_EQUIP_LINE = 25,
	MSS_EQUIP_LINE_END = 26,
	MSS_EQUIP_LINE_X = 1,
	MSS_EQUIP_LINE_WIDTH = 17,
};

static void put_equip_line(int slot)
{
	u16 *tm = TmBuff_MssL1 + TM_OFFSET(MSS_EQUIP_LINE_X, 3 + slot * 2);
	int i;

	/* thin underline under the equipped item, fading out under the "E" */
	for (i = 0; i < MSS_EQUIP_LINE_WIDTH - 1; i++) {
		tm[i] = TILEREF(BGCHR_MSS_UI + MSS_EQUIP_LINE, BGPAL_MSS_UI);
	}

	tm[MSS_EQUIP_LINE_WIDTH - 1] = TILEREF(BGCHR_MSS_UI + MSS_EQUIP_LINE_END, BGPAL_MSS_UI);
}

static void put_item_slot(int i, int equipped_slot)
{
	struct Unit *unit = gMssSt.unit;
	struct Text *text = &gMssSt.texts[MSS_TEXT_ITEM1 + i];
	u16 *tm = TmBuff_MssL0 + TM_OFFSET(2, 2 + i * 2);
	int item = unit->items[i];

	if (item != 0) {
		DrawItemStatScreenLine(text, item, IsItemDisplayUsable(unit, item), tm);

		if (i == equipped_slot) {
			put_equip_line(i);
			PutSpecialChar(tm + 15, TEXT_COLOR_SYSTEM_WHITE, TEXT_SPECIAL_E);
		}
	} else {
		ClearText(text);
		PutDrawText(text, tm + 2, TEXT_COLOR_SYSTEM_GRAY, 0, 0, "---");
		PutSpecialChar(tm, TEXT_COLOR_SYSTEM_GRAY, TEXT_SPECIAL_DASH);
		PutNumberOrBlank(tm + 11, TEXT_COLOR_SYSTEM_GRAY, 0xFF);
		PutSpecialChar(tm + 12, TEXT_COLOR_SYSTEM_GRAY, TEXT_SPECIAL_SLASH);
		PutNumberOrBlank(tm + 14, TEXT_COLOR_SYSTEM_GRAY, 0xFF);
	}
}

static void put_item_info(int y)
{
	struct Unit *unit = gMssSt.unit;
	struct Text *text = &gMssSt.texts[MSS_TEXT_P2_ITEMINFO];
	int item = GetUnitEquippedWeapon(unit);
	int rank_special = -1;
	int rank_color = TEXT_COLOR_SYSTEM_BLUE;

	ClearText(text);

	if (item == 0) {
		Text_InsertDrawString(text, 0, TEXT_COLOR_SYSTEM_GRAY, "No weapon");
	} else {
		int kind = GetItemKind(item);

		rank_special = GetWeaponLevelSpecialCharFromExp(unit->wexp[kind]);
		rank_color = (unit->wexp[kind] >= WEXP_S)
			? TEXT_COLOR_SYSTEM_GREEN : TEXT_COLOR_SYSTEM_BLUE;

		Text_InsertDrawString(text, 0, TEXT_COLOR_SYSTEM_GOLD, "Rank");
		Text_InsertDrawString(text, 48, TEXT_COLOR_SYSTEM_GOLD, "Wgt");
		Text_InsertDrawNumberOrBlank(text, 72, TEXT_COLOR_SYSTEM_BLUE, GetItemWeight(item));
		Text_InsertDrawString(text, 88, TEXT_COLOR_SYSTEM_GOLD, "Rng");
		Text_InsertDrawString(text, 112, TEXT_COLOR_SYSTEM_BLUE, GetItemRangeString(item));
	}

	PutText(text, TmBuff_MssL0 + TM_OFFSET(1, y));

	if (rank_special >= 0) {
		PutSpecialChar(TmBuff_MssL0 + TM_OFFSET(5, y), rank_color, rank_special);
	}
}

static void put_lpage2(void)
{
	int i;
	int count = 0;
	int equipped_slot = GetUnitEquippedWeaponSlot(gMssSt.unit);
	bool show_info;
	int slots;

	for (i = 0; i < ITEMSLOT_INV_COUNT; i++) {
		if (gMssSt.unit->items[i] != 0)
			count++;
	}

	/*
	 * Five 16px item rows already fill the content area down to the lower
	 * border. When there is a free slot, use that last line for the
	 * equipped weapon summary; a full inventory keeps all five item rows.
	 */
	show_info = count < ITEMSLOT_INV_COUNT;
	slots = show_info ? ITEMSLOT_INV_COUNT - 1 : ITEMSLOT_INV_COUNT;

	for (i = 0; i < slots; i++)
		put_item_slot(i, equipped_slot);

	if (show_info)
		put_item_info(2 + slots * 2);
}

static struct StatScreenTextInfo const textinfo_rpage2[] = {
	{ gMssSt.texts + MSS_TEXT_P2_ATK, TmBuff_MssR0 + TM_OFFSET(1, 2),  TEXT_COLOR_SYSTEM_GOLD, 0, "Attack" },
	{ gMssSt.texts + MSS_TEXT_P2_HIT, TmBuff_MssR0 + TM_OFFSET(1, 4),  TEXT_COLOR_SYSTEM_GOLD, 0, "Hit" },
	{ gMssSt.texts + MSS_TEXT_P2_CRT, TmBuff_MssR0 + TM_OFFSET(1, 6),  TEXT_COLOR_SYSTEM_GOLD, 0, "Crit" },
	{ gMssSt.texts + MSS_TEXT_P2_AVO, TmBuff_MssR0 + TM_OFFSET(1, 8),  TEXT_COLOR_SYSTEM_GOLD, 0, "Avoid" },
	{ gMssSt.texts + MSS_TEXT_P2_DDG, TmBuff_MssR0 + TM_OFFSET(1, 10), TEXT_COLOR_SYSTEM_GOLD, 0, "Dodge" },
	{ gMssSt.texts + MSS_TEXT_P2_SIL, TmBuff_MssR0 + TM_OFFSET(1, 12), TEXT_COLOR_SYSTEM_GOLD, 0, "Silencer" },
	{ gMssSt.texts + MSS_TEXT_P2_RNG, TmBuff_MssR0 + TM_OFFSET(1, 14), TEXT_COLOR_SYSTEM_GOLD, 0, "Range" },
	{ gMssSt.texts + MSS_TEXT_P2_AS,  TmBuff_MssR0 + TM_OFFSET(1, 16), TEXT_COLOR_SYSTEM_GOLD, 0, "AS" },
	{ 0 }, // end
};

static void put_rpage2()
{
	const char *str;

	PutStatScreenText(textinfo_rpage2);

	PutNumberOrBlank(TmBuff_MssR0 + TM_OFFSET(8, 2),  TEXT_COLOR_SYSTEM_BLUE, gBattleUnitA.battle_attack);
	PutNumberOrBlank(TmBuff_MssR0 + TM_OFFSET(8, 4),  TEXT_COLOR_SYSTEM_BLUE, gBattleUnitA.battle_hit);
	PutNumberOrBlank(TmBuff_MssR0 + TM_OFFSET(8, 6),  TEXT_COLOR_SYSTEM_BLUE, gBattleUnitA.battle_crit);
	PutNumberOrBlank(TmBuff_MssR0 + TM_OFFSET(8, 8),  TEXT_COLOR_SYSTEM_BLUE, gBattleUnitA.battle_avoid);
	PutNumberOrBlank(TmBuff_MssR0 + TM_OFFSET(8, 10), TEXT_COLOR_SYSTEM_BLUE, gBattleUnitA.battle_dodge);
	PutNumberOrBlank(TmBuff_MssR0 + TM_OFFSET(8, 12), TEXT_COLOR_SYSTEM_BLUE, gBattleUnitA.battle_silencer);
	PutNumberOrBlank(TmBuff_MssR0 + TM_OFFSET(8, 16), TEXT_COLOR_SYSTEM_BLUE, gBattleUnitA.battle_speed);

	str = GetItemRangeString(gBattleUnitA.weapon_before);
	Text_InsertDrawString(&gMssSt.texts[MSS_TEXT_P2_RNG], 62 - GetStringTextLen(str), TEXT_COLOR_SYSTEM_BLUE, str);
}

/**
 * page 2 (SUPPORT / WEAPON)
 */
enum { MSS_SUPPORT_MAX_SHOW = MAX_SIMULTANEOUS_SUPPORT_COUNT_PER_UNIT };

static void put_lpage3(void)
{
	int count, i, j, line, y, rank_color, affin_icon;
	int order[UNIT_SUPPORT_COUNT];
	struct Unit *unit = gMssSt.unit;
	int text_color = GetUnitTotalSupportLevel(unit) == MAX_SIMULTANEOUS_SUPPORT_COUNT_PER_UNIT
		? TEXT_COLOR_SYSTEM_GREEN : TEXT_COLOR_SYSTEM_WHITE;

	line = 0;
	y = 2;

	count = GetUnitSupportCount(unit);
	if (count > (int) ARRAY_COUNT(order))
		count = ARRAY_COUNT(order);

	for (i = 0; i < count; i++)
		order[i] = i;

	/* Show ranked supports first, then the remaining support candidates. */
	for (i = 1; i < count; i++) {
		int key = order[i];
		int key_level = GetUnitSupportLevel(unit, key);

		for (j = i - 1; j >= 0; j--) {
			if (GetUnitSupportLevel(unit, order[j]) >= key_level)
				break;

			order[j + 1] = order[j];
		}

		order[j + 1] = key;
	}

	for (i = 0; i < count && line < MSS_SUPPORT_MAX_SHOW; i++) {
		int idx = order[i];
		int support_level = GetUnitSupportLevel(unit, idx);
		int pid = GetUnitSupportPid(unit, idx);

		if (pid == 0)
			continue;

		affin_icon = GetAffinityIconByPid(pid);
		if (affin_icon >= 0) {
			PutIcon(TmBuff_MssL0 + TM_OFFSET(1, y),
				affin_icon, TILEREF(0, BGPAL_MSS_ICON1));
		}

		ClearText(&gMssSt.texts[MSS_TEXT_SUPPORT1 + line]);
		PutDrawText(
			&gMssSt.texts[MSS_TEXT_SUPPORT1 + line],
			TmBuff_MssL0 + TM_OFFSET(4, y),
			(support_level != 0) ? text_color : TEXT_COLOR_SYSTEM_WHITE,
			0, 0, DecodeMsg(GetPInfo(pid)->msg_name));

		rank_color = TEXT_COLOR_SYSTEM_GRAY;

		if (support_level != 0) {
			rank_color = TEXT_COLOR_SYSTEM_BLUE;

			if (support_level == SUPPORT_LEVEL_A)
				rank_color = TEXT_COLOR_SYSTEM_GREEN;

			if (text_color == TEXT_COLOR_SYSTEM_GREEN)
				rank_color = TEXT_COLOR_SYSTEM_GREEN;
		}

		PutSpecialChar(TmBuff_MssL0 + TM_OFFSET(14, y),
			rank_color, GetSupportLevelSpecialChar(support_level));

		y += 2;
		line++;
	}

	if (line == 0) {
		ClearText(&gMssSt.texts[MSS_TEXT_NOSUPPORT]);
		PutDrawText(
			&gMssSt.texts[MSS_TEXT_NOSUPPORT],
			TmBuff_MssL0 + TM_OFFSET(1, 2),
			TEXT_COLOR_SYSTEM_GRAY, 0, 0, "No supports");
	}
}

static struct StatScreenTextInfo const textinfo_rpage3[] = {
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

static void put_rpage3(void)
{
	PutStatScreenText(textinfo_rpage3);

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
 * total
 */

/*
 * page 0: the area under the portrait gets a pale pinstriped matting. It is
 * painted only inside the frame's opening (the portrait's 10x9 tile block)
 * and shows through the transparent parts of the portrait art; the rest of
 * the panel keeps the default dark fill painted by Tsa_Mss_Dual.
 */
enum {
	MSS_MATTING_TILE = 21,
	MSS_MATTING_X = 2,
	MSS_MATTING_Y = 2,
	MSS_MATTING_W = 10,
	MSS_MATTING_H = 9,
};

static void put_dual_backdrop(void)
{
	static const u8 pattern[2][2] = {
		{ MSS_MATTING_TILE + 0, MSS_MATTING_TILE + 1 },
		{ MSS_MATTING_TILE + 2, MSS_MATTING_TILE + 3 },
	};
	int x, y;

	for (y = 0; y < MSS_MATTING_H; y++) {
		for (x = 0; x < MSS_MATTING_W; x++)
			TmBuff_MssD2[TM_OFFSET(MSS_MATTING_X + x, MSS_MATTING_Y + y)] =
				TILEREF(BGCHR_MSS_UI + pattern[y & 1][x & 1], BGPAL_MSS_UI);
	}
}

static void put_dual_page(void)
{
	struct Unit *unit = gMssSt.unit;

	/*
	 * Mss_PreparePage() already rewrote these glyphs right after
	 * Mss_InitPageText(), so the scanout never sees blank slots. This call is
	 * the one that puts the labels into the R0 buffer that actually gets
	 * blitted (the earlier copy was wiped by the CpuFastFill above it).
	 */
	put_rpage1_labels();

	/*
	 * Page 0 has no upper panel, but special chars (numbers, LV/HP icons) are
	 * drawn into glyph slots on first use. Drawing the upper into the unused U
	 * buffers keeps that first-use order identical to page 1, so 0 <-> 1 does
	 * not get stale digits while the right panel stays on screen.
	 */
	put_upage();

	put_rpage1_stats();

	/*
	 * The unit card comes after the shared panels: it reuses the digits' glyph
	 * slots, and drawing it last keeps the right panel on the slots it has on
	 * page 1.
	 */
	put_dual_card();

	put_dual_backdrop();

	/*
	 * The frame goes on BG0 and the portrait on BG1. BG0 wins the priority
	 * comparison, so the bottom border sits on the portrait's last scanline
	 * instead of being covered by it.
	 */
	Decompress(Tsa_Mss_FaceFrame, gBuf);
	TmApplyTsa(TmBuff_MssD0 + TM_OFFSET(1, 1), gBuf, TILEREF(BGCHR_MSS_UI, BGPAL_MSS_UI));

	PutFace80x72(TmBuff_MssD1 + TM_OFFSET(2, 2),
		GetUnitFid(unit),
		BGCHR_MSS_FACE_BIG, BGPAL_MSS_FACE);
}

/* Default frame TSA: the three-panel layout that pages 1..3 share. */
static void put_default_frames(void)
{
	Decompress(Tsa_Mss_Upper, gBuf);
	TmApplyTsa(TmBuff_MssU2, gBuf, TILEREF(BGCHR_MSS_UI, BGPAL_MSS_UI));

	Decompress(Tsa_Mss_Right, gBuf);
	TmApplyTsa(TmBuff_MssR2, gBuf, TILEREF(BGCHR_MSS_UI, BGPAL_MSS_UI));

	Decompress(Tsa_Mss_Left, gBuf);
	TmApplyTsa(TmBuff_MssL2, gBuf, TILEREF(BGCHR_MSS_UI, BGPAL_MSS_UI));
}

void Mss_PreparePage(struct ProcMss *proc)
{
	ClearIcons();
	Mss_InitPageText(proc->page);

	/*
	 * 0 <-> 1 keeps the right panel on screen and 1 <-> 2/3 keeps the upper
	 * panel on screen while the page is prepared, so the scanout can catch
	 * their glyph slots between InitPageText() clearing them and the page draw
	 * rewriting them. Redrawing them here, before the rest of the preparation,
	 * closes that window.
	 */
	if (proc->page <= 1)
		put_rpage1_labels();
	if (proc->page != 0)
		put_upage();

	CpuFastFill(0, TmBuff_MssU0, sizeof(TmBuff_MssU0));
	CpuFastFill(0, TmBuff_MssU2, sizeof(TmBuff_MssU2));

	CpuFastFill(0, TmBuff_MssL0, sizeof(TmBuff_MssL0));
	CpuFastFill(0, TmBuff_MssL1, sizeof(TmBuff_MssL1));
	CpuFastFill(0, TmBuff_MssL2, sizeof(TmBuff_MssL2));

	CpuFastFill(0, TmBuff_MssR0, sizeof(TmBuff_MssR0));
	CpuFastFill(0, TmBuff_MssR1, sizeof(TmBuff_MssR1));
	CpuFastFill(0, TmBuff_MssR2, sizeof(TmBuff_MssR2));

	CpuFastFill(0, TmBuff_MssD0, sizeof(TmBuff_MssD0));
	CpuFastFill(0, TmBuff_MssD1, sizeof(TmBuff_MssD1));
	CpuFastFill(0, TmBuff_MssD2, sizeof(TmBuff_MssD2));

	switch (proc->page) {
	case 0:
		/* two-panel layout: full-height left panel, no upper */
		Decompress(Tsa_Mss_Dual, gBuf);
		TmApplyTsa(TmBuff_MssD2, gBuf, TILEREF(BGCHR_MSS_UI, BGPAL_MSS_UI));

		Decompress(Tsa_Mss_Right, gBuf);
		TmApplyTsa(TmBuff_MssR2, gBuf, TILEREF(BGCHR_MSS_UI, BGPAL_MSS_UI));

		put_dual_page();
		break;

	case 1:
		put_default_frames();
		put_upage();
		put_lpage1();
		put_rpage1();
		break;

	case 2:
		put_default_frames();
		put_upage();
		put_lpage2();
		put_rpage2();
		break;

	case 3:
		put_default_frames();
		put_upage();
		put_lpage3();
		put_rpage3();
		break;

	default:
		break;
	}
}
