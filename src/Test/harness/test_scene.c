#include "prelude.h"

#include "bm.h"
#include "chapter.h"
#include "faction.h"
#include "gamecontroller.h"
#include "hardware.h"
#include "item.h"
#include "random.h"
#include "save.h"
#include "save_game.h"
#include "statscreen.h"
#include "unit.h"

#include "constants/iids.h"
#include "constants/jids.h"
#include "constants/pids.h"

#include "test_chapter.h"
#include "test_scene.h"

#if CONFIG_TEST_MENU

static void test_scene_start_chapter_impl(int chapter)
{
	RandInit(GetGameTime());

	InitUnits();

	WriteNewGameSave(SAVE_GAME0, FALSE);
	gPlaySt.chapter = chapter;
	WriteGameSave(SAVE_GAME0);
	CleanupUnitsBeforeChapter();

	test_scene_restart_game_and_chapter();
}

void test_scene_start_chapter(int chapter)
{
	test_chapter_clear_event();
	test_scene_start_chapter_impl(chapter);
}

void test_scene_start_chapter_with_event(int chapter,
					 struct ChapterEventInfo const *event)
{
	test_chapter_set_event(event);
	test_scene_start_chapter_impl(chapter);
}

void test_scene_restart_game_and_chapter(void)
{
	EndMuralBackground();
	RestartGameAndChapter();
}

void test_scene_write_chapter_save(int save_id, int chapter)
{
	struct Unit *roy;

	test_chapter_clear_event();

	RandInit(GetGameTime());

	InitUnits();

	WriteNewGameSave(save_id, FALSE);

	roy = GetFreeUnit(FACTION_ID_BLUE);
	if (roy) {
		roy->pinfo = GetPInfo(PID_ROY);
		roy->jinfo = GetJInfo(JID_ROY);
		roy->level = TEST_SCENE_SAVE_LEVEL;
		roy->exp = TEST_SCENE_SAVE_EXP;
		roy->max_hp = 20;
		roy->hp = 20;
		roy->items[0] = MAKE_ITEM(IID_IRONSWORD, TEST_SCENE_SAVE_ITEM_USES);
	}

	gPlaySt.chapter = chapter;
	gPlaySt.turn = TEST_SCENE_SAVE_TURN;
	WriteGameSave(save_id);
}

void test_scene_load_chapter_save(int save_id)
{
	test_chapter_clear_event();
	ReadGameSave(save_id);
	test_scene_restart_game_and_chapter();
}

#endif /* CONFIG_TEST_MENU */
