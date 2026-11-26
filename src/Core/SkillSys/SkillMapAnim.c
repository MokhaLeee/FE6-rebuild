#include "prelude.h"
#include "proc.h"
#include "icon.h"
#include "util.h"
#include "oam.h"
#include "sprite.h"
#include "spriteanim.h"
#include "bm.h"
#include "unit.h"
#include "mu.h"
#include "unitsprite.h"
#include "manim.h"
#include "sound.h"
#include "constants/songs.h"
#include "constants/videoalloc_global.h"

#include "skill-sys.h"
#include "klib.h"

enum mapanimskillfx_idx {
	MAPANIMFX_CHR_L = 0x19C,
	MAPANIMFX_CHR_R = 0x19E,

	MAPANIMFX_PAL = 4,
};

struct ProcMapAnimSkillfx {
	PROC_HEADER;

	u8 pos;
	u32 icon_idx;
	int timer;
	int x, y;
};

// extern u8 const Img_MapAnimSKILL[];
extern u8 const *const gpImg_MapAnimSKILL;

/**
 * skill mapanim fx
 */
static void MapAnimSkillfx_Initfx(struct ProcMapAnimSkillfx *proc)
{
	proc->timer = 0;

	if (proc->pos == POS_L) {
		PutIconObjImg(proc->icon_idx, MAPANIMFX_CHR_L);

		proc->x -= 12;
		proc->y += 2;
	} else {
		PutIconObjImg(proc->icon_idx, MAPANIMFX_CHR_R);

		proc->x += 10;
		proc->y += 2;
	}
	ApplyIconPalette(0, 0x10 + MAPANIMFX_PAL);
}

static void MapAnimSkillfx_DrawIconIDLE(struct ProcMapAnimSkillfx *proc)
{
	int chr, oam2;

	int ix = proc->x * 8;
	int iy = proc->y * 8 + 4;

	if (proc->pos == POS_L)
		ix = ix - 1;
	else
		ix = ix + 2;

	if (ix < -16 || ix > DISPLAY_WIDTH)
		return;

	if (iy < -16 || iy > DISPLAY_HEIGHT)
		return;

	chr = proc->pos == POS_L
		? MAPANIMFX_CHR_L
		: MAPANIMFX_CHR_R;

	oam2 = OAM2_PAL(MAPANIMFX_PAL) +
					OAM2_LAYER(0b01) +
					OAM2_CHR(chr);

	PutSprite(4, OAM1_X(ix), OAM0_Y(iy) + OAM0_BLEND, Sprite_16x16, oam2);

	if (++proc->timer == 0x44)
		Proc_Break(proc);
}

static const struct ProcScr ProcScr_MapAnimSkillfx[] = {
	PROC_YIELD,
	PROC_CALL(MapAnimSkillfx_Initfx),
	PROC_REPEAT(MapAnimSkillfx_DrawIconIDLE),
	PROC_END
};

/**
 * skill mapanim handler
 */
static const struct ProcScr ProcScr_SkillMapAnimDeamon[] = {
	PROC_SLEEP(20),
	PROC_END
};

