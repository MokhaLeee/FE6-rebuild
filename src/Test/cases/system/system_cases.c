#include "prelude.h"

#include "arena.h"
#include "battle.h"
#include "menu.h"
#include "random.h"
#include "save.h"
#include "save_game.h"
#include "ui.h"
#include "unit.h"

#include "constants/chapters.h"
#include "constants/jids.h"
#include "constants/pids.h"

#include "test_cases.h"
#include "test_probe.h"
#include "test_scene.h"
#include "testmenu_common.h"

#include "system_cases.h"

#if CONFIG_TEST_MENU

/* Level-cap / promotion self-test.
 *
 * These checks run synchronously from the test menu, so they do not need a
 * real chapter. The only setup they rely on is the unit/job tables, which are
 * already available at the test menu. */

static void level_test_setup_unit(struct Unit *unit, int level)
{
	ClearUnit(unit);
	unit->id = 1;
	unit->pinfo = GetPInfo(PID_ROY);
	unit->jinfo = GetJInfo(JID_ROY);
	unit->level = level;

	UnitInitStats(unit, unit->pinfo);

	/* UnitInitStats sets exp from the level; keep the level explicit so the
	 * caller can decide the starting exp. */
	unit->level = level;
}

static u16 level_test_level_up(void)
{
	struct Unit *host = &gUnitArrayBlue[0];
	u16 flags = 0;

	level_test_setup_unit(host, 98);
	host->exp = 99;
	host->max_hp = 40;
	host->hp = 40;

	memset(&gBattleUnitA, 0, sizeof(gBattleUnitA));
	gBattleUnitA.unit = *host;
	gBattleUnitA.unit.level = 98;
	gBattleUnitA.unit.exp = 199; /* 99 + 100 gained exp */
	gBattleUnitA.exp_gain = 100;

	CheckBattleUnitLevelUp(&gBattleUnitA);

	if (gBattleUnitA.unit.level == 99 && gBattleUnitA.unit.exp == 0xFF)
		flags |= 0x01;

	/* A unit already at the cap must not gain another level. */
	gBattleUnitA.unit.level = 99;
	gBattleUnitA.unit.exp = 100;
	gBattleUnitA.exp_gain = 100;

	CheckBattleUnitLevelUp(&gBattleUnitA);

	if (gBattleUnitA.unit.level == 99 && gBattleUnitA.unit.exp == 0xFF)
		flags |= 0x02;

	return flags;
}

static u16 level_test_promotion(u32 *out_jid)
{
	struct Unit unit;
	u16 flags = 0;

	/* Level 20: keep the level, reset exp, change class. */
	level_test_setup_unit(&unit, 20);
	unit.exp = 30;

	UnitPromote(&unit, -1);

	if (unit.level == 20 && unit.exp == 0 && unit.jinfo->id == JID_ROY_PROMOTED)
		flags |= 0x04;

	/* Level 99: keep the level and use the no-exp sentinel. */
	level_test_setup_unit(&unit, 99);
	unit.exp = 30;

	UnitPromote(&unit, -1);

	if (unit.level == 99 && unit.exp == 0xFF && unit.jinfo->id == JID_ROY_PROMOTED)
		flags |= 0x08;

	*out_jid = (unit.jinfo != NULL) ? unit.jinfo->id : 0;

	return flags;
}

static u16 level_test_arena(void)
{
	int i, level;

	RandInit(1);

	/* High level must not wrap through the 5-bit UnitInfo level field. */
	for (i = 0; i < 64; i++) {
		level = ArenaGetOpposingLevel(99);

		if (level < 1 || level > UNIT_LEVEL_MAX)
			return 0;
	}

	/* Low level must still stay >= 1. */
	for (i = 0; i < 64; i++) {
		level = ArenaGetOpposingLevel(1);

		if (level < 1 || level > UNIT_LEVEL_MAX)
			return 0;
	}

	return 0x10;
}

static u16 level_test_devil(void)
{
	u16 flags = 0;

	if (GetDevilReversalChance(1) == 20
	    && GetDevilReversalChance(20) == 1
	    && GetDevilReversalChance(21) == 1
	    && GetDevilReversalChance(22) == 1
	    && GetDevilReversalChance(99) == 1) {
		flags |= 0x20;
	}

	return flags;
}

