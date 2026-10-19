#include "prelude.h"
#include "unit.h"
#include "battle.h"
#include "action.h"
#include "bmio.h"
#include "util.h"
#include "ui.h"
#include "hardware.h"
#include "chapter.h"
#include "statscreen.h"
#include "sound.h"
#include "constants/songs.h"

#include "demo-promotion.h"

static void DemoPromo_Init(struct ProcPromoMain *proc)
{
	const u16 bg_config[12] = {
		0x0000, 0x6000, 0,
		0x0000, 0x6800, 0,
		0x0000, 0x7000, 0,
		0x8000, 0x7800, 0,
	};

	InitBgs(bg_config);

	UnpackUiWindowFrameGraphics();
	SetDispEnable(1, 1, 1, 1, 1);

    SetBgOffset(BG_0, 0, 0);
    SetBgOffset(BG_1, 0, 0);
    SetBgOffset(BG_2, 0, 0);
    SetBgOffset(BG_3, 0, 0);

    TmFill(gBg0Tm, 0);
    TmFill(gBg1Tm, 0);
    TmFill(gBg2Tm, 0);
    TmFill(gBg3Tm, 0);

	StartMuralBackground(proc, NULL, -1);
	EnableBgSync(BG0_SYNC_BIT | BG1_SYNC_BIT | BG2_SYNC_BIT | BG3_SYNC_BIT);
}

static void DemoPromo_Loop(struct ProcPromoMain *proc)
{
	if (gKeySt->pressed & KEY_BUTTON_B) {
		PlaySe(SONG_6B);
		Proc_Break(proc);
	}
}

static void DemoPromo_End(struct ProcPromoMain *proc)
{
	EndMuralBackground();
}

static const struct ProcScr ProcScr_DemoPromoBM[] = {
	/* start */
	PROC_CALL(LockGame),
	PROC_CALL(StartFastFadeToBlack),
	PROC_REPEAT(WhileFadeExists),
	PROC_CALL(LockBmDisplay),

	PROC_YIELD,
	PROC_CALL(DemoPromo_Init),
	PROC_YIELD,
	PROC_REPEAT(DemoPromo_Loop),
	PROC_YIELD,
	PROC_CALL(DemoPromo_End),
	PROC_YIELD,

	/* end */
	PROC_CALL(UnlockBmDisplay),
	PROC_CALL(InitBmDisplay),
	PROC_CALL(StartFastFadeFromBlack),
	PROC_REPEAT(WhileFadeExists),
	PROC_CALL(UnlockGame),
	PROC_END
};

void StartBmPromotion(ProcPtr parent)
{
	struct ProcPromoMain *proc;

	if (parent)
		proc = SpawnProcLocking(ProcScr_DemoPromoBM, parent);
	else
		proc = SpawnProc(ProcScr_DemoPromoBM, PROC_TREE_3);

	proc->promo_type = PROMO_TYPE_BM;
	proc->unit = GetUnit(gAction.instigator);
	proc->pid = UNIT_PID(proc->unit);
	proc->item_slot = gAction.item_slot;

	LockBmDisplay();
}
