#include "prelude.h"

#include "battle.h"
#include "chapterinfo.h"
#include "chapterevents.h"
#include "eventfunctions.h"
#include "eventinfo.h"
#include "faction.h"

#include "constants/iids.h"
#include "constants/jids.h"
#include "constants/pids.h"

#include "test_chapter.h"

#if CONFIG_TEST_MENU

extern struct BattleHit CONST_DATA FightScr_DemoScene_RoyVsMarcus[];

static struct UnitInfo const UnitInfo_TestBattle_Blue[] = {
	{
		.pid = PID_ROY,
		.autolevel = false,
		.faction_id = FACTION_ID_BLUE,
		.level = 1,
		.x_load = 5,
		.y_load = 10,
		.x_move = 5,
		.y_move = 10,
		.items = { IID_IRONSWORD },
		.ai = { 0 },
	},
	{
		.pid = PID_MARCUS,
		.autolevel = false,
		.faction_id = FACTION_ID_BLUE,
		.level = 1,
		.x_load = 5,
		.y_load = 11,
		.x_move = 6,
		.y_move = 10,
		.items = { IID_IRONLANCE },
		.ai = { 0 },
	},
	{ 0 }, /* end */
};

static struct UnitInfo const UnitInfo_TestBattle_Red[] = {
	{
		.pid = PID_CHAPTER1_BANDIT,
		.jid = JID_FIGHTER,
		.autolevel = false,
		.faction_id = FACTION_ID_RED,
		.level = 1,
		.x_load = 6,
		.y_load = 5,
		.x_move = 5,
		.y_move = 5,
		.items = { IID_IRONAXE },
		.ai = { 0 },
	},
	{ 0 }, /* end */
};

