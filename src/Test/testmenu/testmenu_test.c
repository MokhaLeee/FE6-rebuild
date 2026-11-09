#include "prelude.h"

#include "menu.h"
#include "ui.h"

#include "test_probe.h"
#include "testmenu_common.h"

#include "../cases/prep/prep_cases.h"
#include "../cases/battle/battle_cases.h"
#include "../cases/save/save_cases.h"
#include "../cases/game/game_cases.h"
#include "../cases/system/system_cases.h"

#if CONFIG_TEST_MENU

static fu8 testmenu_test_on_init(struct MenuProc *menu);
static fu8 testmenu_test_on_select_game(struct MenuProc *menu,
					struct MenuEntProc *ent);
static fu8 testmenu_test_on_select_save(struct MenuProc *menu,
					struct MenuEntProc *ent);
static fu8 testmenu_test_on_select_battle(struct MenuProc *menu,
					  struct MenuEntProc *ent);
static fu8 testmenu_test_on_select_prep(struct MenuProc *menu,
					struct MenuEntProc *ent);
static fu8 testmenu_test_on_select_system(struct MenuProc *menu,
					  struct MenuEntProc *ent);
static fu8 testmenu_test_on_back(struct MenuProc *menu, struct MenuEntProc *ent);
static void testmenu_test_reopen_top(struct Proc *proc);
static void testmenu_test_reopen_root(struct Proc *proc);

static struct MenuEntInfo CONST_DATA test_root_entries[] = {
	{
		.label = " Game",
		.available = MenuEntryEnabled,
		.on_select = testmenu_test_on_select_game,
	},
	{
		.label = " Save",
		.available = MenuEntryEnabled,
		.on_select = testmenu_test_on_select_save,
	},
	{
		.label = " Battle",
		.available = MenuEntryEnabled,
		.on_select = testmenu_test_on_select_battle,
	},
	{
		.label = " Prep",
		.available = MenuEntryEnabled,
		.on_select = testmenu_test_on_select_prep,
	},
	{
		.label = " System",
		.available = MenuEntryEnabled,
		.on_select = testmenu_test_on_select_system,
	},
	{
		.label = " Back",
		.available = MenuEntryEnabled,
		.text_color = TEXT_COLOR_SYSTEM_GREEN,
		.on_select = testmenu_test_on_back,
	},
	{ 0 }, /* end */
};

static struct ProcScr CONST_DATA ProcScr_TestMenuReopen[] = {
	PROC_WHILE_EXISTS(ProcScr_Menu),
	PROC_CALL(testmenu_test_reopen_top),
	PROC_END,
};

static struct ProcScr CONST_DATA ProcScr_TestMenuReopenRoot[] = {
	PROC_WHILE_EXISTS(ProcScr_Menu),
	PROC_CALL(testmenu_test_reopen_root),
	PROC_END,
};

struct MenuInfo CONST_DATA MenuInfo_TestRoot = {
	.rect = { 9, 4, 12, 0 },
	.entries = test_root_entries,
	.on_init = testmenu_test_on_init,
	.on_b_press = testmenu_test_on_back,
};

static fu8 testmenu_test_on_init(struct MenuProc *menu)
{
	test_probe_set_menu(TEST_MENU_ID_TEST_ROOT, TEST_MENU_STATE_MENU);

	return 0;
}

static fu8 testmenu_test_on_select_game(struct MenuProc *menu,
					struct MenuEntProc *ent)
{
	ClearUi();
	StartMenu(&MenuInfo_TestGame);

	return MENU_ACTION_NOCURSOR | MENU_ACTION_END | MENU_ACTION_SE_6A;
}

static fu8 testmenu_test_on_select_save(struct MenuProc *menu,
					struct MenuEntProc *ent)
{
	ClearUi();
	StartMenu(&MenuInfo_TestSave);

	return MENU_ACTION_NOCURSOR | MENU_ACTION_END | MENU_ACTION_SE_6A;
}

static fu8 testmenu_test_on_select_battle(struct MenuProc *menu,
					  struct MenuEntProc *ent)
{
	ClearUi();
	StartMenu(&MenuInfo_TestBattle);

	return MENU_ACTION_NOCURSOR | MENU_ACTION_END | MENU_ACTION_SE_6A;
}

static fu8 testmenu_test_on_select_prep(struct MenuProc *menu,
					struct MenuEntProc *ent)
{
	ClearUi();
	StartMenu(&MenuInfo_TestPrep);

	return MENU_ACTION_NOCURSOR | MENU_ACTION_END | MENU_ACTION_SE_6A;
}

static fu8 testmenu_test_on_select_system(struct MenuProc *menu,
					  struct MenuEntProc *ent)
{
	ClearUi();
	StartMenu(&MenuInfo_TestSystem);

	return MENU_ACTION_NOCURSOR | MENU_ACTION_END | MENU_ACTION_SE_6A;
}

static fu8 testmenu_test_on_back(struct MenuProc *menu, struct MenuEntProc *ent)
{
	SpawnProc(ProcScr_TestMenuReopen, PROC_TREE_3);

	return MENU_ACTION_NOCURSOR | MENU_ACTION_CLEAR | MENU_ACTION_END |
	       MENU_ACTION_SE_6B;
}

void StartTestMenuTestRoot(void)
{
	SpawnProc(ProcScr_TestMenuReopenRoot, PROC_TREE_3);
}

static void testmenu_test_reopen_top(struct Proc *proc)
{
	test_probe_set_menu(TEST_MENU_ID_TOP, TEST_MENU_STATE_MENU);
	StartTestMenuTop();
}

static void testmenu_test_reopen_root(struct Proc *proc)
{
	test_probe_set_menu(TEST_MENU_ID_TEST_ROOT, TEST_MENU_STATE_MENU);
	ClearUi();
	StartMenu(&MenuInfo_TestRoot);
}

#endif /* CONFIG_TEST_MENU */
