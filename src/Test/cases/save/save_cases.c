#include "prelude.h"

#include "bm.h"
#include "menu.h"
#include "ui.h"

#include "constants/chapters.h"

#include "save.h"
#include "save_game.h"
#include "test_cases.h"
#include "test_probe.h"
#include "test_scene.h"
#include "testmenu_common.h"

#include "save_cases.h"

#if CONFIG_TEST_MENU

static fu8 save_on_init(struct MenuProc *menu);
static fu8 save_on_select_write_load(struct MenuProc *menu, struct MenuEntProc *ent);
static fu8 save_on_select_back(struct MenuProc *menu, struct MenuEntProc *ent);

static struct MenuEntInfo CONST_DATA save_entries[] = {
	{
		.label = " Write + Load",
		.available = MenuEntryEnabled,
		.on_select = save_on_select_write_load,
	},
	{
		.label = " Back",
		.available = MenuEntryEnabled,
		.on_select = save_on_select_back,
	},
	{ 0 }, /* end */
};

struct MenuInfo CONST_DATA MenuInfo_TestSave = {
	.rect = { 9, 4, 12, 0 },
	.entries = save_entries,
	.on_init = save_on_init,
	.on_b_press = save_on_select_back,
};

static fu8 save_on_init(struct MenuProc *menu)
{
	test_probe_set_menu(TEST_MENU_ID_CATEGORY, TEST_MENU_STATE_MENU);

	return 0;
}

static fu8 save_on_select_write_load(struct MenuProc *menu, struct MenuEntProc *ent)
{
	struct PlaySt play_st;
	bool valid;
	bool pass;

	test_probe_set_case(TEST_CATEGORY_SAVE, TEST_CASE_SAVE_WRITE_LOAD);

	test_scene_write_chapter_save(SAVE_GAME0, CHAPTER_1);

	valid = IsSaveValid(SAVE_GAME0);
	ReadGameSavePlaySt(SAVE_GAME0, &play_st);

	/* Clobber RAM so the load must restore the saved values. */
	gPlaySt.chapter = CHAPTER_2;
	gPlaySt.turn = 0;

	if (valid)
		ReadGameSave(SAVE_GAME0);

	pass = valid
		&& play_st.chapter == CHAPTER_1
		&& play_st.turn == TEST_SCENE_SAVE_TURN
		&& gPlaySt.chapter == CHAPTER_1
		&& gPlaySt.turn == TEST_SCENE_SAVE_TURN;

	test_probe_set_value(0, valid);
	test_probe_set_value(1, play_st.chapter);
	test_probe_set_value(2, play_st.turn);
	test_probe_set_value(3, gPlaySt.turn);
	test_probe_finish(pass);

	if (valid)
		test_scene_restart_game_and_chapter();

	return MENU_ACTION_NOCURSOR | MENU_ACTION_END | MENU_ACTION_SE_6A;
}

static fu8 save_on_select_back(struct MenuProc *menu, struct MenuEntProc *ent)
{
	StartTestMenuTestRoot();

	return MENU_ACTION_NOCURSOR | MENU_ACTION_CLEAR | MENU_ACTION_END |
	       MENU_ACTION_SE_6B;
}

#endif /* CONFIG_TEST_MENU */
