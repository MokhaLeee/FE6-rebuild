#include "prelude.h"

#include "bm.h"
#include "item.h"
#include "menu.h"
#include "ui.h"
#include "unit.h"

#include "constants/chapters.h"
#include "constants/iids.h"
#include "constants/pids.h"

#include "save.h"
#include "save_core.h"
#include "save_game.h"

#include "hacks/save-hw.h"
#include "test_cases.h"
#include "test_probe.h"
#include "test_scene.h"
#include "testmenu_common.h"

#include "save_cases.h"

#if CONFIG_TEST_MENU

static fu8 save_on_init(struct MenuProc *menu);
static fu8 save_on_select_write_load(struct MenuProc *menu, struct MenuEntProc *ent);
static fu8 save_on_select_write(struct MenuProc *menu, struct MenuEntProc *ent);
static fu8 save_on_select_load(struct MenuProc *menu, struct MenuEntProc *ent);
static fu8 save_on_select_corrupt(struct MenuProc *menu, struct MenuEntProc *ent);
static fu8 save_on_select_corrupt(struct MenuProc *menu,
				  struct MenuEntProc *ent)
{
	u8 *addr;
	u8 byte;
	bool valid;
	bool corrupt_valid;
	bool pass;

	test_probe_set_case(TEST_CATEGORY_SAVE, TEST_CASE_SAVE_CORRUPT);

	test_scene_write_chapter_save(SAVE_GAME0, CHAPTER_1);
	valid = IsSaveValid(SAVE_GAME0);

	addr = GetSaveReadAddr(SAVE_GAME0);
	ReadSave(addr, &byte, 1);
	byte ^= 0xFF;
	WriteSave(&byte, addr, 1);

	corrupt_valid = IsSaveValid(SAVE_GAME0);
	pass = valid && !corrupt_valid;

	test_probe_set_value(0, valid);
	test_probe_set_value(1, corrupt_valid);
	test_probe_set_flags(0);
	test_probe_finish(pass);

	return 0;
}

static fu8 save_on_select_back(struct MenuProc *menu, struct MenuEntProc *ent);

static struct MenuEntInfo CONST_DATA save_entries[] = {
	{
		.label = " Write + Load",
		.available = MenuEntryEnabled,
		.on_select = save_on_select_write_load,
	},
	{
		.label = " Write",
		.available = MenuEntryEnabled,
		.on_select = save_on_select_write,
	},
	{
		.label = " Load",
		.available = MenuEntryEnabled,
		.on_select = save_on_select_load,
	},
	{
		.label = " Corrupt Check",
		.available = MenuEntryEnabled,
		.on_select = save_on_select_corrupt,
	},
	{
		.label = " Back",
		.available = MenuEntryEnabled,
		.text_color = TEXT_COLOR_SYSTEM_GREEN,
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

static bool save_write_and_verify(u8 case_id)
{
	struct PlaySt play_st;
	bool valid;
	bool pass;

	test_probe_set_case(TEST_CATEGORY_SAVE, case_id);

	test_scene_write_chapter_save(SAVE_GAME0, CHAPTER_1);

	valid = IsSaveValid(SAVE_GAME0);
	ReadGameSavePlaySt(SAVE_GAME0, &play_st);

	pass = valid
		&& play_st.chapter == CHAPTER_1
		&& play_st.turn == TEST_SCENE_SAVE_TURN;

	test_probe_set_value(0, valid);
	test_probe_set_value(1, play_st.chapter);
	test_probe_set_value(2, play_st.turn);
	test_probe_set_flags(0);
	test_probe_finish(pass);

	return pass;
}

static bool save_load_and_verify(u8 case_id, bool restart)
{
	struct PlaySt play_st;
	struct Unit *roy;
	bool valid;
	bool pass;
	u16 flags = 0;

	test_probe_set_case(TEST_CATEGORY_SAVE, case_id);

	valid = IsSaveValid(SAVE_GAME0);
	ReadGameSavePlaySt(SAVE_GAME0, &play_st);

	/* Clobber RAM so the load must restore the saved values. */
	gPlaySt.chapter = CHAPTER_2;
	gPlaySt.turn = 0;

	if (valid)
		ReadGameSave(SAVE_GAME0);

	roy = GetUnitByPid(PID_ROY);
	if (roy) {
		if (roy->level == TEST_SCENE_SAVE_LEVEL)
			flags |= 1;
		if (roy->exp == TEST_SCENE_SAVE_EXP)
			flags |= 2;
		if (roy->items[0] == MAKE_ITEM(IID_IRONSWORD, TEST_SCENE_SAVE_ITEM_USES))
			flags |= 4;
	}

	pass = valid
		&& play_st.chapter == CHAPTER_1
		&& play_st.turn == TEST_SCENE_SAVE_TURN
		&& gPlaySt.chapter == CHAPTER_1
		&& gPlaySt.turn == TEST_SCENE_SAVE_TURN
		&& flags == 7;

	test_probe_set_value(0, valid);
	test_probe_set_value(1, play_st.chapter);
	test_probe_set_value(2, play_st.turn);
	test_probe_set_value(3, gPlaySt.turn);
	test_probe_set_flags(flags);
	test_probe_finish(pass);

	if (restart && valid)
		test_scene_restart_game_and_chapter();

	return pass;
}

static fu8 save_on_select_write_load(struct MenuProc *menu, struct MenuEntProc *ent)
{
	save_write_and_verify(TEST_CASE_SAVE_WRITE_LOAD);
	save_load_and_verify(TEST_CASE_SAVE_WRITE_LOAD, true);

	return MENU_ACTION_NOCURSOR | MENU_ACTION_END | MENU_ACTION_SE_6A;
}

static fu8 save_on_select_write(struct MenuProc *menu, struct MenuEntProc *ent)
{
	save_write_and_verify(TEST_CASE_SAVE_WRITE);

	return 0;
}

static fu8 save_on_select_load(struct MenuProc *menu, struct MenuEntProc *ent)
{
	save_load_and_verify(TEST_CASE_SAVE_LOAD, true);

	return MENU_ACTION_NOCURSOR | MENU_ACTION_END | MENU_ACTION_SE_6A;
}

static fu8 save_on_select_back(struct MenuProc *menu, struct MenuEntProc *ent)
{
	StartTestMenuTestRoot();

	return MENU_ACTION_NOCURSOR | MENU_ACTION_CLEAR | MENU_ACTION_END |
	       MENU_ACTION_SE_6B;
}

#endif /* CONFIG_TEST_MENU */
