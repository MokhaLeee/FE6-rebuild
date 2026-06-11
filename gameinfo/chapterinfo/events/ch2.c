#include "prelude.h"
#include "faction.h"
#include "ai.h"
#include "chapterinfo.h"
#include "chapterunits.h"
#include "chapterevents.h"
#include "eventinfo.h"
#include "eventfunctions.h"
#include "chapterunits.h"
#include "constants/pids.h"
#include "constants/jids.h"
#include "constants/iids.h"
#include "constants/msg.h"
#include "constants/songs.h"
#include "constants/chapters.h"

/**
 * unit info
 */
static CONTENT_DATA const struct UnitInfo UnitInfo_Chapter2_Blue[] =
{
	{ PID_ROY, JID_ROY, 0, TRUE, FACTION_ID_BLUE, 2, 2, 10, 2, 10, { IID_IRONSWORD, IID_RAPIER }, { 0 } },
	{ PID_MARCUS, JID_PALADIN, PID_ROY, TRUE, FACTION_ID_BLUE, 1, 2, 8, 2, 8, { IID_SILVERLANCE, IID_VULNERARY, IID_VULNERARY }, { 0 } },
	{ PID_ALEN, JID_CAVALIER, PID_ROY, TRUE, FACTION_ID_BLUE, 3, 3, 9, 3, 9, { IID_IRONSWORD, IID_IRONLANCE }, { 0 } },
	{ PID_LANCE, JID_CAVALIER, PID_ROY, TRUE, FACTION_ID_BLUE, 2, 3, 11, 3, 11, { IID_IRONSWORD, IID_JAVELIN, IID_VULNERARY }, { 0 } },
	{ PID_BORS, JID_ARMOR, PID_ROY, TRUE, FACTION_ID_BLUE, 2, 1, 11, 1, 11, { IID_IRONLANCE }, { 0 } },
	{ PID_WOLT, JID_ARCHER, PID_ROY, TRUE, FACTION_ID_BLUE, 1, 0, 10, 0, 10, { IID_IRONBOW }, { 0 } },
	{ 0 }, // end
};

static CONTENT_DATA const struct UnitInfo UnitInfo_Chapter2_Merlinus[] =
{
	{ PID_MERLINUS, JID_SUPPLY, PID_ROY, FALSE, FACTION_ID_BLUE, 1, 2, 9, 1, 9, { 0 }, { 0 } },
	{ 0 }, // end
};

static CONTENT_DATA const struct UnitInfo UnitInfo_Chapter2_RedDummy[] =
{
	{ 0 }, // end
};

static CONTENT_DATA const struct UnitInfo UnitInfo_Chapter2_RedA[] =
{
	{ PID_CHAPTER2_GENERIC, JID_FIGHTER, PID_CHAPTER2_4B, TRUE, FACTION_ID_RED, 2, 17, 13, 15, 6, { IID_IRONAXE }, { AI_A_0C, AI_B_11, 0x09, 0x00 } },
	{ PID_CHAPTER2_GENERIC, JID_ARCHER, PID_CHAPTER2_4B, TRUE, FACTION_ID_RED, 3, 18, 14, 17, 4, { IID_IRONBOW }, { AI_A_0C, AI_B_12, 0x29, 0x00 } },
	{ PID_CHAPTER2_SOLDIER_JAVELIN, JID_SOLDIER, PID_CHAPTER2_4B, TRUE, FACTION_ID_RED, 3, 16, 15, 18, 6, { IID_JAVELIN }, { AI_A_00, AI_B_00, 0x01, 0x00 } },
	{ PID_CHAPTER2_GENERIC, JID_FIGHTER, PID_CHAPTER2_4B, TRUE, FACTION_ID_RED, 1, 17, 12, 17, 11, { IID_IRONAXE }, { AI_A_00, AI_B_06, 0x09, 0x00 } },
	{ PID_CHAPTER2_GENERIC, JID_FIGHTER, PID_CHAPTER2_4B, TRUE, FACTION_ID_RED, 2, 18, 12, 18, 10, { IID_IRONAXE }, { AI_A_00, AI_B_03, 0x09, 0x00 } },
	{ PID_CHAPTER2_SOLDIER_JAVELIN, JID_SOLDIER, PID_CHAPTER2_4B, TRUE, FACTION_ID_RED, 3, 18, 12, 17, 9, { IID_JAVELIN }, { AI_A_00, AI_B_03, 0x01, 0x00 } },
	{ PID_CHAPTER2_GENERIC, JID_SOLDIER, PID_CHAPTER2_4B, TRUE, FACTION_ID_RED, 2, 18, 12, 18, 11, { IID_IRONLANCE }, { AI_A_00, AI_B_06, 0x01, 0x00 } },
	{ PID_CHAPTER2_GENERIC, JID_FIGHTER, PID_CHAPTER2_4B, TRUE, FACTION_ID_RED, 1, 18, 13, 18, 9, { IID_IRONAXE }, { AI_A_00, AI_B_00, 0x09, 0x00 } },
	{ PID_CHAPTER2_GENERIC, JID_SOLDIER, PID_CHAPTER2_4B, TRUE, FACTION_ID_RED, 1, 18, 15, 18, 8, { IID_JAVELIN }, { AI_A_00, AI_B_00, 0x09, 0x00 } },
	{ PID_CHAPTER2_GENERIC, JID_ARCHER, PID_CHAPTER2_4B, TRUE, FACTION_ID_RED, 1, 16, 12, 16, 7, { IID_IRONBOW }, { AI_A_00, AI_B_06, 0x09, 0x00 } },
	{ PID_CHAPTER2_GENERIC, JID_FIGHTER, PID_CHAPTER2_4B, TRUE, FACTION_ID_RED, 3, 16, 12, 16, 10, { IID_STEELAXE }, { AI_A_00, AI_B_03, 0x01, 0x00 } },
	{ PID_CHAPTER2_MERCENARY, JID_MERCENARY, PID_CHAPTER2_4B, TRUE, FACTION_ID_RED, 3, 17, 9, 17, 7, { IID_IRONBLADE }, { AI_A_00, AI_B_03, 0x01, 0x00 } },
	{ 0 }, // end
};

