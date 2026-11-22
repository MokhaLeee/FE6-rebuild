#include "prelude.h"
#include "hardware.h"
#include "proc.h"
#include "event.h"
#include "sound.h"
#include "util.h"
#include "msg.h"
#include "titlescreen.h"
#include "gamecontroller.h"
#include "constants/songs.h"

#include "opanim.h"

CONST_DATA struct ProcScr ProcScr_TitleScreenHandler[] = {
	PROC_START_CHILD_LOCKING(ProcScr_TitleScreen),
	PROC_END
};

void StartOpAnim_unused(void)
{
	SpawnProc(ProcScr_OpAnim, PROC_TREE_3);
}

CONST_DATA struct ProcScr ProcScr_OpAnimfxTerminator[] = {
	PROC_REPEAT(OpAnimfxTerminator_Loop),
	PROC_END
};

void OpAnimfxTerminator_Loop(ProcPtr proc)
{
	if (gKeySt->pressed & (KEY_BUTTON_A | KEY_BUTTON_B | KEY_BUTTON_START)) {
		SetNextGameAction(GAME_ACTION_2);

		bool_opanim_03005284 = true;

		Proc_EndEachMarked(PROC_MARK_OPANIM);
		OpAnim_ResetDispIO();
		FadeBgmOut(1);
		Proc_Break(proc);
	}
}

struct ProcScr CONST_DATA ProcScr_OpAnim[] = {
	PROC_CALL(OpAnim_Init),
	PROC_SLEEP(0),
	PROC_START_CHILD(ProcScr_OpAnimfxTerminator),
	PROC_SLEEP(0),
	PROC_START_CHILD_LOCKING(ProcScr_OpAnim6),
	PROC_SLEEP(0),
	PROC_END_EACH(ProcScr_OpAnimfxTerminator),
	PROC_START_CHILD_LOCKING(ProcScr_TitleScreenFromOp),
	PROC_SLEEP(0),
	PROC_END,
};

void OpAnim_ResetDispIO(void)
{
	gPal[0] = 0;

	SetDispEnable(0, 0, 0, 0, 0);
	SetWinEnable(0, 0, 0);
	SetBlendNone();
}

u16 CONST_DATA BgConf_OpAnim_08691604[12] = {
	// tile offset  map offset  screen size
	0x0000,         0xA000,     0,          // BG 0
	0x0000,         0xA800,     0,          // BG 1
	0xC000,         0xB000,     0,          // BG 2
	0x8000,         0xB800,     0,          // BG 3
};

void OpAnim_Init(void)
{
	InitBgs(BgConf_OpAnim_08691604);
	SetDispEnable(1, 1, 1, 1, 1);
	SetWinEnable(0, 0, 0);
	SetAllBlackPals();
	EnablePalSync();
	bool_opanim_03005284 = false;
}

u16 CONST_DATA BgConf_OpAnim_0869161C[12] = {
	// tile offset  map offset  screen size
	0x0000,         0xA000,     0,          // BG 0
	0x4000,         0xA800,     0,          // BG 1
	0xC000,         0xB000,     0,          // BG 2
	0x8000,         0xB800,     0,          // BG 3
};

void OpAnim6_ResetBG(void)
{
	InitBgs(BgConf_OpAnim_0869161C);
	Clear4bppFirstTm();

	gDispIo.disp_ct.mode = 0;
	SetDispEnable(1, 1, 0, 0, 1);
	SetWinEnable(0, 0, 0);
	SetBlendNone();
}

void OpAnim_SetWin0Layers(int bg0, int bg1, int bg2, int bg3, int obj)
{
	SetWinEnable(1, 0, 0);
	SetWin0Box(0, 0x10, 0xF0, 0x90);
	SetWin0Layers(bg0, bg1, bg2, bg3, obj);
	SetWOutLayers(0, 0, 0, 0, 0);

	gDispIo.win_ct.win0_enable_blend = 1;
	gDispIo.win_ct.wout_enable_blend = 0;

	EnablePalSync();
}
