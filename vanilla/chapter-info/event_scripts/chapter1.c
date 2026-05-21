#include "prelude.h"
#include "ai.h"
#include "faction.h"
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
	struct Unit *unit;

	SetGold(GetGold() + 5000);
}

static struct UnitInfo CONST_DATA UnitInfo_Chapter1_BlueA[] =
{
	{ PID_ROY, 0, 0, FALSE, FACTION_ID_BLUE, 1, 1, 20, 2, 18, { IID_RAPIER, IID_VULNERARY }, { 0 } },
	{ PID_MARCUS, 0, PID_ROY, FALSE, FACTION_ID_BLUE, 1, 2, 20, 1, 17, { IID_IRONSWORD, IID_SILVERLANCE }, { 0 } },
	{ 0 }, // end
};

static struct UnitInfo CONST_DATA UnitInfo_Chapter1_BlueB[] =
{
	{ PID_ALEN, 0, PID_ROY, FALSE, FACTION_ID_BLUE, 1, 0, 20, 3, 17, { IID_IRONSWORD, IID_IRONLANCE }, { 0 } },
	{ PID_BORS, 0, PID_ROY, FALSE, FACTION_ID_BLUE, 1, 1, 20, 3, 19, { IID_IRONLANCE, IID_VULNERARY }, { 0 } },
	{ PID_WOLT, 0, PID_ROY, FALSE, FACTION_ID_BLUE, 1, 2, 20, 2, 16, { IID_IRONBOW, IID_VULNERARY }, { 0 } },
	{ PID_LUGH, 0, PID_ROY, FALSE, FACTION_ID_BLUE, 1, 3, 20, 2, 16, { IID_FIRE }, { 0 } },
	{ 0 }, // end
};

static struct UnitInfo CONST_DATA UnitInfo_Chapter1_Lance[] =
{
	{ PID_LANCE, 0, PID_ROY, FALSE, FACTION_ID_BLUE, 1, 10, 9, 2, 17, { IID_IRONSWORD, IID_JAVELIN, IID_VULNERARY }, { 0 } },
	{ 0 }, // end
};

static struct UnitInfo CONST_DATA UnitInfo_Chapter1_RedA[] =
{
	{ PID_CHAPTER1_ARCHER, JID_ARCHER, PID_CHAPTER1_4A, FALSE, FACTION_ID_RED, 1, 1, 0, 1, 2, { IID_IRONBOW }, { AI_A_00, AI_B_06, 0x29, 0x00 } },
	{ PID_CHAPTER1_4A, JID_FIGHTER, 0, FALSE, FACTION_ID_RED, 5, 5, 0, 5, 6, { IID_STEELAXE }, { AI_A_03, AI_B_03, 0x09, 0x20 } },
	{ PID_CHAPTER1_BANDIT, JID_FIGHTER, PID_CHAPTER1_4A, FALSE, FACTION_ID_RED, 1, 2, 6, 1, 3, { IID_IRONAXE }, { AI_A_00, AI_B_06, 0x09, 0x00 } },
	{ PID_CHAPTER1_BANDIT, JID_FIGHTER, PID_CHAPTER1_4A, FALSE, FACTION_ID_RED, 1, 3, 10, 4, 5, { IID_IRONAXE }, { AI_A_00, AI_B_03, 0x09, 0x00 } },
	{ PID_CHAPTER1_BANDIT, JID_FIGHTER, PID_CHAPTER1_4A, FALSE, FACTION_ID_RED, 1, 12, 10, 6, 5, { IID_IRONAXE }, { AI_A_00, AI_B_03, 0x09, 0x00 } },
	{ 0 }, // end
};

static struct UnitInfo CONST_DATA UnitInfo_Chapter1_RedB[] =
{
	{ PID_CHAPTER1_BANDIT, JID_FIGHTER, PID_CHAPTER1_4A, FALSE, FACTION_ID_RED, 1, 8, 4, 8, 9, { IID_IRONAXE }, { AI_A_00, AI_B_03, 0x09, 0x00 } },
	{ PID_CHAPTER1_BANDIT, JID_FIGHTER, PID_CHAPTER1_4A, FALSE, FACTION_ID_RED, 1, 9, 4, 9, 9, { IID_IRONAXE }, { AI_A_00, AI_B_03, 0x09, 0x00 } },
	{ PID_CHAPTER1_BANDIT, JID_FIGHTER, PID_CHAPTER1_4A, FALSE, FACTION_ID_RED, 1, 7, 2, 11, 7, { IID_IRONAXE }, { AI_A_00, AI_B_03, 0x09, 0x00 } },
	{ PID_CHAPTER1_ARCHER, JID_ARCHER, PID_CHAPTER1_4A, FALSE, FACTION_ID_RED, 1, 7, 3, 10, 10, { IID_IRONBOW }, { AI_A_00, AI_B_00, 0x29, 0x00 } },
	{ 0 }, // end
};

