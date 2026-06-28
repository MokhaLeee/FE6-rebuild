#include "prelude.h"
#include "proc.h"
#include "icon.h"
#include "util.h"
#include "oam.h"
#include "sprite.h"
#include "spriteanim.h"
#include "bm.h"
#include "unit.h"
#include "manim.h"
#include "sound.h"
#include "constants/songs.h"
#include "constants/videoalloc_global.h"

#include "skill-sys.h"

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

extern const u8 Img_MapAnimSKILL[];

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
		Img_MapAnimSKILL,
		OBJ_VRAM0 + 0x20 * OBCHR_MANIM_180);

	if (actor_icon != 0) {
		struct Unit *unit = gManimSt.actor[gManimSt.attacker_actor].unit;

		StartSpriteAnimProc(
			Ap_ManimMissTag,
			16 * (SCREEN_TILE_X(unit->x)) + 8,
			16 * (SCREEN_TILE_Y(unit->y)) + 16,
			TILEREF(OBCHR_MANIM_180, 0), 0, 2);
	}

	if (target_icon != 0) {
		struct Unit *unit = gManimSt.actor[gManimSt.defender_actor].unit;

		StartSpriteAnimProc(
			Ap_ManimMissTag,
			16 * (SCREEN_TILE_X(unit->x)) + 8,
			16 * (SCREEN_TILE_Y(unit->y)) + 16,
			TILEREF(OBCHR_MANIM_180, 0), 0, 2);
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
		Img_MapAnimSKILL,
		OBJ_VRAM0 + 0x20 * OBCHR_MANIM_180);

	StartSpriteAnimProc(
		Ap_ManimMissTag,
		16 * (SCREEN_TILE_X(proc->x)) + 8,
		16 * (SCREEN_TILE_Y(proc->y)) + 16,
		TILEREF(OBCHR_MANIM_180, 0), 0, 2);

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

void NewSkillMapAnimMini(int x, int y, u16 sid, ProcPtr parent)
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

bool SkillMapAnimMiniExists(void)
{
	return Proc_Exists(ProcScr_SkillMapAnimMini);
}