static CONTENT_DATA const struct UnitInfo UnitInfo_Chapter2_RedB[] =
{
	{ PID_CHAPTER2_SOLDIER_JAVELIN, JID_SOLDIER, PID_CHAPTER2_4B, TRUE, FACTION_ID_RED, 3, 7, 17, 3, 14, { IID_IRONLANCE }, { AI_A_00, AI_B_03, 0x01, 0x00 } },
	{ 0 }, // end
};

static CONTENT_DATA const struct UnitInfo UnitInfo_Chapter2_RedC[] =
{
	{ PID_CHAPTER2_SOLDIER_JAVELIN, JID_SOLDIER, PID_CHAPTER2_4B, TRUE, FACTION_ID_RED, 3, 8, 18, 5, 16, { IID_IRONLANCE }, { AI_A_00, AI_B_03, 0x01, 0x00 } },
	{ PID_CHAPTER2_SOLDIER_JAVELIN, JID_SOLDIER, PID_CHAPTER2_4B, TRUE, FACTION_ID_RED, 3, 8, 18, 1, 16, { IID_IRONLANCE }, { AI_A_00, AI_B_03, 0x01, 0x00 } },
	{ 0 }, // end
};

static CONTENT_DATA const struct UnitInfo UnitInfo_Chapter2_RedD[] =
{
	{ PID_CHAPTER2_GENERIC, JID_FIGHTER, PID_CHAPTER2_4B, TRUE, FACTION_ID_RED, 1, 11, 18, 8, 17, { IID_IRONAXE, IID_HANDAXE }, { AI_A_00, AI_B_00, 0x09, 0x00 } },
	{ PID_CHAPTER2_GENERIC, JID_FIGHTER, PID_CHAPTER2_4B, TRUE, FACTION_ID_RED, 1, 11, 18, 6, 18, { IID_IRONAXE }, { AI_A_00, AI_B_00, 0x09, 0x00 } },
	{ PID_CHAPTER2_GENERIC, JID_FIGHTER, PID_CHAPTER2_4B, TRUE, FACTION_ID_RED, 2, 11, 18, 4, 18, { IID_HANDAXE }, { AI_A_00, AI_B_03, 0x09, 0x00 } },
	{ 0 }, // end
};

static CONTENT_DATA const struct UnitInfo UnitInfo_Chapter2_WardLot[] =
{
	{ PID_WARD, JID_FIGHTER, PID_DIECK, FALSE, FACTION_ID_BLUE, 2, 15, 18, 12, 16, { IID_IRONAXE, IID_HAMMER, IID_VULNERARY }, { 0 } },
	{ PID_LOT, JID_FIGHTER, PID_DIECK, FALSE, FACTION_ID_BLUE, 3, 15, 18, 12, 18, { IID_IRONAXE, IID_STEELAXE, IID_HANDAXE }, { AI_A_00, AI_B_03 } },
	{ 0 }, // end
};