static struct UnitInfo CONST_DATA UnitInfo_Chapter1_RedC[] =
{
	{ PID_CHAPTER1_BANDIT, JID_FIGHTER, PID_CHAPTER1_4A, FALSE, FACTION_ID_RED, 1, 12, 7, 7, 15, { IID_IRONAXE }, { AI_A_00, AI_B_00, 0x09, 0x00 } },
	{ PID_CHAPTER1_BANDIT, JID_FIGHTER, PID_CHAPTER1_4A, FALSE, FACTION_ID_RED, 1, 12, 8, 8, 14, { IID_IRONAXE }, { AI_A_00, AI_B_00, 0x09, 0x00 } },
	{ PID_CHAPTER1_BANDIT, JID_FIGHTER, PID_CHAPTER1_4A, FALSE, FACTION_ID_RED, 1, 3, 8, 12, 13, { IID_IRONAXE }, { AI_A_00, AI_B_00, 0x09, 0x00 } },
	{ PID_CHAPTER1_BANDIT, JID_FIGHTER, PID_CHAPTER1_4A, FALSE, FACTION_ID_RED, 1, 4, 8, 8, 18, { IID_IRONAXE }, { AI_A_00, AI_B_00, 0x09, 0x00 } },
	{ 0 }, // end
};

static struct UnitInfo CONST_DATA UnitInfo_Chapter1_Pillager[] =
{
	{ PID_CHAPTER1_PILLAGER, 0, PID_CHAPTER1_4A, FALSE, FACTION_ID_RED, 1, 7, 4, 7, 7, { IID_IRONAXE }, { AI_A_00, AI_B_04, 0x09, 0x00 } },
	{ 0 }, // end
};

static struct UnitInfo CONST_DATA UnitInfo_Chapter1_RedDummy[] =
{
	{ 0 }, // end
};

static EventScr CONST_DATA EventScr_Chapter1_Opening[] =
{
	EvtUnitCameraOff
	EvtLoadUnits(UnitInfo_Chapter1_RedA)
	EvtMoveWait
	EvtFlashCursorUnit(PID_CHAPTER1_4A)
	EvtFadeToBlack(16)
	EvtExitMap
	EvtBackground(BACKGROUND_7)
	EvtFadeFromBlack(16)
	EvtEnterMap
	EvtTalk(MSG_001)
	EvtClearTalk
	EvtCamera(7, 9)
	EvtLoadUnits(UnitInfo_Chapter1_Pillager)
	EvtMoveWait
	EvtFlashCursor(7, 7)
	EvtFadeToBlack(16)
	EvtExitMap
	EvtBackground(BACKGROUND_7)
	EvtFadeFromBlack(16)
	EvtEnterMap
	EvtTalk(MSG_002)
	EvtClearTalk
	EvtMoveUnit(PID_CHAPTER1_PILLAGER, 4, 9)
	EvtMoveWait
	EvtPlaySe(SONG_AB)
	EvtMapChangePosition(4, 8)
	EvtFlashCursor(5, 4)
	EvtFadeToBlack(16)
	EvtExitMap
	EvtBackground(BACKGROUND_5)
	EvtFadeFromBlack(16)
	EvtEnterMap
	EvtTalk(MSG_003)
	EvtTalkMore(MSG_004)
	EvtClearTalk
	EvtMoveWait
	EvtSleep(16)
	EvtCamera(8, 12)
	EvtUnitCameraOff
	EvtSleep(16)
	EvtLoadUnits(UnitInfo_Chapter1_RedB)
	EvtCamera(8, 17)
	EvtLoadUnits(UnitInfo_Chapter1_RedC)
	EvtMoveWait
	EvtSleep(16)
	EvtLoadUnits(UnitInfo_Chapter1_BlueA)
	EvtMoveWait
	EvtLoadUnits(UnitInfo_Chapter1_BlueB)
	EvtMoveWait
	EvtLoadUnits(UnitInfo_Chapter1_Lance)
	EvtMoveWait
	EvtFadeToBlack(16)
	EvtExitMap
	EvtBackground(BACKGROUND_7)
	EvtFadeFromBlack(16)
	EvtEnterMap
	EvtTalk(MSG_006)
	EvtClearTalk
	EvtMoveUnit(PID_LANCE, 4, 18)
	EvtMoveWait
	EvtFunc(setup_status)
	EvtFunc(ApplyAllHardModeBonusLevels)
	EvtClearSkip
	EvtEnd
};

