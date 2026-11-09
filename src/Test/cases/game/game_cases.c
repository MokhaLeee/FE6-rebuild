#include "prelude.h"

#include "menu.h"
#include "ui.h"

#include "constants/chapters.h"

#include "test_cases.h"
#include "test_probe.h"
#include "test_scene.h"
#include "testmenu_common.h"

#include "game_cases.h"

#if CONFIG_TEST_MENU

static fu8 game_on_init(struct MenuProc *menu);
static fu8 game_on_select_chapter1(struct MenuProc *menu, struct MenuEntProc *ent);
static fu8 game_on_select_chapter2(struct MenuProc *menu, struct MenuEntProc *ent);
static fu8 game_on_select_chapter2(struct MenuProc *menu, struct MenuEntProc *ent)
{
	test_probe_set_case(TEST_CATEGORY_GAME, TEST_CASE_GAME_CHAPTER_2);
	test_scene_start_chapter(CHAPTER_2);

	return MENU_ACTION_NOCURSOR | MENU_ACTION_END | MENU_ACTION_SE_6A;
}

static fu8 game_on_select_back(struct MenuProc *menu, struct MenuEntProc *ent);

static struct MenuEntInfo CONST_DATA game_entries[] = {
	{
		.label = " Chapter 1",
		.available = MenuEntryEnabled,
		.on_select = game_on_select_chapter1,
	},
	{
		.label = " Chapter 2",
		.available = MenuEntryEnabled,
		.on_select = game_on_select_chapter2,
	},
	{
		.label = " Back",
		.available = MenuEntryEnabled,
		.text_color = TEXT_COLOR_SYSTEM_GREEN,
		.on_select = game_on_select_back,
	},
	{ 0 }, /* end */
};

struct MenuInfo CONST_DATA MenuInfo_TestGame = {
	.rect = { 9, 4, 12, 0 },
	.entries = game_entries,
	.on_init = game_on_init,
	.on_b_press = game_on_select_back,
};

static fu8 game_on_init(struct MenuProc *menu)
{
	test_probe_set_menu(TEST_MENU_ID_CATEGORY, TEST_MENU_STATE_MENU);

	return 0;
}

static fu8 game_on_select_chapter1(struct MenuProc *menu, struct MenuEntProc *ent)
{
	test_probe_set_case(TEST_CATEGORY_GAME, TEST_CASE_GAME_CHAPTER_1);
	test_scene_start_chapter(CHAPTER_1);

	return MENU_ACTION_NOCURSOR | MENU_ACTION_END | MENU_ACTION_SE_6A;
}

static fu8 game_on_select_back(struct MenuProc *menu, struct MenuEntProc *ent)
{
	StartTestMenuTestRoot();

	return MENU_ACTION_NOCURSOR | MENU_ACTION_CLEAR | MENU_ACTION_END |
	       MENU_ACTION_SE_6B;
}

#endif /* CONFIG_TEST_MENU */
