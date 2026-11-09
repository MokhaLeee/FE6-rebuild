#include "prelude.h"

#include "bm.h"
#include "chapter.h"
#include "gamecontroller.h"
#include "hardware.h"
#include "random.h"
#include "save.h"
#include "save_game.h"
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

	RestartGameAndChapter();
}

#endif /* CONFIG_TEST_MENU */