static CONTENT_DATA const struct UnitInfo UnitInfo_Chapter2_DieckShanna[] =
{
	{ PID_DIECK, JID_MERCENARY, 0, FALSE, FACTION_ID_BLUE, 5, 15, 18, 13, 17, { IID_IRONBLADE, IID_IRONSWORD }, { AI_A_03, AI_B_03 } },
	{ PID_SHANNA, JID_PEGASUSKNIGHT, PID_DIECK, FALSE, FACTION_ID_BLUE, 1, 16, 18, 14, 17, { IID_SLIMLANCE, IID_JAVELIN, IID_VULNERARY }, { AI_A_00, AI_B_03 } },
	{ 0 }, // end
};

static CONTENT_DATA const struct UnitInfo UnitInfo_Chapter2_CutsceneMelady[] =
{
	{ PID_MELADY, JID_WYVERNRIDER, 0, FALSE, FACTION_ID_RED, 5, 16, 3, 16, 3, { IID_STEELLANCE, IID_JAVELIN }, { AI_A_03, AI_B_03, 0x01, 0x00 } },
	{ 0 }, // end
};

static CONTENT_DATA const struct UnitInfo UnitInfo_Chapter2_Boss[] =
{
	{ PID_CHAPTER2_4B, JID_ARMOR, 0, FALSE, FACTION_ID_RED, 5, 16, 3, 16, 4, { IID_JAVELIN }, { AI_A_03, AI_B_03, 0x01, 0x20 } },
	{ 0 }, // end
};

static CONTENT_DATA const struct UnitInfo UnitInfo_Chapter2_OpeningSoldier[] =
{
	{ PID_CHAPTER2_SOLDIER_JAVELIN, JID_SOLDIER, PID_CHAPTER2_4B, TRUE, FACTION_ID_RED, 3, 16, 3, 16, 3, { IID_IRONLANCE }, { AI_A_00, AI_B_00, 0x01, 0x00 } },
	{ 0 }, // end
};

static CONTENT_DATA const struct UnitInfo UnitInfo_Chapter2_Elen[] =
{
	{ PID_ELEN, JID_CLERIC, PID_ROY, FALSE, FACTION_ID_BLUE, 2, 4, 14, 4, 14, { IID_HEALSTAFF, IID_VULNERARY }, { 0 } },
	{ 0 }, // end
};


static CONTENT_DATA const u8 MoveScr_Chapter2_ElenA[] =
{
	MOVE_CMD_SET_SPEED, 18,
	MOVE_CMD_MOVE_UP,
	MOVE_CMD_MOVE_UP,
	MOVE_CMD_MOVE_UP,
	MOVE_CMD_HALT,
};

static CONTENT_DATA const u8 MoveScr_Chapter2_ElenB[] =
{
	MOVE_CMD_SET_SPEED, 22,
	MOVE_CMD_MOVE_UP,
	MOVE_CMD_MOVE_LEFT,
	MOVE_CMD_HALT,
};

/**
 * event scr
 */
