#include "prelude.h"

#include "menu.h"
#include "ui.h"

#include "test_probe.h"
#include "testmenu_common.h"

#if CONFIG_TEST_MENU

static fu8 testmenu_test_on_init(struct MenuProc *menu);
static fu8 testmenu_test_on_back(struct MenuProc *menu, struct MenuEntProc *ent);
static void testmenu_test_reopen_top(struct Proc *proc);

static struct MenuEntInfo CONST_DATA test_root_entries[] = {
	{
		.label = " Back",
		.available = MenuEntryEnabled,
		.on_select = testmenu_test_on_back,
	},
	{ 0 }, /* end */
};

static struct ProcScr CONST_DATA ProcScr_TestMenuReopen[] = {
	PROC_WHILE_EXISTS(ProcScr_Menu),
	PROC_CALL(testmenu_test_reopen_top),
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

static fu8 testmenu_test_on_back(struct MenuProc *menu, struct MenuEntProc *ent)
{
	SpawnProc(ProcScr_TestMenuReopen, PROC_TREE_3);

	return MENU_ACTION_NOCURSOR | MENU_ACTION_CLEAR | MENU_ACTION_END |
	       MENU_ACTION_SE_6B;
}

static void testmenu_test_reopen_top(struct Proc *proc)
{
	test_probe_set_menu(TEST_MENU_ID_TOP, TEST_MENU_STATE_MENU);
	StartTestMenuTop();
}

#endif /* CONFIG_TEST_MENU */
