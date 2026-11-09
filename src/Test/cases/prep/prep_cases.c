#include "prelude.h"

#include "menu.h"
#include "ui.h"

#include "constants/chapters.h"

#include "test_cases.h"
#include "test_probe.h"
#include "test_scene.h"
#include "testmenu_common.h"

#include "prep_cases.h"

#if CONFIG_TEST_MENU

static fu8 prep_on_init(struct MenuProc *menu);
static fu8 prep_on_select_chapter2(struct MenuProc *menu, struct MenuEntProc *ent);
static fu8 prep_on_select_back(struct MenuProc *menu, struct MenuEntProc *ent);

static struct MenuEntInfo CONST_DATA prep_entries[] = {
	{
		.label = " Test Prep",
		.available = MenuEntryEnabled,
		.on_select = prep_on_select_chapter2,
	},
	{
		.label = " Back",
		.available = MenuEntryEnabled,
		.on_select = prep_on_select_back,
	},
	{ 0 }, /* end */
};

struct MenuInfo CONST_DATA MenuInfo_TestPrep = {
	.rect = { 9, 4, 12, 0 },
	.entries = prep_entries,
	.on_init = prep_on_init,
	.on_b_press = prep_on_select_back,
};

static fu8 prep_on_init(struct MenuProc *menu)
{
	test_probe_set_menu(TEST_MENU_ID_CATEGORY, TEST_MENU_STATE_MENU);

	return 0;
}

static fu8 prep_on_select_chapter2(struct MenuProc *menu, struct MenuEntProc *ent)
{
	test_probe_set_case(TEST_CATEGORY_PREP, TEST_CASE_PREP_SCREEN);
	test_scene_start_prep();

	return MENU_ACTION_NOCURSOR | MENU_ACTION_END | MENU_ACTION_SE_6A;
}

static fu8 prep_on_select_back(struct MenuProc *menu, struct MenuEntProc *ent)
{
	StartTestMenuTestRoot();

	return MENU_ACTION_NOCURSOR | MENU_ACTION_CLEAR | MENU_ACTION_END |
	       MENU_ACTION_SE_6B;
}

#endif /* CONFIG_TEST_MENU */
