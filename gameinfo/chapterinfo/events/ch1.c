#include "prelude.h"
#include "ai.h"
#include "faction.h"
#include "item.h"
#include "oam.h"
#include "util.h"
#include "mu.h"
#include "bmfx.h"
#include "gold.h"
#include "helpbox.h"
#include "suspend_ui.h"
#include "chapterinfo.h"
#include "eventinfo.h"
#include "eventfunctions.h"
#include "chapterunits.h"
#include "chapterevents.h"

#include "constants/pids.h"
#include "constants/jids.h"
#include "constants/msg.h"
#include "constants/songs.h"
#include "constants/iids.h"
#include "constants/chapters.h"

static void setup_status(void)
{
	SetGold(GetGold() + 5000);
}

static struct UnitInfo const UnitInfo_Chapter1_BlueA[] =
{
	{ PID_ROY, 0, 0, FALSE, FACTION_ID_BLUE, 1, 4, 20, 5, 18, { IID_RAPIER, IID_VULNERARY }, { 0 } },
	{ PID_MARCUS, 0, PID_ROY, FALSE, FACTION_ID_BLUE, 1, 5, 20, 4, 17, { IID_IRONSWORD, IID_SILVERLANCE }, { 0 } },
	{ 0 }, // end
};

static struct UnitInfo const UnitInfo_Chapter1_BlueB[] =
{
	{ PID_ALEN, 0, PID_ROY, FALSE, FACTION_ID_BLUE, 1, 3, 20, 6, 17, { IID_IRONSWORD, IID_IRONLANCE }, { 0 } },
	{ PID_BORS, 0, PID_ROY, FALSE, FACTION_ID_BLUE, 1, 4, 20, 6, 19, { IID_IRONLANCE, IID_VULNERARY }, { 0 } },
	{ PID_WOLT, 0, PID_ROY, FALSE, FACTION_ID_BLUE, 1, 5, 20, 5, 16, { IID_IRONBOW, IID_VULNERARY, IID_BALLISTA }, { 0 } },
	{ 0 }, // end
};

static struct UnitInfo const UnitInfo_Chapter1_Lance[] =
{
	{ PID_LANCE, 0, PID_ROY, FALSE, FACTION_ID_BLUE, 1, 13, 9, 5, 17, { IID_IRONSWORD, IID_JAVELIN, IID_VULNERARY }, { 0 } },
	{ 0 }, // end
};

static struct UnitInfo const UnitInfo_Chapter1_RedA[] =
{
	{ PID_CHAPTER1_ARCHER, JID_ARCHER, PID_CHAPTER1_4A, FALSE, FACTION_ID_RED, 1, 4, 0, 4, 2, { IID_IRONBOW }, { AI_A_00, AI_B_06, 0x29, 0x00 } },
	{ PID_CHAPTER1_4A, JID_FIGHTER, 0, FALSE, FACTION_ID_RED, 5, 8, 0, 8, 6, { IID_STEELAXE }, { AI_A_03, AI_B_03, 0x09, 0x20 } },
	{ PID_CHAPTER1_BANDIT, JID_FIGHTER, PID_CHAPTER1_4A, FALSE, FACTION_ID_RED, 1, 5, 6, 4, 3, { IID_IRONAXE }, { AI_A_00, AI_B_06, 0x09, 0x00 } },
	{ PID_CHAPTER1_BANDIT, JID_FIGHTER, PID_CHAPTER1_4A, FALSE, FACTION_ID_RED, 1, 6, 10, 7, 5, { IID_IRONAXE }, { AI_A_00, AI_B_03, 0x09, 0x00 } },
	{ PID_CHAPTER1_BANDIT, JID_FIGHTER, PID_CHAPTER1_4A, FALSE, FACTION_ID_RED, 1, 15, 10, 9, 5, { IID_IRONAXE }, { AI_A_00, AI_B_03, 0x09, 0x00 } },
	{ 0 }, // end
};

static struct UnitInfo const UnitInfo_Chapter1_RedB[] =
{
	{ PID_CHAPTER1_BANDIT, JID_FIGHTER, PID_CHAPTER1_4A, FALSE, FACTION_ID_RED, 1, 11, 4, 11, 9, { IID_IRONAXE }, { AI_A_00, AI_B_03, 0x09, 0x00 } },
	{ PID_CHAPTER1_BANDIT, JID_FIGHTER, PID_CHAPTER1_4A, FALSE, FACTION_ID_RED, 1, 12, 4, 12, 9, { IID_IRONAXE }, { AI_A_00, AI_B_03, 0x09, 0x00 } },
	{ PID_CHAPTER1_BANDIT, JID_FIGHTER, PID_CHAPTER1_4A, FALSE, FACTION_ID_RED, 1, 10, 2, 14, 7, { IID_IRONAXE }, { AI_A_00, AI_B_03, 0x09, 0x00 } },
	{ PID_CHAPTER1_ARCHER, JID_ARCHER, PID_CHAPTER1_4A, FALSE, FACTION_ID_RED, 1, 10, 3, 13, 10, { IID_IRONBOW }, { AI_A_00, AI_B_00, 0x29, 0x00 } },
	{ 0 }, // end
};

