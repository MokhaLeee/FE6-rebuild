#include "prelude.h"

#include "menu.h"
#include "ui.h"

#include "constants/chapters.h"

#include "test_cases.h"
#include "test_chapter.h"
#include "test_probe.h"
#include "test_scene.h"
#include "testmenu_common.h"

#include "battle_cases.h"

#if CONFIG_TEST_MENU

static fu8 battle_on_init(struct MenuProc *menu);
static fu8 battle_on_select_chapter1(struct MenuProc *menu, struct MenuEntProc *ent);
static fu8 battle_on_select_back(struct MenuProc *menu, struct MenuEntProc *ent);

static struct MenuEntInfo CONST_DATA battle_entries[] = {
	{
		.label = " Test Battle",
		.available = MenuEntryEnabled,
		.on_select = battle_on_select_chapter1,
	},
	{
		.label = " Back",
		.available = MenuEntryEnabled,
		.on_select = battle_on_select_back,
	},
	{ 0 }, /* end */
};

struct MenuInfo CONST_DATA MenuInfo_TestBattle = {
	.rect = { 9, 4, 12, 0 },
	.entries = battle_entries,
	.on_init = battle_on_init,
	.on_b_press = battle_on_select_back,
};

static fu8 battle_on_init(struct MenuProc *menu)
{
	test_probe_set_menu(TEST_MENU_ID_CATEGORY, TEST_MENU_STATE_MENU);

	return 0;
}

static fu8 battle_on_select_chapter1(struct MenuProc *menu, struct MenuEntProc *ent)
{
	test_probe_set_case(TEST_CATEGORY_BATTLE, TEST_CASE_BATTLE_CHAPTER1);
	test_scene_start_chapter_with_event(CHAPTER_1, &ChapterEventInfo_TestBattle);

	return MENU_ACTION_NOCURSOR | MENU_ACTION_END | MENU_ACTION_SE_6A;
}

static fu8 battle_on_select_back(struct MenuProc *menu, struct MenuEntProc *ent)
{
	StartTestMenuTestRoot();

	return MENU_ACTION_NOCURSOR | MENU_ACTION_CLEAR | MENU_ACTION_END |
	       MENU_ACTION_SE_6B;
}

#endif /* CONFIG_TEST_MENU */