bool MapAnimRoundAnim_DisplaySkillIcon(ProcPtr parent)
{
	int round, sid_atk, sid_def;
	u32 actor_icon, target_icon, left_icon, right_icon;
	struct ProcMapAnimSkillfx *procfx;
	struct ManimInfoWindowProc *info;

	info = FindProc(ProcScr_ManimInfoWindow);
	if (!info)
		return false;

	round = GetBattleHitRound(gManimSt.hit_it);
	sid_atk = GetActorEfxSkill(round);
	sid_def = GetTargetEfxSkill(round);

	actor_icon = 0;
	if (SKILL_IS_VALID(sid_atk))
		actor_icon = SKILL_ICON(sid_atk);

	target_icon = 0;
	if (SKILL_IS_VALID(sid_def))
		target_icon = SKILL_ICON(sid_def);

	/* Terminator */
	if (actor_icon == 0 && target_icon == 0)
		return false;

	if (gManimSt.attacker_actor == 1) {
		left_icon  = actor_icon;
		right_icon = target_icon;
	} else {
		right_icon = actor_icon;
		left_icon  = target_icon;
	}

	/* Left */
	if (left_icon != 0) {
		procfx = SpawnProc(ProcScr_MapAnimSkillfx, info);
		procfx->x = info->x_tile;
		procfx->y = info->y_tile;
		procfx->icon_idx = left_icon;
		procfx->pos = POS_L;
	}

	/* Right */
	if (right_icon != 0) {
		procfx = SpawnProc(ProcScr_MapAnimSkillfx, info);
		procfx->x = info->x_tile;
		procfx->y = info->y_tile;
		procfx->icon_idx = right_icon;
		procfx->pos = POS_R;
	}

	Decompress(
		gpImg_MapAnimSKILL,
		OBJ_VRAM0 + 0x20 * OBCHR_MANIM_HITFX);

	if (actor_icon != 0) {
		struct Unit *unit = gManimSt.actor[gManimSt.attacker_actor].unit;

		StartSpriteAnimProc(
			Ap_ManimMissTag,
			SCREEN_TILE_X(unit->x) * 8 + 8,
			SCREEN_TILE_Y(unit->y) * 8 + 16,
			TILEREF(OBCHR_MANIM_HITFX, 0), 0, 2);
	}

	if (target_icon != 0) {
		struct Unit *unit = gManimSt.actor[gManimSt.defender_actor].unit;

		StartSpriteAnimProc(
			Ap_ManimMissTag,
			SCREEN_TILE_X(unit->x) * 8 + 8,
			SCREEN_TILE_Y(unit->y) * 8 + 16,
			TILEREF(OBCHR_MANIM_HITFX, 0), 0, 2);
	}

	if (actor_icon != 0)
		PlaySeSpacial(0x3D1, SCREEN_TILE_IX(gManimSt.actor[gManimSt.attacker_actor].unit->x));
	else
		PlaySeSpacial(0x3D1, SCREEN_TILE_IX(gManimSt.actor[gManimSt.defender_actor].unit->x));

	SpawnProcLocking(ProcScr_SkillMapAnimDeamon, parent);
	return true;
}

/**
 * user API
 */
struct ProcSkillMapAnimMini {
	PROC_HEADER;

	int timer;
	int x, y;
	int x_disp, y_disp;
	u16 sid;
};

static void move_camera(struct ProcSkillMapAnimMini *proc)
{
	CameraMoveWatchPosition(proc, proc->x, proc->y);
}

static void SkillMapAnimMini_Init(struct ProcSkillMapAnimMini *proc)
{
	/* Sprite anim */
	Decompress(
		gpImg_MapAnimSKILL,
		OBJ_VRAM0 + 0x20 * OBCHR_MANIM_HITFX);

	StartSpriteAnimProc(
		Ap_ManimMissTag,
		SCREEN_TILE_X(proc->x) * 8 + 8,
		SCREEN_TILE_Y(proc->y) * 8 + 16,
		TILEREF(OBCHR_MANIM_HITFX, 0), 0, 2);

	PlaySeSpacial(0x3D1, SCREEN_TILE_IX(proc->x));

	/* Icon */
	PutIconObjImg(SKILL_ICON(proc->sid), MAPANIMFX_CHR_L);
	ApplyIconPalette(0, 0x10 + MAPANIMFX_PAL);
	proc->timer = 0;
}

static void SkillMapAnimMini_Loop(struct ProcSkillMapAnimMini *proc)
{
	PutSprite(
		4,
		OAM1_X(SCREEN_TILE_IX(proc->x_disp)),
		OAM0_Y(SCREEN_TILE_IY(proc->y_disp)) + OAM0_BLEND,
		Sprite_16x16,
		OAM2_PAL(MAPANIMFX_PAL) + OAM2_LAYER(0b01) + OAM2_CHR(MAPANIMFX_CHR_L));

	if (++proc->timer == 40)
		Proc_Break(proc);
}

static const struct ProcScr ProcScr_SkillMapAnimMini[] = {
	PROC_YIELD,
	PROC_CALL(move_camera),
	PROC_YIELD,
	PROC_CALL(SkillMapAnimMini_Init),
	PROC_YIELD,
	PROC_REPEAT(SkillMapAnimMini_Loop),
	PROC_END
};

static void NewSkillMapAnimMini(int x, int y, u16 sid, ProcPtr parent)
{
	struct ProcSkillMapAnimMini *proc;

	if (parent)
		proc = SpawnProcLocking(ProcScr_SkillMapAnimMini, parent);
	else
		proc = SpawnProc(ProcScr_SkillMapAnimMini, PROC_TREE_3);

	proc->sid = sid;
	proc->x = x;
	proc->y = y;
	proc->x_disp = (x == 0) ? x + 1 : x - 1;
	proc->y_disp = y;
}

