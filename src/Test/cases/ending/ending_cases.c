#include "prelude.h"

#include "bm.h"
#include "bmfx.h"
#include "chapter.h"
#include "ending.h"
#include "event.h"
#include "eventfunctions.h"
#include "eventinfo.h"
#include "gamecontroller.h"
#include "menu.h"
#include "proc.h"
#include "ui.h"

#include "constants/chapters.h"

#include "test_cases.h"
#include "test_probe.h"
#include "test_scene.h"
#include "testmenu_common.h"

#include "ending_cases.h"

#if CONFIG_TEST_MENU

/* 进章节后最多等这么多帧，超过就判失败，避免 watchdog 永远挂着。 */
enum { TEST_ENDING_START_TIMEOUT = 600 };

static bool sEndingStarted;

/* 等章节真正回到地图：地图主循环存在、章节标题已结束、没有别的事件在跑。 */
static bool test_ending_wait_map_ready(ProcPtr proc)
{
	if (FindProc(ProcScr_BmMain) == NULL)
		return true;

	if (FindProc(ProcScr_ChapterIntro) != NULL)
		return true;

	if (FindProc(ProcScr_Event) != NULL)
		return true;

	return false;
}

/*
 * 补齐 EndingCredit_Reinit() 平时负责的全局状态。
 *
 * 不补的话 StartGameEnding() 会从脏的 step 开始；
 * gEndingDispType 保持 0 时所有角色卡都会变成 CG。
 */
static void test_ending_prepare_globals(void)
{
	gEndingDispType = ENDING_DISP_1;
	gEndingSceneKind = 1;
	gCreditInfoDispStep = 0;
	gEndingCgIndex = 0;
	gEndingDoneFlag = 0;
	gCreditNameDispMode = 0;
	gGameEndingFlag = 0;
	gEndingPInfoIsDyad = false;

	/*
	 * 直接填出击/待机名单，绕开 GetEndingId()：
	 * 测试章节不是最终章，GetEndingId() 会走 FAKE_ENDING 的名单。
	 */
	SetupTrueEndingUids();
	SetupEndingPInfo2Uids();
}

static void test_ending_launch_character(ProcPtr proc)
{
	struct GameController *gc = GetGameController();

	if (gc == NULL) {
		test_probe_finish(false);
		return;
	}

	test_ending_prepare_globals();

	/*
	 * 章节中途直接进结局：先把地图主循环收掉。不然 GC 会一直挂在
	 * StartMapMain() 加的那个 lock 上，ending 播完也到不了标题。
	 */
	if (FindProc(ProcScr_BmMain) != NULL)
		EndMapMain();

	/* 结束流程跑完后让 game controller 直接回标题，而不是进存档/下一章。 */
	SetNextGameAction(GAME_ACTION_0);

	sEndingStarted = true;
	test_probe_set_value(0, 1);
	StartEventLocking(EventScr_CharacterEnding, gc);
}

static void test_ending_try_launch(ProcPtr proc)
{
	/*
	 * 章节开场事件还没结束时不要动手：EndMapMain() 会把事件依赖的
	 * 地图主循环一起收掉。等它自己跑完再启动。
	 */
	if (FindProc(ProcScr_Event) != NULL)
		return;

	test_ending_launch_character(proc);
	Proc_Break(proc);
}

static void test_ending_watch_init(ProcPtr proc)
{
	((struct Proc *)proc)->timer1 = 0;
}

static bool test_ending_watch_running(ProcPtr proc)
{
	struct Proc *p = proc;

	if (!sEndingStarted) {
		if (p->timer1++ >= TEST_ENDING_START_TIMEOUT)
			return false;

		return true;
	}

	return FindProc(ProcScr_Ending) != NULL;
}

static void test_ending_on_done(ProcPtr proc)
{
	if (!sEndingStarted) {
		test_probe_finish(false);
		return;
	}

	test_probe_set_value(1, gCreditInfoDispStep);
	test_probe_set_value(2, gEndingCgIndex);
	test_probe_set_value(3, (u8)gEndingUid1);
	test_probe_finish(true);
}

static struct ProcScr CONST_DATA ProcScr_TestEndingWatch[] = {
	PROC_19,
	/*
	 * CleanupGame() 只保留 PROC_MARK_GAMECTRL，watchdog 必须带这个
	 * mark 才能活到结束流程跑完、把结果写进探针。
	 */
	PROC_MARK(PROC_MARK_GAMECTRL),
	PROC_CALL(test_ending_watch_init),
	PROC_WHILE(test_ending_watch_running),
	PROC_SLEEP(2),
	PROC_CALL(test_ending_on_done),
	PROC_END,
};

static struct ProcScr CONST_DATA ProcScr_TestEndingWait[] = {
	PROC_19,
	PROC_WHILE(test_ending_wait_map_ready),
	PROC_SLEEP(30),
	PROC_REPEAT(test_ending_try_launch),
	PROC_END,
};

static void test_ending_start_character(void)
{
	test_probe_set_case(TEST_CATEGORY_ENDING, TEST_CASE_ENDING_CHARACTER);

	sEndingStarted = false;

	SpawnProc(ProcScr_TestEndingWatch, PROC_TREE_3);
	SpawnProc(ProcScr_TestEndingWait, PROC_TREE_3);

	test_scene_start_chapter(CHAPTER_TEST);
}

static fu8 ending_on_init(struct MenuProc *menu);
static fu8 ending_on_select_character(struct MenuProc *menu,
				      struct MenuEntProc *ent);
static fu8 ending_on_select_back(struct MenuProc *menu,
				 struct MenuEntProc *ent);

static struct MenuEntInfo CONST_DATA ending_entries[] = {
	{
		.label = " Character",
		.available = MenuEntryEnabled,
		.on_select = ending_on_select_character,
	},
	{
		.label = " Back",
		.available = MenuEntryEnabled,
		.text_color = TEXT_COLOR_SYSTEM_GREEN,
		.on_select = ending_on_select_back,
	},
	{ 0 }, /* end */
};

struct MenuInfo CONST_DATA MenuInfo_TestEnding = {
	.rect = { 8, 4, 14, 0 },
	.entries = ending_entries,
	.on_init = ending_on_init,
	.on_b_press = ending_on_select_back,
};

static fu8 ending_on_init(struct MenuProc *menu)
{
	test_probe_set_menu(TEST_MENU_ID_CATEGORY, TEST_MENU_STATE_MENU);

	return 0;
}

static fu8 ending_on_select_character(struct MenuProc *menu,
				      struct MenuEntProc *ent)
{
	test_ending_start_character();

	return MENU_ACTION_NOCURSOR | MENU_ACTION_END | MENU_ACTION_SE_6A;
}

static fu8 ending_on_select_back(struct MenuProc *menu,
				 struct MenuEntProc *ent)
{
	StartTestMenuTestRoot();

	return MENU_ACTION_NOCURSOR | MENU_ACTION_CLEAR | MENU_ACTION_END |
	       MENU_ACTION_SE_6B;
}

#endif /* CONFIG_TEST_MENU */