static EventScr const EventScr_TestBattle_Opening[] = {
	EvtLoadUnits(UnitInfo_TestBattle_Blue)
	EvtMoveWait
	EvtLoadUnits(UnitInfo_TestBattle_Red)
	EvtMoveWait
	EvtFightScript(PID_ROY, PID_CHAPTER1_BANDIT,
		       FightScr_DemoScene_RoyVsMarcus, FALSE)
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

struct ChapterEventInfo const ChapterEventInfo_TestBattle = {
	.event_list_turn = EventListScr_TestBattle_Turn,
	.event_list_talk = EventListScr_TestBattle_Empty,
	.event_list_tile = EventListScr_TestBattle_Empty,
	.event_list_move = EventListScr_TestBattle_Empty,
	.units_red = UnitInfo_TestBattle_Red,
	.units_blue = UnitInfo_TestBattle_Blue,
	.event_script_victory = EventScr_TestBattle_Victory,
};

struct UnitInfo const UnitInfo_TestPrep_Blue[] = {
	{
		.pid = PID_ROY,
		.jid = JID_ROY,
		.autolevel = false,
		.faction_id = FACTION_ID_BLUE,
		.level = 1,
		.x_load = 5,
		.y_load = 10,
		.x_move = 5,
		.y_move = 10,
		.items = { IID_IRONSWORD },
		.ai = { 0 },
	},
	{
		.pid = PID_MARCUS,
		.jid = JID_PALADIN,
		.autolevel = false,
		.faction_id = FACTION_ID_BLUE,
		.level = 1,
		.x_load = 5,
		.y_load = 11,
		.x_move = 6,
		.y_move = 10,
		.items = { IID_IRONLANCE },
		.ai = { 0 },
	},
	{
		.pid = PID_ALEN,
		.jid = JID_CAVALIER,
		.autolevel = false,
		.faction_id = FACTION_ID_BLUE,
		.level = 1,
		.x_load = 4,
		.y_load = 9,
		.x_move = 4,
		.y_move = 9,
		.items = { IID_IRONSWORD },
		.ai = { 0 },
	},
	{
		.pid = PID_LANCE,
		.jid = JID_CAVALIER,
		.autolevel = false,
		.faction_id = FACTION_ID_BLUE,
		.level = 1,
		.x_load = 4,
		.y_load = 10,
		.x_move = 4,
		.y_move = 10,
		.items = { IID_IRONLANCE },
		.ai = { 0 },
	},
	{
		.pid = PID_BORS,
		.jid = JID_ARMOR,
		.autolevel = false,
		.faction_id = FACTION_ID_BLUE,
		.level = 1,
		.x_load = 4,
		.y_load = 11,
		.x_move = 4,
		.y_move = 11,
		.items = { IID_IRONLANCE },
		.ai = { 0 },
	},
	{
		.pid = PID_WOLT,
		.jid = JID_ARCHER,
		.autolevel = false,
		.faction_id = FACTION_ID_BLUE,
		.level = 1,
		.x_load = 4,
		.y_load = 12,
		.x_move = 4,
		.y_move = 12,
		.items = { IID_IRONBOW },
		.ai = { 0 },
	},
	{
		.pid = PID_LILINA,
		.jid = JID_MAGE,
		.autolevel = false,
		.faction_id = FACTION_ID_BLUE,
		.level = 1,
		.x_load = 6,
		.y_load = 10,
		.x_move = 6,
		.y_move = 10,
		.items = { IID_FIRE },
		.ai = { 0 },
	},
	{
		.pid = PID_ELEN,
		.jid = JID_CLERIC,
		.autolevel = false,
		.faction_id = FACTION_ID_BLUE,
		.level = 1,
		.x_load = 6,
		.y_load = 11,
		.x_move = 6,
		.y_move = 11,
		.items = { IID_LIGHTNING },
		.ai = { 0 },
	},
	{
		.pid = PID_LUGH,
		.jid = JID_MAGE,
		.autolevel = false,
		.faction_id = FACTION_ID_BLUE,
		.level = 1,
		.x_load = 6,
		.y_load = 12,
		.x_move = 6,
		.y_move = 12,
		.items = { IID_FIRE },
		.ai = { 0 },
	},
	{ 0 }, /* end */
};

static struct UnitInfo const UnitInfo_TestPrep_Red[] = {
	{
		.pid = PID_CHAPTER1_BANDIT,
		.jid = JID_FIGHTER,
		.autolevel = false,
		.faction_id = FACTION_ID_RED,
		.level = 1,
		.x_load = 10,
		.y_load = 5,
		.x_move = 10,
		.y_move = 5,
		.items = { IID_IRONAXE },
		.ai = { 0 },
	},
	{
		.pid = PID_CHAPTER1_BANDIT,
		.jid = JID_FIGHTER,
		.autolevel = false,
		.faction_id = FACTION_ID_RED,
		.level = 1,
		.x_load = 10,
		.y_load = 6,
		.x_move = 10,
		.y_move = 6,
		.items = { IID_IRONAXE },
		.ai = { 0 },
	},
	{
		.pid = PID_CHAPTER1_BANDIT,
		.jid = JID_FIGHTER,
		.autolevel = false,
		.faction_id = FACTION_ID_RED,
		.level = 1,
		.x_load = 11,
		.y_load = 5,
		.x_move = 11,
		.y_move = 5,
		.items = { IID_IRONAXE },
		.ai = { 0 },
	},
	{
		.pid = PID_CHAPTER1_BANDIT,
		.jid = JID_FIGHTER,
		.autolevel = false,
		.faction_id = FACTION_ID_RED,
		.level = 1,
		.x_load = 11,
		.y_load = 6,
		.x_move = 11,
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
		.x_load = 12,
		.y_load = 5,
		.x_move = 12,
		.y_move = 5,
		.items = { IID_IRONBOW },
		.ai = { 0 },
	},
	{
		.pid = PID_CHAPTER1_4A,
		.jid = JID_FIGHTER,
		.autolevel = false,
		.faction_id = FACTION_ID_RED,
		.level = 1,
		.x_load = 12,
		.y_load = 6,
		.x_move = 12,
		.y_move = 6,
		.items = { IID_STEELAXE },
		.ai = { 0 },
	},
	{
		.pid = PID_CHAPTER1_BANDIT,
		.jid = JID_FIGHTER,
		.autolevel = false,
		.faction_id = FACTION_ID_RED,
		.level = 1,
		.x_load = 12,
		.y_load = 7,
		.x_move = 12,
		.y_move = 7,
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
		.y_load = 6,
		.x_move = 9,
		.y_move = 6,
		.items = { IID_IRONBOW },
		.ai = { 0 },
	},
	{ 0 }, /* end */
};

static EventScr const EventScr_TestPrep_Opening[] = {
	EvtClearSkip
	EvtEnd
};

static EventListScr const EventListScr_TestPrep_Turn[] = {
	EvtListTurn(0, EventScr_TestPrep_Opening, 1, 0, FACTION_BLUE)
	EvtListEnd
};

struct ChapterEventInfo const ChapterEventInfo_TestPrep = {
	.event_list_turn = EventListScr_TestPrep_Turn,
	.event_list_talk = EventListScr_TestBattle_Empty,
	.event_list_tile = EventListScr_TestBattle_Empty,
	.event_list_move = EventListScr_TestBattle_Empty,
	.units_red = UnitInfo_TestPrep_Red,
	.units_blue = UnitInfo_TestPrep_Blue,
	.event_script_victory = EventScr_TestBattle_Victory,
};

#endif /* CONFIG_TEST_MENU */
