#include "prelude.h"
#include "hardware.h"
#include "spriteanim.h"
#include "unit.h"
#include "mu.h"
#include "bm.h"
#include "unitsprite.h"
#include "manim.h"

#include "map-anim.h"
#include "constants/songs.h"
#include "constants/videoalloc_global.h"

/*
 * Map heal animation: the unit does the "use item" pose, the hp goes back and
 * the heal glow blooms on it.
 *
 * The glow is the vanilla StartManimHealFx() proc, with the same art slot and
 * blend curve the vulnerary/heal-staff map animation uses.  That proc only
 * touches its own fields plus gDispIo/gPal/gBg2Tm (never gManimSt), so it runs
 * fine outside a battle animation; the only piece of manim bookkeeping it
 * leaves to its caller is the BG layer reset that Manim_Finish() usually does
 * (and the blend/palette preload on its first frame, done below).
 *
 * Nothing here reads or writes gBattleUnitA or gBattleHits either, so this is
 * usable from a skill action and from a post-action hook alike.
 */

enum
{
	HEAL_ANIM_POSE_FRAMES = 30,	/* the "use item" pose before the glow */
	HEAL_ANIM_ALPHA_MAX = 16,
};

struct ProcMapHealAnim
{
	PROC_HEADER;

	/* 2C */ struct Unit * unit;
	/* 30 */ int amount;
};

static void map_heal_anim_init(struct ProcMapHealAnim * proc)
{
	struct MuProc * mu;
	struct Unit * unit = proc->unit;

	mu = GetUnitMu(unit);
	if (mu == NULL) {
		HideUnitSprite(unit);
		mu = StartMu(unit);
	}

	if (mu) {
		SetMuDefaultFacing(mu);
		FreezeSpriteAnim(mu->sprite_anim);
	}

	SetBlendNone();

	CameraMoveWatchPosition(proc, unit->x, unit->y);
}

static void map_heal_anim_pose(struct ProcMapHealAnim * proc)
{
	struct MuProc * mu = GetUnitMu(proc->unit);

	if (mu)
		StartMuActionAnim(mu);
}

static void map_heal_anim_apply(struct ProcMapHealAnim * proc)
{
	AddUnitHp(proc->unit, proc->amount);
}

static void map_heal_anim_start_fx(struct ProcMapHealAnim * proc)
{
	/*
	 * The vanilla fx proc draws its tiles one frame before it starts the
	 * blend, so preload the palette and start it fully transparent; otherwise
	 * that frame would show the glow with whatever palette slot 4 held.
	 */
	ApplyPalette(Pal_ManimHeal, BGPAL_MANIM_4);

	SetBlendAlpha(0, HEAL_ANIM_ALPHA_MAX);
	SetBlendTargetA(0, 0, 1, 0, 0); SetBlendBackdropA(0);
	SetBlendTargetB(0, 0, 0, 1, 1); SetBlendBackdropB(1);

	StartManimHealFx(proc->unit, Img_ManimHeal, Pal_ManimHeal, SONG_89);
}

static void map_heal_anim_wait_fx(struct Proc * proc)
{
	if (!Proc_Exists(ProcScr_ManimHealFx))
		Proc_Break(proc);
}

static void map_heal_anim_end(struct ProcMapHealAnim * proc)
{
	struct MuProc * mu;

	/* Manim_Finish() normally does this for the fx, and the fx lives outside
	 * our proc, so its own teardown cannot do it for us. */
	InitBmBgLayers();

	mu = GetUnitMu(proc->unit);
	if (mu) {
		SetMuDefaultFacing(mu);
		ResetSpriteAnimClock(mu->sprite_anim);
	}
}

static const struct ProcScr ProcScr_MapHealAnim[] = {
	PROC_YIELD,
	PROC_CALL(map_heal_anim_init),
	PROC_YIELD,
	PROC_CALL(map_heal_anim_pose),
	PROC_SLEEP(HEAL_ANIM_POSE_FRAMES),
	PROC_CALL(map_heal_anim_apply),
	PROC_CALL(map_heal_anim_start_fx),
	PROC_REPEAT(map_heal_anim_wait_fx),
	PROC_CALL(map_heal_anim_end),
	PROC_END
};

void StartMapHealAnim(ProcPtr parent, struct Unit * unit, int amount)
{
	struct ProcMapHealAnim * proc;

	if (parent)
		proc = SpawnProcLocking(ProcScr_MapHealAnim, parent);
	else
		proc = SpawnProc(ProcScr_MapHealAnim, PROC_TREE_3);

	proc->unit = unit;
	proc->amount = amount;
}

bool MapHealAnimExists(void)
{
	return Proc_Exists(ProcScr_MapHealAnim);
}
