#include "prelude.h"

#include "battle.h"
#include "bm.h"
#include "chapterinfo.h"
#include "chapterevents.h"
#include "event.h"
#include "eventfunctions.h"
#include "map.h"
#include "eventinfo.h"
#include "faction.h"
#include "unit.h"

#include "constants/iids.h"
#include "constants/jids.h"
#include "constants/pids.h"

#include "test_chapter.h"
#include "test_cases.h"
#include "test_probe.h"

#if CONFIG_TEST_MENU

static struct UnitInfo const UnitInfo_TestLevel_Blue[];
static struct UnitInfo const UnitInfo_Test_Red[];
static void TestLevelCap_SetupBattle(struct EventProc *proc);

static EventScr const EventScr_TestBattle_Opening[] = {
	EvtLoadUnits(UnitInfo_TestLevel_Blue)
	EvtMoveWait
	EvtFunc(TestLevelCap_SetupBattle)
	EvtClearSkip
	EvtEnd
};

static EventScr const EventScr_TestBattle_Victory[] = {
	EvtClearSkip
	EvtEnd
};

static EventListScr const EventListScr_TestBattle_Turn[] = {
	EvtListTurn(0, EventScr_TestBattle_Opening, 1, 0, FACTION_BLUE)
	EvtListEnd
};

static EventListScr const EventListScr_TestBattle_Empty[] = {
	EvtListEnd
};

struct ChapterEventInfo const ChapterEventInfo_Test = {
	.event_list_turn = EventListScr_TestBattle_Turn,
	.event_list_talk = EventListScr_TestBattle_Empty,
	.event_list_tile = EventListScr_TestBattle_Empty,
	.event_list_move = EventListScr_TestBattle_Empty,
	.units_red = UnitInfo_Test_Red,
	.units_blue = UnitInfo_TestPrep_Blue,
	.event_script_victory = EventScr_TestBattle_Victory,
};

/* Player-driven level-cap test: Roy starts at level 98 / exp 99 next to a
 * level-99 enemy with 1 HP. The event only prepares the state; the actual
 * attack and level-up are driven by emulator inputs. */
static struct UnitInfo const UnitInfo_TestLevel_Blue[] = {
	{
		.pid = PID_ROY,
		.jid = JID_ROY,
		.autolevel = false,
		.faction_id = FACTION_ID_BLUE,
		.level = 1,
		.x_load = 7,
		.y_load = 6,
		.x_move = 7,
		.y_move = 6,
		.items = { IID_IRONSWORD },
		.ai = { 0 },
	},
	{
		.pid = PID_ALEN,
		.jid = JID_CAVALIER,
		.autolevel = false,
		.faction_id = FACTION_ID_BLUE,
		.level = 1,
		.x_load = 9,
		.y_load = 7,
		.x_move = 9,
		.y_move = 7,
		.items = { IID_IRONSWORD },
		.ai = { 0 },
	},
	{ 0 }, /* end */
};

static struct UnitInfo const UnitInfo_Test_Red[] = {
	{
		.pid = PID_CHAPTER1_BANDIT,
		.jid = JID_FIGHTER,
		.autolevel = false,
		.faction_id = FACTION_ID_RED,
		.level = 1,
		.x_load = 8,
		.y_load = 6,
		.x_move = 8,
		.y_move = 6,
		.items = { IID_IRONAXE },
		.ai = { 0 },
	},
	{
		.pid = PID_CHAPTER1_ARCHER,
		.jid = JID_ARCHER,
		.autolevel = false,
		.faction_id = FACTION_ID_RED,
		.level = 1,
		.x_load = 9,
		.y_load = 10,
		.x_move = 9,
		.y_move = 10,
		.items = { IID_IRONBOW },
		.ai = { 0 },
	},
	{ 0 }, /* end */
};

