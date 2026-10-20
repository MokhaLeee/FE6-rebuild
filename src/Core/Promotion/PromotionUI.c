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
#include "banim.h"
#include "statscreen.h"
#include "sound.h"
#include "constants/songs.h"

#include "demo-promotion.h"

/**
 * ekrfx
 */
EWRAM_OVERLAY_PROM static struct EkrMainMiniDesc PromoEkrMiniDesc = {};
EWRAM_OVERLAY_PROM static u16 PromoEkrMini_ImgBuf[0x1000] = {};
EWRAM_OVERLAY_PROM static u16 PromoEkrMini_OamBuf[0x2C00] = {};
EWRAM_OVERLAY_PROM static u16 PromoEkrMini_PalBuf[0x50] = {};
EWRAM_OVERLAY_PROM static u8  PromoEkrMini_ScrBuf[0x2A00] = {};

EWRAM_OVERLAY_PROM static struct EfxopMagicDesc PromoEkrMagiDesc = {};
EWRAM_OVERLAY_PROM static u8 PromoEkrMagi_BgImgBuf[0x2000] = {};
EWRAM_OVERLAY_PROM static u8 PromoEkrMagi_BgTsaBuf[0x800] = {};
EWRAM_OVERLAY_PROM static u8 PromoEkrMagi_ObImgBuf[0x1000] = {};

EWRAM_OVERLAY_PROM static struct EkrTerrainfxDesc PromoEkrTerrainDesc = {};
EWRAM_OVERLAY_PROM static u8 PromoEkrTerrain_ImgBuf[0x2000] = {};

static void promofx_ekrmagi_callback(void)
{
	SetBlendConfig(1, 0x10, 0x10, 0);

	SetBlendTargetA(0, 1, 0, 0, 0);
	SetBlendTargetB(0, 0, 1, 1, 1);

	SetWinEnable(1, 0, 0);
	SetWin0Box(0, 0, 240, 160);

	SetWin0Layers(1, 1, 1, 1, 1);
	SetWOutLayers(1, 0, 1, 1, 1);

	gDispIo.win_ct.win0_enable_blend = 1;
	gDispIo.win_ct.wout_enable_blend = 0;
	gDispIo.blend_ct.target2_enable_bd = 1;
}

static void promofx_put_ekrmainmini(int bid, int char_pal, int x, int y, int round_type)
{
	struct EkrMainMiniDesc *mini_desc = &PromoEkrMiniDesc;
	struct EfxopMagicDesc  *magi_desc = &PromoEkrMagiDesc;

	NewEfxAnimeDrvProc();

	mini_desc->x = x;
	mini_desc->y = y;
	mini_desc->bid = bid;
	mini_desc->round_type = ANIM_ROUND_TAKING_HIT_CLOSE;
	mini_desc->faction_pal = BANIMPAL_BLUE;
	mini_desc->pos = POS_R;
	mini_desc->oam2_chr = OBCHR_UIPROMO_EKRMINI;
	mini_desc->oam2_pal = OBPAL_UIPROMO_EKRMINI;
	mini_desc->img_buf = PromoEkrMini_ImgBuf;
	mini_desc->oam_buf = PromoEkrMini_OamBuf;
	mini_desc->pal_buf = PromoEkrMini_PalBuf;
	mini_desc->scr_buf = PromoEkrMini_ScrBuf;
	mini_desc->magicfx_desc = magi_desc;

	magi_desc->magicFuncIdx = 4;
	magi_desc->xOffsetBg    = 0;
	magi_desc->yOffsetBg    = 0;
	magi_desc->xOffsetObj   = 0;
	magi_desc->yOffsetObj   = 0;
	magi_desc->objChr = OBCHR_UIPROMO_EKRMAGI;
	magi_desc->objPalId = OBPAL_UIPROMO_EKRMAGI;
	magi_desc->bgPalId = BGPAL_UIPROMO_EKRMAGI;
	magi_desc->bgChr = BGCHR_UIPROMO_EKRMAGI;
	magi_desc->bgPalId = BGPAL_UIPROMO_EKRMAGI;
	magi_desc->bg = BG_1;
	magi_desc->bgTmBuf = gBg1Tm;
	magi_desc->bgImgBuf = PromoEkrMagi_BgImgBuf;
	magi_desc->bgTsaBuf = PromoEkrMagi_BgTsaBuf;
	magi_desc->objImgBuf = PromoEkrMagi_ObImgBuf;
	magi_desc->resetCallback = promofx_ekrmagi_callback;

	ResetClassReelSpell();
	NewEkrUnitMainMini(mini_desc);
}