static CONTENT_DATA const EventScr EventScr_Chapter2_Opening[] =
{
	EvtCamera(18, 0)
	EvtUnitCameraOff
	EvtLoadUnits(UnitInfo_Chapter2_Boss)
	EvtMoveWait
	EvtLoadUnits(UnitInfo_Chapter2_CutsceneMelady)
	EvtMoveWait
	EvtTalk(MSG_04D)
	EvtClearTalk
	EvtMoveUnit(PID_CHAPTER2_4B, 17, 4)
	EvtMoveWait
	EvtMoveUnit(PID_MELADY, 13, -1)
	EvtMoveWait
	EvtRemoveUnit(PID_MELADY)
	EvtSleep(16)
	EvtMoveUnit(PID_CHAPTER2_4B, 16, 4)
	EvtMoveWait
	EvtSleep(16)
	EvtLoadUnits(UnitInfo_Chapter2_OpeningSoldier)
	EvtSetBgm(SONG_02)
	EvtTalk(MSG_04E)
	EvtClearTalk
	EvtSleep(16)
	EvtMove(16, 3, 17, 11)
	EvtMoveWait
	EvtMoveUnit(PID_CHAPTER2_4B, 16, 3)
	EvtMoveWait
	EvtUnitCameraOff
	EvtLoadUnits(UnitInfo_Chapter2_RedA)
	EvtMoveWait
	EvtFadeBgmOut(1)
	EvtSleep(16)
	EvtSetBgm(SONG_24)
	EvtLoadUnitsParty(UnitInfo_Chapter2_Blue)
	EvtMoveWait
	EvtLoadUnits(UnitInfo_Chapter2_Merlinus)
	EvtMoveWait
	EvtSleep(16)
	EvtCameraUnit(PID_ROY)
	EvtSleep(16)
	EvtMoveUnit(PID_MERLINUS, 2, 9)
	EvtMoveWait
	EvtTalk(MSG_04F)
	EvtClearTalk
	EvtLoadUnits(UnitInfo_Chapter2_Elen)
	EvtMoveWait
	EvtMoveUnitScript(PID_ELEN, MoveScr_Chapter2_ElenA)
	EvtMoveWait
	EvtSleep(16)
	EvtMoveUnitScript(PID_ELEN, MoveScr_Chapter2_ElenB)
	EvtMoveWait
	EvtTalk(MSG_050)
	EvtSetBgm(SONG_23)
	EvtTalkContinue
	EvtClearTalk
	EvtLoadUnits(UnitInfo_Chapter2_RedB)
	EvtSleep(16)
	EvtCamera(0, 14)
	EvtUnitCameraOff
	EvtMoveWait
	EvtTalk(MSG_051)
	EvtClearTalk
	EvtLoadUnits(UnitInfo_Chapter2_RedC)
	EvtMoveWait
	EvtLoadUnits(UnitInfo_Chapter2_RedD)
	EvtMoveWait
	EvtCameraUnit(PID_ROY)
	EvtTalk(MSG_052)
	EvtClearTalk
	EvtMoveUnit(PID_MERLINUS, 1, 9)
	EvtMoveUnit(PID_ELEN, 4, 10)
	EvtMoveWait
	EvtFunc(ApplyAllHardModeBonusLevels)
	EvtClearSkip
	EvtEnd
};

static CONTENT_DATA const EventScr EventScr_Chapter2_DieckComes[] =
{
	EvtSleep(32)
	EvtOverrideBgm(SONG_33)
	EvtCamera(20, 18)
	EvtSleep(32)
	EvtLoadUnits(UnitInfo_Chapter2_WardLot)
	EvtLoadUnits(UnitInfo_Chapter2_DieckShanna)
	EvtMoveWait
	EvtTalk(MSG_053)
	EvtClearTalk
	EvtUnitCameraOff
	EvtMoveUnit(PID_SHANNA, 0, 13)
	EvtMoveWait
	EvtMoveUnit(PID_WARD, 13, 16)
	EvtMoveWait
	EvtMoveUnit(PID_LOT, 13, 18)
	EvtMoveWait
	EvtTalk(MSG_054)
	EvtClearTalk
	EvtMoveUnit(PID_SHANNA, 12, 17)
	EvtMoveWait
	EvtTalk(MSG_055)
	EvtClearTalk
	EvtMoveUnit(PID_WARD, 12, 16)
	EvtMoveUnit(PID_LOT, 12, 18)
	EvtMoveUnit(PID_SHANNA, 14, 17)
	EvtMoveWait
	EvtRestoreBgm
	EvtClearSkip
	EvtEnd
};

static CONTENT_DATA const EventScr EventScr_Chapter2_DieckTalk[] =
{
	EvtOverrideBgm(SONG_33)
	EvtTalk(MSG_056)
	EvtClearTalk
	EvtRestoreBgm
	EvtClearSkip
	EvtEnd
};

static CONTENT_DATA const EventScr EventScr_Chapter2_Village[] =
{
	EvtLowerBgmVolume
	EvtFadeToBlack(16)
	EvtExitMap
	EvtBackground(BACKGROUND_1)
	EvtFadeFromBlack(16)
	EvtEnterMap
	EvtTalk(MSG_058)
	EvtClearTalk
	EvtRaiseBgmVolume
	EvtNoSkip
	EvtGiveItem(IID_ARMORSLAYER)
	EvtClearSkip
	EvtEnd
};

static CONTENT_DATA const EventScr EventScr_Chapter2_HouseA[] =
{
	EvtLowerBgmVolume
	EvtFadeToBlack(16)
	EvtExitMap
	EvtBackground(BACKGROUND_0)
	EvtFadeFromBlack(16)
	EvtEnterMap
	EvtTalk(MSG_059)
	EvtClearTalk
	EvtRaiseBgmVolume
	EvtClearSkip
	EvtEnd
};

