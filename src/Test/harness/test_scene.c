#include "prelude.h"

#include "bm.h"
#include "chapter.h"
#include "gamecontroller.h"
#include "hardware.h"
#include "random.h"
#include "save.h"
#include "save_game.h"
#include "statscreen.h"
#include "unit.h"

#include "test_scene.h"

#if CONFIG_TEST_MENU

void test_scene_start_chapter(int chapter)
{
	RandInit(GetGameTime());

	InitUnits();

	WriteNewGameSave(SAVE_GAME0, FALSE);
	gPlaySt.chapter = chapter;
	WriteGameSave(SAVE_GAME0);
	CleanupUnitsBeforeChapter();

	test_scene_restart_game_and_chapter();
}

void test_scene_restart_game_and_chapter(void)
{
	EndMuralBackground();
	RestartGameAndChapter();
}

void test_scene_write_chapter_save(int save_id, int chapter)
{
	RandInit(GetGameTime());

	InitUnits();

	WriteNewGameSave(save_id, FALSE);
	gPlaySt.chapter = chapter;
	gPlaySt.turn = TEST_SCENE_SAVE_TURN;
	WriteGameSave(save_id);
}

void test_scene_load_chapter_save(int save_id)
{
	ReadGameSave(save_id);
	test_scene_restart_game_and_chapter();
}

#endif /* CONFIG_TEST_MENU */