static void promofx_put_ekrterrainfx(int terrain, int x, int y)
{
	struct EkrTerrainfxDesc *desc = &PromoEkrTerrainDesc;

	desc->terrain_l = terrain;
	desc->pal_l = OBPAL_UIPROMO_EKRTERRAIN_L;
	desc->chr_l = OBCHR_UIPROMO_EKRTERRAIN_L;
	desc->terrain_r = terrain;
	desc->pal_r = OBPAL_UIPROMO_EKRTERRAIN_R;
	desc->chr_r = OBCHR_UIPROMO_EKRTERRAIN_R;
	desc->distance = EKR_DISTANCE_CLOSE;
	desc->bg_index = -1;
	desc->vram_offset = (u32)OBJ_VRAM0;
	desc->img_buf = PromoEkrTerrain_ImgBuf;

	NewEkrTerrainfx(desc);
	EkrTerrainfx_SetPosition(desc, x, y, x + 0x60, y);
}

static void PromoEkrFx_Init(struct ProcPromoEkrFx *proc)
{
	EndEfxAnimeDrvProc();
	EndEkrMainMini(&PromoEkrMiniDesc);
	promofx_put_ekrmainmini(0x10, 0, 180, 88, ANIM_ROUND_TAKING_HIT_CLOSE);
	EndEkrTerrainfx(&PromoEkrTerrainDesc);
	promofx_put_ekrterrainfx(1, 140, 104);
}

static void PromoEkrFx_Loop(struct ProcPromoEkrFx *proc)
{}

static void PromoEkrFx_End(struct ProcPromoEkrFx *proc)
{
	EndEfxAnimeDrvProc();
	EndEkrMainMini(&PromoEkrMiniDesc);
	EndEkrTerrainfx(&PromoEkrTerrainDesc);
}

static const struct ProcScr ProcScr_PromoEkrFx[] = {
	PROC_ONEND(PromoEkrFx_End),
	PROC_YIELD,
	PROC_CALL(PromoEkrFx_Init),
	PROC_YIELD,
	PROC_REPEAT(PromoEkrFx_Loop),
	PROC_BLOCK, PROC_END
};

/**
 * promo-sel
 */
static void PromoSel_Init(struct ProcPromoSel *proc)
{
}

static void PromoSel_Loop(struct ProcPromoSel *proc)
{}

static void PromoSel_End(struct ProcPromoSel *proc)
{}

static const struct ProcScr ProcScr_PromoSel[] = {
	PROC_ONEND(PromoSel_End),
	PROC_YIELD,
	PROC_CALL(PromoSel_Init),
	PROC_YIELD,
	PROC_REPEAT(PromoSel_Loop),
	PROC_BLOCK, PROC_END
};

/**
 * promo-main
 */
static void PromoMain_Init(struct ProcPromoMain *proc)
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

	proc->proc_ekrfx = SpawnProc(ProcScr_PromoEkrFx,  proc);
	proc->proc_sel = SpawnProc(ProcScr_PromoSel, proc);
}

static void PromoMain_Loop(struct ProcPromoMain *proc)
{
	if (gKeySt->pressed & KEY_BUTTON_B) {
		PlaySe(SONG_6B);
		Proc_Break(proc);
	}
}

static void PromoMain_End(struct ProcPromoMain *proc)
{
	EndMuralBackground();
}

static const struct ProcScr ProcScr_PromoMainBM[] = {
	/* start */
	PROC_CALL(StartFastFadeToBlack),
	PROC_REPEAT(WhileFadeExists),
	PROC_CALL(LockBmDisplay),

	PROC_YIELD,
	PROC_CALL(PromoMain_Init),
	PROC_YIELD,
	PROC_CALL(StartFastFadeFromBlack),
	PROC_REPEAT(WhileFadeExists),
	PROC_REPEAT(PromoMain_Loop),
	PROC_YIELD,
	PROC_CALL(StartFastFadeToBlack),
	PROC_REPEAT(WhileFadeExists),
	PROC_CALL(PromoMain_End),
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
	proc->child = SpawnProcLocking(ProcScr_PromoMainBM, proc);
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
