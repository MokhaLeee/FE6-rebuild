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

CONST_DATA int gUnk_08691490 = 0x180;
CONST_DATA int gUnk_08691494 = 0x40;
CONST_DATA int gUnk_08691498 = 0x6E;
CONST_DATA int gUnk_0869149C = 8;
CONST_DATA int gUnk_086914A0 = 0x28;
CONST_DATA int gUnk_086914A4 = 3;
CONST_DATA int gUnk_086914A8 = 0x1F4;
CONST_DATA int gUnk_086914AC = 0xA0;
CONST_DATA int gUnk_086914B0 = 0x96;
CONST_DATA int gUnk_086914B4 = 0x5C;
CONST_DATA int gUnk_086914B8 = 0xC8;
CONST_DATA int gUnk_086914BC = 0x64;
CONST_DATA int gUnk_086914C0 = 0x82;
CONST_DATA int gUnk_086914C4 = 0xB4;
CONST_DATA int gUnk_086914C8 = 0x80;
CONST_DATA int gUnk_086914CC = 0x30;
CONST_DATA int gUnk_086914D0 = 2;
CONST_DATA int gUnk_086914D4 = 4;
CONST_DATA int gUnk_086914D8 = 2;
CONST_DATA int gUnk_086914DC = 3;
CONST_DATA int gUnk_086914E0 = 0x1E0;
CONST_DATA int gUnk_086914E4[3] = { 2, 0x4B0, 0xC };
CONST_DATA int gUnk_086914F0 = 0x10;
CONST_DATA int gUnk_086914F4 = 0xF;
CONST_DATA int gUnk_086914F8 = 8;

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
