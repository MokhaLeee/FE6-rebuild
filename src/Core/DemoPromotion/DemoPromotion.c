#include "prelude.h"
#include "unit.h"
#include "battle.h"
#include "item.h"
#include "action.h"
#include "bmio.h"
#include "util.h"
#include "ui.h"
#include "mu.h"
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

	EndAllMus();

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
	PROC_CALL(StartFastFadeToBlack),
	PROC_REPEAT(WhileFadeExists),
	PROC_CALL(LockBmDisplay),

	PROC_YIELD,
	PROC_CALL(DemoPromo_Init),
	PROC_YIELD,
    PROC_CALL(StartFastFadeFromBlack),
    PROC_REPEAT(WhileFadeExists),
	PROC_REPEAT(DemoPromo_Loop),
	PROC_YIELD,
    PROC_CALL(StartFastFadeToBlack),
    PROC_REPEAT(WhileFadeExists),
	PROC_CALL(DemoPromo_End),
	PROC_YIELD,

	/* end */
	PROC_CALL(UnlockBmDisplay),
	PROC_CALL(InitBmDisplay),
	PROC_CALL(StartFastFadeFromBlack),
	PROC_REPEAT(WhileFadeExists),
	PROC_END
};

static void PromoHandle_Init(struct ProcPromoHandler *proc)
{
	proc->action_type = PROMO_ACT_PROMO;
	proc->jid_promo = -1;
}

static void PromoHandle_StartSelect(struct ProcPromoHandler *proc)
{
	SpawnProcLocking(ProcScr_DemoPromoBM, proc);
}

static void PromoHandle_ExecAnim(struct ProcPromoHandler *proc)
{
	if (proc->action_type == PROMO_ACT_PROMO) {
		UnitUpdateUsedItem(proc->unit, proc->item_slot);
		StartUnitPromotionAction(proc->unit, proc->jid_promo, proc->unit->items[proc->item_slot]);
	}
}

static const struct ProcScr ProcScr_DemoPromoHandle[] = {
	PROC_CALL(LockGame),
	PROC_YIELD,
	PROC_CALL(PromoHandle_Init),
	PROC_CALL(PromoHandle_StartSelect),
	PROC_YIELD,
	PROC_CALL(PromoHandle_ExecAnim),
	PROC_YIELD,
	PROC_CALL(UnlockGame),
	PROC_END
};

void StartBmDemoPromotion(struct Unit *unit, int item_slot)
{
	struct ProcPromoHandler *proc;

	proc = SpawnProc(ProcScr_DemoPromoHandle, PROC_TREE_3);
	proc->promo_type = PROMO_TYPE_BM;

	proc->unit = unit;
	proc->pid = UNIT_PID(unit);
	proc->item_slot = item_slot;
}

void StartUnitPromotionAction(struct Unit *unit, int promo_jid, int weapon_handle)
{
	gBattleUnitA.weapon_before = weapon_handle;
	gBattleUnitB.weapon_before = gBattleUnitA.weapon_before;

	gBattleUnitA.weapon = GetUnitEquippedWeapon(unit);
	gBattleUnitB.weapon = gBattleUnitA.weapon;

	/* pre-promote battle unit */
	InitBattleUnitWithoutBonuses(&gBattleUnitB, unit);
	UnitPromote(unit, promo_jid);

	/* post-promote battle unit */
	InitBattleUnitWithoutBonuses(&gBattleUnitA, unit);
	GenerateBattleUnitStatGainsComparatively(&gBattleUnitA, &gBattleUnitB.unit);

	SetBattleUnitTerrainBonusesAuto(&gBattleUnitA);
	SetBattleUnitTerrainBonusesAuto(&gBattleUnitB);

	unit->flags |= UNIT_FLAG_HAD_ACTION;

	gBattleHits[0].attributes = 0;
	gBattleHits[0].info = BATTLE_HIT_INFO_END;
	gBattleHits[0].damage = 0;

	gBattleSt.flags = BATTLE_FLAG_PROMOTE;

	BeginBattleAnimations();
}