static struct UnitInfo const UnitInfo_Chapter1_RedC[] =
{
	{ PID_CHAPTER1_BANDIT, JID_FIGHTER, PID_CHAPTER1_4A, FALSE, FACTION_ID_RED, 1, 15, 7, 10, 15, { IID_IRONAXE }, { AI_A_00, AI_B_00, 0x09, 0x00 } },
	{ PID_CHAPTER1_BANDIT, JID_FIGHTER, PID_CHAPTER1_4A, FALSE, FACTION_ID_RED, 1, 15, 8, 11, 14, { IID_IRONAXE }, { AI_A_00, AI_B_00, 0x09, 0x00 } },
	{ PID_CHAPTER1_BANDIT, JID_FIGHTER, PID_CHAPTER1_4A, FALSE, FACTION_ID_RED, 1, 6, 8, 15, 13, { IID_IRONAXE }, { AI_A_00, AI_B_00, 0x09, 0x00 } },
	{ PID_CHAPTER1_BANDIT, JID_FIGHTER, PID_CHAPTER1_4A, FALSE, FACTION_ID_RED, 1, 7, 8, 11, 18, { IID_IRONAXE }, { AI_A_00, AI_B_00, 0x09, 0x00 } },
	{ 0 }, // end
};

static struct UnitInfo const UnitInfo_Chapter1_RedDummy[] =
{
	{ 0 }, // end
};

static struct UnitInfo const UnitInfo_Chapter1_Pillager[] =
{
	{ PID_CHAPTER1_PILLAGER, 0, PID_CHAPTER1_4A, FALSE, FACTION_ID_RED, 1, 10, 4, 10, 7, { IID_IRONAXE }, { AI_A_00, AI_B_04, 0x09, 0x00 } },
	{ 0 }, // end
};

static EventScr const EventScr_Chapter1_Opening[] =
{
	EvtUnitCameraOff
	EvtLoadUnits(UnitInfo_Chapter1_RedA)
	EvtMoveWait
	EvtCamera(11, 12)
	EvtUnitCameraOff
	EvtSleep(16)
	EvtLoadUnits(UnitInfo_Chapter1_BlueA)
	EvtMoveWait
	EvtLoadUnits(UnitInfo_Chapter1_BlueB)
	EvtMoveWait
	EvtLoadUnits(UnitInfo_Chapter1_Lance)
	EvtMoveWait
	EvtMoveUnit(PID_LANCE, 7, 18)
	EvtMoveWait
	EvtFunc(setup_status)
	EvtFunc(ApplyAllHardModeBonusLevels)
	EvtClearSkip
	EvtEnd
};

static EventScr const EventScr_Chapter1_Thief[] =
{
	EvtLoadUnits(UnitInfo_Chapter1_Pillager)
	EvtMoveWait
	EvtEnd
};

static EventScr const EventScr_Chapter1_ReinforceB[] =
{
	EvtCamera(11, 5)
	EvtLoadUnits(UnitInfo_Chapter1_RedB)
	EvtMoveWait
	EvtMoveUnit(PID_CHAPTER1_4A, 8, 4)
	EvtMoveWait
	EvtEnd
};

static EventScr const EventScr_Chapter1_ReinforceC[] =
{
	EvtLoadUnits(UnitInfo_Chapter1_RedC)
	EvtMoveWait
	EvtEnd
};

static CONTENT_DATA EventScr const EventScr_Chapter1_FirstRedTurn[] =
{
	// EvtSetBgm(SONG_02)
	EvtCamera(8, 3)
	EvtMoveWait
	EvtSleep(16)
	EvtTalk(MSG_008)
	EvtClearTalk
	EvtClearSkip
	EvtEnd
};

static EventScr const EventScr_Chapter1_Village[] =
{
	EvtLowerBgmVolume
	EvtFadeToBlack(16)
	EvtExitMap
	EvtBackground(BACKGROUND_1)
	EvtFadeFromBlack(16)
	EvtEnterMap
	EvtTalk(MSG_00A)
	EvtClearTalk
	EvtRaiseBgmVolume
	EvtNoSkip
	EvtGiveItem(IID_REDGEM)
	EvtClearSkip
	EvtEnd
};

static EventScr const EventScr_Chapter1_TopVillageDummy[] =
{
	EvtNoSkip
	EvtGiveItem(IID_IRONSWORD)
	EvtClearSkip
	EvtEnd
};

