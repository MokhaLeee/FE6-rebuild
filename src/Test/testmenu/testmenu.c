#include "prelude.h"

#include "bm.h"
#include "chapter.h"
#include "debugtext.h"
#include "face.h"
#include "gamecontroller.h"
#include "hardware.h"
#include "menu.h"
#include "statscreen.h"
#include "text.h"
#include "ui.h"

#include "constants/faces.h"

#include "test_probe.h"
#include "testmenu.h"

#if CONFIG_TEST_MENU

enum {
	BGCHR_TESTMENU_MURAL = 0x580,
};

static fu8 testmenu_on_init(struct MenuProc *menu);
static fu8 testmenu_on_end(struct MenuProc *menu);
static fu8 testmenu_on_select_start_game(struct MenuProc *menu,
					 struct MenuEntProc *ent);
static fu8 testmenu_on_select_dummy(struct MenuProc *menu,
				    struct MenuEntProc *ent);

static struct MenuEntInfo CONST_DATA test_menu_entries[] = {
	{
		.label = " Start Game",
		.available = MenuEntryEnabled,
		.on_select = testmenu_on_select_start_game,
	},
	{
		.label = " Dummy",
		.available = MenuEntryEnabled,
		.on_select = testmenu_on_select_dummy,
	},
	{ 0 }, /* end */
};

static struct MenuInfo CONST_DATA test_menu_info = {
	.rect = { 9, 4, 12, 0 },
	.entries = test_menu_entries,
	.on_init = testmenu_on_init,
	.on_end = testmenu_on_end,
};

static fu8 testmenu_on_init(struct MenuProc *menu)
{
	int left_disp = FACE_DISP_KIND(FACE_96x80_FLIPPED) | FACE_DISP_HLAYER(4);
	int right_disp = FACE_DISP_KIND(FACE_96x80) | FACE_DISP_HLAYER(4);

	test_probe_set_menu(TEST_MENU_ID_TOP, TEST_MENU_STATE_MENU);

	StartFace(0, FID_ROY, 32, 80, left_disp);
	StartFace(1, FID_LILINA, DISPLAY_WIDTH - 32, 80, right_disp);

	return 0;
}

static fu8 testmenu_on_end(struct MenuProc *menu)
{
	test_probe_set_menu(TEST_MENU_ID_NONE, TEST_MENU_STATE_NONE);

	EndFaceById(0);
	EndFaceById(1);

	SetDispEnable(0, 0, 0, 0, 0);
	SetBackdropColor(0);

	return 0;
}

static fu8 testmenu_on_select_start_game(struct MenuProc *menu,
					 struct MenuEntProc *ent)
{
	test_probe_set_menu(TEST_MENU_ID_NONE, TEST_MENU_STATE_NONE);
	StartGame();

	return MENU_ACTION_NOCURSOR | MENU_ACTION_END | MENU_ACTION_SE_6A;
}

static fu8 testmenu_on_select_dummy(struct MenuProc *menu,
				    struct MenuEntProc *ent)
{
	/* TODO: replace with the next test menu entry. */
	return 0;
}

void StartGame_TestMenu(void)
{
	SetMainFunc(OnMain);
	SetOnVBlank(OnVBlank);

	test_probe_reset();

	InitBmDisplay();
	DebugInitBg(BG_2, 0);

	StartMuralBackground(StartMenu(&test_menu_info),
			     (u8 *)BG_VRAM + CHR_SIZE * BGCHR_TESTMENU_MURAL,
			     -1);

	DebugPutStr(gBg2Tm + TM_OFFSET(0, 2), "TEST MENU");
}

#endif /* CONFIG_TEST_MENU */