static bool SkillMapAnimMiniExists(void)
{
	return Proc_Exists(ProcScr_SkillMapAnimMini);
}

/**
 * mu anim
 */
struct ProcMuSkillAnim {
	PROC_HEADER;

	struct Unit *unit;
	u16 sid;
	bool mu_gen;
	void (*callback1)(ProcPtr proc);
	void (*callback2)(ProcPtr proc);
};

static void muskillanim_init(struct ProcMuSkillAnim *proc)
{
	struct MuProc *mu;

	proc->mu_gen = false;

	/*
	 * Reset the map the way cskillsys' MapAnim_CommonInit() does: drop stale
	 * Mus and rebuild the unit sprites before taking the unit over.  Without
	 * this a leftover battle Mu / stale map sprite can stack with the
	 * activation animation.
	 */
	EndAllMus();
	RefreshUnitSprites();

	HideUnitSprite(proc->unit);
	mu = StartMu(proc->unit);
	proc->mu_gen = true;

	if (!SKILL_IS_VALID(proc->sid)) {
		Proc_Goto(proc, 1);
		return;
	}

	SetMuDefaultFacing(mu);
	FreezeSpriteAnim(mu->sprite_anim);
	SetBlendNone();
	CameraMoveWatchPosition(proc, proc->unit->x, proc->unit->y);
}

static void muskillanim_act(struct ProcMuSkillAnim *proc)
{
	StartMuActionAnim(GetUnitMu(proc->unit));
}

static void muskillanim_start(struct ProcMuSkillAnim *proc)
{
	NewSkillMapAnimMini(proc->unit->x, proc->unit->y, proc->sid, proc);
}

static void muskillanim_callback1(struct ProcMuSkillAnim *proc)
{
	if (proc->callback1)
		proc->callback1(proc);
}

static void muskillanim_callback2(struct ProcMuSkillAnim *proc)
{
	if (proc->callback2)
		proc->callback2(proc);
}

static void muskillanim_wait(ProcPtr proc)
{
	if (!SkillMapAnimMiniExists())
		Proc_Break(proc);
}

static void muskillanim_end(struct ProcMuSkillAnim *proc)
{
	struct MuProc *mu = GetUnitMu(proc->unit);

	if (proc->mu_gen) {
		if (mu)
			EndMu(mu);

		ShowUnitSprite(proc->unit);

		return;
	}

	if (mu) {
		SetMuDefaultFacing(mu);
		ResetSpriteAnimClock(mu->sprite_anim);
	}
}

static const struct ProcScr ProcScr_MuSkillAnim[] = {
	// PROC_CALL(LockGame),
	// PROC_CALL(MapAnim_CommonInit),
	PROC_YIELD,
	PROC_CALL(muskillanim_init),
	PROC_YIELD,
	PROC_CALL(muskillanim_act),
	PROC_YIELD,
	PROC_CALL(muskillanim_start),
PROC_LABEL(1),
	PROC_YIELD,
	PROC_CALL(muskillanim_callback1),
	PROC_YIELD,
	PROC_CALL(muskillanim_callback2),
	PROC_YIELD,
	PROC_REPEAT(muskillanim_wait),
	PROC_YIELD,
	PROC_CALL(muskillanim_end),
	// PROC_CALL(UnlockGame),
	PROC_CALL(Manim_Finish),
	// PROC_CALL(MapAnim_CommonEnd),
	PROC_YIELD,
	PROC_END
};

void NewMuSkillAnim(
		struct Unit *unit,
		u16 sid,
		ProcPtr parent,
		void (*callback1)(ProcPtr proc),
		void (*callback2)(ProcPtr proc))
{
	struct ProcMuSkillAnim *proc;

	if (parent)
		proc = SpawnProcLocking(ProcScr_MuSkillAnim, parent);
	else
		proc = SpawnProc(ProcScr_MuSkillAnim, PROC_TREE_3);

	proc->unit = unit;
	proc->sid = sid;
	proc->callback1 = callback1;
	proc->callback2 = callback2;
}

void NewMuSkillAnimOnActiveUnit(
		u16 sid,
		ProcPtr parent,
		void (*callback1)(ProcPtr proc),
		void (*callback2)(ProcPtr proc))
{
	NewMuSkillAnim(gActiveUnit, sid, parent, callback1, callback2);
}

bool MuSkillAnimExists(void)
{
	return Proc_Exists(ProcScr_MuSkillAnim);
}