static EventScr CONST_DATA EventScr_Chapter1_FirstRedTurn[] =
{
	EvtSetBgm(SONG_02)
	EvtCamera(5, 3)
	EvtMoveWait
	EvtMoveUnit(PID_CHAPTER1_4A, 5, 4)
	EvtMoveWait
	EvtSleep(16)
	EvtTalk(MSG_008)
	EvtClearTalk
	EvtClearSkip
	EvtEnd
};

static EventScr CONST_DATA EventScr_Chapter1_UnusedTalk[] =
{
	EvtSetBgm(SONG_27)
	EvtTalk(MSG_009)
	EvtClearTalk
	EvtClearSkip
	EvtEnd
};

static EventScr CONST_DATA EventScr_Chapter1_Village[] =
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
	EvtGiveMoney(5000)
	EvtClearSkip
	EvtEnd
};

static EventScr CONST_DATA EventScr_Chapter1_TopVillageDummy[] =
{
	EvtNoSkip
	EvtGiveMoney(5000)
	EvtClearSkip
	EvtEnd
};

static EventScr CONST_DATA EventScr_Chapter1_HouseA[] =
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

static EventScr CONST_DATA EventScr_Chapter1_HouseB[] =
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

static EventScr CONST_DATA EventScr_Chapter1_HouseC[] =
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

static EventScr CONST_DATA EventScr_Chapter1_HouseUnused[] =
{
	EvtLowerBgmVolume
	EvtFadeToBlack(16)
	EvtExitMap
	EvtBackground(BACKGROUND_6)
	EvtFadeFromBlack(16)
	EvtEnterMap
	EvtTalk(MSG_00E)
	EvtClearTalk
	EvtRaiseBgmVolume
	EvtClearSkip
	EvtEnd
};

static EventScr CONST_DATA EventScr_Chapter1_Victory[] =
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
static EventListScr CONST_DATA EventListScr_Chapter1_Turn[] =
{
	EvtListTurn(0, EventScr_Chapter1_Opening, 1, 0, FACTION_BLUE)
	EvtListTurn(FLAG_CHAPTER1_TURN1, EventScr_Chapter1_FirstRedTurn, 1, 0, FACTION_RED)
	EvtListEnd
};

static EventListScr CONST_DATA EventListScr_Chapter1_Talk[] =
{
	EvtListEnd
};

static EventListScr CONST_DATA EventListScr_Chapter1_Tile[] =
{
	EvtListTileMapChange(FLAG_CHAPTER1_VILLAGE, EventScr_Chapter1_Village, 12, 19, TILE_COMMAND_VISIT)
	EvtListTile(FLAG_CHAPTER1_VILLAGE, EVENT_NOSCRIPT, 12, 18, TILE_COMMAND_PILLAGE)
	EvtListTileMapChange(FLAG_CHAPTER1_TOPVILLAGE, EventScr_Chapter1_TopVillageDummy, 4, 9, TILE_COMMAND_VISIT)
	EvtListTile(FLAG_CHAPTER1_TOPVILLAGE, EVENT_NOSCRIPT, 4, 8, TILE_COMMAND_PILLAGE)
	EvtListTile(0, EventScr_Chapter1_HouseA, 12, 15, TILE_COMMAND_VISIT)
	EvtListTile(0, EventScr_Chapter1_HouseB, 9, 16, TILE_COMMAND_VISIT)
	EvtListTile(0, EventScr_Chapter1_HouseC, 9, 19, TILE_COMMAND_VISIT)
	EvtListTile(FLAG_3, EVENT_NOSCRIPT, 5, 4, TILE_COMMAND_SEIZE)
	EvtListEnd
};

static EventListScr CONST_DATA EventListScr_Chapter1_Move[] =
{
	EvtListFlag(0, EventScr_GameOver, FLAG_101)
	EvtListEnd
};

_WEAK
struct ChapterEventInfo CONST_DATA ChapterEventInfo_Chapter1 =
{
	.event_list_turn = EventListScr_Chapter1_Turn,
	.event_list_talk = EventListScr_Chapter1_Talk,
	.event_list_tile = EventListScr_Chapter1_Tile,
	.event_list_move = EventListScr_Chapter1_Move,
	.units_red = UnitInfo_Chapter1_RedDummy,
	.units_blue = UnitInfo_Chapter1_BlueA,
	.event_script_victory = EventScr_Chapter1_Victory,
};