static EventScr const EventScr_Chapter1_HouseA[] =
{
	EvtLowerBgmVolume
	EvtFadeToBlack(16)
	EvtExitMap
	EvtBackground(BACKGROUND_0)
	EvtFadeFromBlack(16)
	EvtEnterMap
	EvtTalk(MSG_00B)
	EvtClearTalk
	EvtRaiseBgmVolume
	EvtClearSkip
	EvtEnd
};

static EventScr const EventScr_Chapter1_HouseB[] =
{
	EvtLowerBgmVolume
	EvtFadeToBlack(16)
	EvtExitMap
	EvtBackground(BACKGROUND_0)
	EvtFadeFromBlack(16)
	EvtEnterMap
	EvtTalk(MSG_00C)
	EvtClearTalk
	EvtRaiseBgmVolume
	EvtClearSkip
	EvtEnd
};

static EventScr const EventScr_Chapter1_HouseC[] =
{
	EvtLowerBgmVolume
	EvtFadeToBlack(16)
	EvtExitMap
	EvtBackground(BACKGROUND_0)
	EvtFadeFromBlack(16)
	EvtEnterMap
	EvtTalk(MSG_00D)
	EvtClearTalk
	EvtRaiseBgmVolume
	EvtClearSkip
	EvtEnd
};

static EventScr const EventScr_Chapter1_Victory[] =
{
	EvtSetBgm(SONG_27)
	EvtFadeToBlack(16)
	EvtExitMap
	EvtBackground(BACKGROUND_5)
	EvtFadeFromBlack(16)
	EvtEnterMap
	EvtTalk(MSG_011)
	EvtGotoIfNotFunc(0, IsBorsBlue)

	EvtTalkMore(MSG_012)

EvtLabel(0)
	EvtTalkMore(MSG_013)
	EvtTalkContinue
	EvtClearTalk
	EvtSleep(64)
	EvtNextChapter(CHAPTER_2)
	EvtSleep(1)
	EvtKill
	EvtClearSkip
	EvtEnd
};

/**
 * event info
 */
static EventListScr const EventListScr_Chapter1_Turn[] =
{
	EvtListTurn(0, EventScr_Chapter1_Opening, 1, 0, FACTION_BLUE)
	EvtListTurn(FLAG_CHAPTER1_TURN1, EventScr_Chapter1_FirstRedTurn, 1, 0, FACTION_RED)
	EvtListTurn(0, EventScr_Chapter1_Thief, 2, 0, FACTION_RED)
	EvtListTurn(0, EventScr_Chapter1_ReinforceB, 3, 0, FACTION_RED)
	EvtListTurn(0, EventScr_Chapter1_ReinforceC, 5, 0, FACTION_RED)
	EvtListEnd
};

static EventListScr const EventListScr_Chapter1_Talk[] =
{
	EvtListEnd
};

static EventListScr const EventListScr_Chapter1_Tile[] =
{
	EvtListTileMapChange(FLAG_CHAPTER1_VILLAGE, EventScr_Chapter1_Village, 15, 19, TILE_COMMAND_VISIT)
	EvtListTile(FLAG_CHAPTER1_VILLAGE, EVENT_NOSCRIPT, 15, 18, TILE_COMMAND_PILLAGE)
	EvtListTileMapChange(FLAG_CHAPTER1_TOPVILLAGE, EventScr_Chapter1_TopVillageDummy, 7, 9, TILE_COMMAND_VISIT)
	EvtListTile(FLAG_CHAPTER1_TOPVILLAGE, EVENT_NOSCRIPT, 7, 8, TILE_COMMAND_PILLAGE)
	EvtListTile(0, EventScr_Chapter1_HouseA, 15, 15, TILE_COMMAND_VISIT)
	EvtListTile(0, EventScr_Chapter1_HouseB, 12, 16, TILE_COMMAND_VISIT)
	EvtListTile(0, EventScr_Chapter1_HouseC, 12, 19, TILE_COMMAND_VISIT)
	EvtListChest(0, IID_VULNERARY, 0, 16, 16, TILE_COMMAND_CHEST)
	EvtListTile(FLAG_3, EVENT_NOSCRIPT, 8, 4, TILE_COMMAND_SEIZE)
	EvtListEnd
};

static EventListScr const EventListScr_Chapter1_Move[] =
{
	EvtListFlag(0, EventScr_GameOver, FLAG_101)
	EvtListEnd
};

struct ChapterEventInfo const ChapterEventInfo_Chapter1 =
{
	.event_list_turn = EventListScr_Chapter1_Turn,
	.event_list_talk = EventListScr_Chapter1_Talk,
	.event_list_tile = EventListScr_Chapter1_Tile,
	.event_list_move = EventListScr_Chapter1_Move,
	.units_red = UnitInfo_Chapter1_RedDummy,
	.units_blue = UnitInfo_Chapter1_BlueA,
	.event_script_victory = EventScr_Chapter1_Victory,
};