static u16 level_test_autolevel(void)
{
	struct Unit expected, actual;
	u16 flags = 0;

	/* Build a promoted unit and autolevel it twice: once through
	 * UnitAutolevel() (which must use UNIT_PROMOTED_AUTOLEVEL_LEVELS) and once
	 * manually with that same count. With the RNG reseeded both runs must
	 * produce identical stats; if UnitAutolevel() used 98 instead of 19 this
	 * would diverge. */
	level_test_setup_unit(&actual, 20);
	actual.jinfo = GetJInfo(JID_ROY_PROMOTED);
	expected = actual;

	RandInit(1234);
	UnitAutolevel(&actual);

	RandInit(1234);
	UnitAutolevelCore(&expected, expected.jinfo->id, UNIT_PROMOTED_AUTOLEVEL_LEVELS);
	UnitAutolevelCore(&expected, expected.jinfo->id, expected.level - 1);

	if (actual.max_hp == expected.max_hp
	    && actual.pow == expected.pow
	    && actual.mag == expected.mag
	    && actual.skl == expected.skl
	    && actual.spd == expected.spd
	    && actual.lck == expected.lck
	    && actual.def == expected.def
	    && actual.res == expected.res) {
		flags |= 0x80;
	}

	return flags;
}

static u16 level_test_save(u32 *out_level, u32 *out_exp)
{
	struct Unit *roy;
	u16 flags = 0;

	test_scene_write_chapter_save(SAVE_GAME0, CHAPTER_1);

	roy = GetUnitByPid(PID_ROY);

	if (roy == NULL) {
		*out_level = 0;
		*out_exp = 0;
		return 0;
	}

	roy->level = 99;
	roy->exp = 3;
	WriteGameSave(SAVE_GAME0);

	/* Clobber RAM so the load must restore the saved values. */
	gPlaySt.chapter = CHAPTER_2;
	ReadGameSave(SAVE_GAME0);

	roy = GetUnitByPid(PID_ROY);

	if (roy != NULL
	    && roy->level == 99
	    && roy->exp == 3
	    && gPlaySt.chapter == CHAPTER_1) {
		flags |= 0x40;
	}

	*out_level = (roy != NULL) ? roy->level : 0;
	*out_exp = (roy != NULL) ? roy->exp : 0;

	return flags;
}

static fu8 system_on_init(struct MenuProc *menu);
static fu8 system_on_select_level_cap(struct MenuProc *menu,
				      struct MenuEntProc *ent);
static fu8 system_on_select_back(struct MenuProc *menu, struct MenuEntProc *ent);

static struct MenuEntInfo CONST_DATA system_entries[] = {
	{
		.label = " Level Cap",
		.available = MenuEntryEnabled,
		.on_select = system_on_select_level_cap,
	},
	{
		.label = " Back",
		.available = MenuEntryEnabled,
		.text_color = TEXT_COLOR_SYSTEM_GREEN,
		.on_select = system_on_select_back,
	},
	{ 0 }, /* end */
};

struct MenuInfo CONST_DATA MenuInfo_TestSystem = {
	.rect = { 9, 4, 12, 0 },
	.entries = system_entries,
	.on_init = system_on_init,
	.on_b_press = system_on_select_back,
};

static fu8 system_on_init(struct MenuProc *menu)
{
	test_probe_set_menu(TEST_MENU_ID_CATEGORY, TEST_MENU_STATE_MENU);

	return 0;
}

static fu8 system_on_select_level_cap(struct MenuProc *menu,
				      struct MenuEntProc *ent)
{
	u16 flags = 0;
	u32 promo_jid = 0;
	u32 saved_level = 0;
	u32 saved_exp = 0;
	bool pass;

	test_probe_set_case(TEST_CATEGORY_SYSTEM, TEST_CASE_LEVEL_CAP);

	flags |= level_test_level_up();
	flags |= level_test_promotion(&promo_jid);
	flags |= level_test_arena();
	flags |= level_test_devil();
	flags |= level_test_autolevel();
	flags |= level_test_save(&saved_level, &saved_exp);

	pass = (flags == 0xFF)
		&& gBattleUnitA.unit.level == 99
		&& gBattleUnitA.unit.exp == 0xFF
		&& promo_jid == JID_ROY_PROMOTED
		&& saved_level == 99
		&& saved_exp == 3;

	test_probe_set_value(0, gBattleUnitA.unit.level);
	test_probe_set_value(1, gBattleUnitA.unit.exp);
	test_probe_set_value(2, promo_jid);
	test_probe_set_value(3, saved_level);
	test_probe_set_flags(flags);
	test_probe_finish(pass);

	return 0;
}

static fu8 system_on_select_back(struct MenuProc *menu, struct MenuEntProc *ent)
{
	StartTestMenuTestRoot();

	return MENU_ACTION_NOCURSOR | MENU_ACTION_CLEAR | MENU_ACTION_END |
	       MENU_ACTION_SE_6B;
}

#endif /* CONFIG_TEST_MENU */