static void TestLevelCap_SetupBattle(struct EventProc *proc)
{
	struct Unit *roy = GetUnitByPid(PID_ROY);
	struct Unit *alen = GetUnitByPid(PID_ALEN);
	struct Unit *enemy = GetUnitByPid(PID_CHAPTER1_BANDIT);
	u16 flags = 0;

	if (roy == NULL || enemy == NULL)
		return;

	roy->level = 98;
	roy->exp = 99;
	roy->max_hp = 60;
	roy->hp = 60;
	roy->pow = 30;
	roy->skl = 30;
	roy->spd = 20;
	roy->def = 20;
	roy->res = 20;
	roy->lck = 20;

	SetMapCursorPosition(roy->x, roy->y);

	enemy->level = 99;
	enemy->max_hp = 1;
	enemy->hp = 1;
	enemy->pow = 0;
	enemy->skl = 0;
	enemy->spd = 0;
	enemy->def = 0;
	enemy->res = 0;
	enemy->lck = 0;

	/* Promotion on a real map unit: level 20 should stay 20. */
	if (alen != NULL) {
		alen->jinfo = GetJInfo(JID_CAVALIER);
		alen->level = 20;
		UnitInitStats(alen, alen->pinfo);
		alen->level = 20;
		alen->exp = 30;

		UnitPromote(alen, -1);

		test_probe_set_value(2, alen->level);

		if (alen->level == 20 && alen->exp == 0 && alen->jinfo->id == JID_PALADIN)
			flags |= 0x01;
	}

	test_probe_set_flags(flags);
}

struct UnitInfo const UnitInfo_TestPrep_Blue[] = {
	{
		.pid = PID_ROY,
		.jid = JID_ROY,
		.autolevel = false,
		.faction_id = FACTION_ID_BLUE,
		.level = 1,
		.x_load = 7,
		.y_load = 6,
		.x_move = 7,
		.y_move = 6,
		.items = { IID_IRONSWORD },
		.ai = { 0 },
	},
	{
		.pid = PID_MARCUS,
		.jid = JID_PALADIN,
		.autolevel = false,
		.faction_id = FACTION_ID_BLUE,
		.level = 1,
		.x_load = 6,
		.y_load = 5,
		.x_move = 6,
		.y_move = 5,
		.items = { IID_IRONLANCE },
		.ai = { 0 },
	},
	{
		.pid = PID_ALEN,
		.jid = JID_CAVALIER,
		.autolevel = false,
		.faction_id = FACTION_ID_BLUE,
		.level = 1,
		.x_load = 9,
		.y_load = 7,
		.x_move = 9,
		.y_move = 7,
		.items = { IID_IRONSWORD },
		.ai = { 0 },
	},
	{
		.pid = PID_LANCE,
		.jid = JID_CAVALIER,
		.autolevel = false,
		.faction_id = FACTION_ID_BLUE,
		.level = 1,
		.x_load = 9,
		.y_load = 5,
		.x_move = 9,
		.y_move = 5,
		.items = { IID_IRONLANCE },
		.ai = { 0 },
	},
	{
		.pid = PID_BORS,
		.jid = JID_ARMOR,
		.autolevel = false,
		.faction_id = FACTION_ID_BLUE,
		.level = 1,
		.x_load = 10,
		.y_load = 6,
		.x_move = 10,
		.y_move = 6,
		.items = { IID_IRONLANCE },
		.ai = { 0 },
	},
	{
		.pid = PID_WOLT,
		.jid = JID_ARCHER,
		.autolevel = false,
		.faction_id = FACTION_ID_BLUE,
		.level = 1,
		.x_load = 6,
		.y_load = 8,
		.x_move = 6,
		.y_move = 8,
		.items = { IID_IRONBOW },
		.ai = { 0 },
	},
	{
		.pid = PID_LILINA,
		.jid = JID_MAGE,
		.autolevel = false,
		.faction_id = FACTION_ID_BLUE,
		.level = 1,
		.x_load = 8,
		.y_load = 8,
		.x_move = 8,
		.y_move = 8,
		.items = { IID_FIRE },
		.ai = { 0 },
	},
	{
		.pid = PID_ELEN,
		.jid = JID_CLERIC,
		.autolevel = false,
		.faction_id = FACTION_ID_BLUE,
		.level = 1,
		.x_load = 10,
		.y_load = 8,
		.x_move = 10,
		.y_move = 8,
		.items = { IID_LIGHTNING },
		.ai = { 0 },
	},
	{
		.pid = PID_LUGH,
		.jid = JID_MAGE,
		.autolevel = false,
		.faction_id = FACTION_ID_BLUE,
		.level = 1,
		.x_load = 7,
		.y_load = 10,
		.x_move = 7,
		.y_move = 10,
		.items = { IID_FIRE },
		.ai = { 0 },
	},
	{ 0 }, /* end */
};
#endif /* CONFIG_TEST_MENU */
