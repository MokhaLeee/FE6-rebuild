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

struct ChapterEventInfo const *gTestChapterEventInfo = NULL;

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

void test_chapter_set_event(struct ChapterEventInfo const *event)
{
	gTestChapterEventInfo = event;
}

void test_chapter_clear_event(void)
{
	gTestChapterEventInfo = NULL;
}

#endif /* CONFIG_TEST_MENU */