static CONTENT_DATA const EventScr EventScr_Chapter2_HouseB[] =
{
	EvtLowerBgmVolume
	EvtFadeToBlack(16)
	EvtExitMap
	EvtBackground(BACKGROUND_0)
	EvtFadeFromBlack(16)
	EvtEnterMap
	EvtTalk(MSG_05A)
	EvtClearTalk
	EvtRaiseBgmVolume
	EvtClearSkip
	EvtEnd
};

static CONTENT_DATA const EventScr EventScr_Chapter2_HouseC[] =
{
	EvtLowerBgmVolume
	EvtFadeToBlack(16)
	EvtExitMap
	EvtBackground(BACKGROUND_0)
	EvtFadeFromBlack(16)
	EvtEnterMap
	EvtTalk(MSG_05B)
	EvtClearTalk
	EvtRaiseBgmVolume
	EvtClearSkip
	EvtEnd
};

static CONTENT_DATA const EventScr EventScr_Chapter2_Victory[] =
{
	EvtSetBgm(SONG_27)
	EvtFadeToBlack(16)
	EvtExitMap
	EvtBackground(BACKGROUND_5)
	EvtFadeFromBlack(16)
	EvtEnterMap
	EvtTalk(MSG_05E)
	EvtGotoIfNotFunc(1, IsElenBlue)

	EvtTalkMore(MSG_05F)

EvtLabel(1)
	EvtTalkMore(MSG_060)
	EvtGotoIfNotFunc(2, IsElenBlue)

	EvtTalkMore(MSG_061)

EvtLabel(2)
	EvtSetBgm(SONG_2B)
	EvtTalkMore(MSG_062)
	EvtTalkContinue
	EvtClearTalk
	EvtSleep(64)
	EvtNextChapter(CHAPTER_3)
	EvtSleep(1)
	EvtKill
	EvtClearSkip
	EvtEnd
};

/**
 * event list scr
 */
static CONTENT_DATA const EventListScr EventListScr_Chapter2_Turn[] =
{
	EvtListTurn(0, EventScr_Chapter2_Opening, 1, 0, FACTION_BLUE)
	EvtListTurn(0, EventScr_Chapter2_DieckComes, 2, 0, FACTION_BLUE)
	EvtListEnd
};

static CONTENT_DATA const EventListScr EventListScr_Chapter2_Talk[] =
{
	EvtListTalk(FLAG_CHAPTER2_ROYDIECKTALK, EventScr_Chapter2_DieckTalk, PID_ROY, PID_DIECK)
	EvtListTalk(FLAG_CHAPTER2_ROYDIECKTALK, EventScr_Chapter2_DieckTalk, PID_DIECK, PID_ROY)
	EvtListEnd
};

static CONTENT_DATA const EventListScr EventListScr_Chapter2_Tile[] =
{
	EvtListShop(0, ShopItems_Chapter2_Vendor, 7, 9, TILE_COMMAND_VENDOR)
	EvtListShop(0, ShopItems_Chapter2_Armory, 6, 1, TILE_COMMAND_ARMORY)
	EvtListTileMapChange(0, EventScr_Chapter2_Village, 3, 4, TILE_COMMAND_VISIT)
	EvtListTile(0, EVENT_NOSCRIPT, 3, 3, TILE_COMMAND_PILLAGE)
	EvtListTile(0, EventScr_Chapter2_HouseA, 6, 7, TILE_COMMAND_VISIT)
	EvtListTile(0, EventScr_Chapter2_HouseB, 0, 4, TILE_COMMAND_VISIT)
	EvtListTile(0, EventScr_Chapter2_HouseC, 5, 7, TILE_COMMAND_VISIT)
	EvtListTile(FLAG_3, EVENT_NOSCRIPT, 16, 3, TILE_COMMAND_SEIZE)
	EvtListEnd
};

static CONTENT_DATA const EventListScr EventListScr_Chapter2_Move[] =
{
	EvtListFlag(0, EventScr_GameOver, FLAG_101)
	EvtListEnd
};

CONST_DATA const struct ChapterEventInfo ChapterEventInfo_Chapter2 =
{
	.event_list_turn = EventListScr_Chapter2_Turn,
	.event_list_talk = EventListScr_Chapter2_Talk,
	.event_list_tile = EventListScr_Chapter2_Tile,
	.event_list_move = EventListScr_Chapter2_Move,
	.units_red = UnitInfo_Chapter2_RedDummy,
	.units_blue = UnitInfo_Chapter2_Blue,
	.event_script_victory = EventScr_Chapter2_Victory,
};
