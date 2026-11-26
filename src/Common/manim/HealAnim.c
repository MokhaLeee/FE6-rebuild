#include "prelude.h"
#include "hardware.h"
#include "sound.h"
#include "spriteanim.h"
#include "unit.h"
#include "mu.h"
#include "bm.h"
#include "unitsprite.h"
#include "icon.h"
#include "ui.h"
#include "manim.h"

#include "map-anim.h"
#include "constants/songs.h"
#include "constants/videoalloc_global.h"

/*
 * Map heal animation: the unit does the "use item" pose, the hp goes back and
 * the heal glow blooms on it, with the hp gauge counting up next to it.
 *
 * The glow is the vanilla StartManimHealFx() proc and the gauge reuses the
 * manim hp bar helpers (art + PutManimWindowBar/PutManimWindowNumber), all of
 * which take their state as arguments and never read gManimSt.  That is the
 * same art and the same blend curve the vulnerary/heal-staff map animation
 * uses, so only the window frame around the vanilla gauge is dropped.
 *
 * Nothing here reads or writes gBattleUnitA or gBattleHits either, so this is
 * usable from a skill action and from a post-action hook alike.
 */

enum {
	HEAL_ANIM_POSE_FRAMES = 30,	/* the "use item" pose before the glow */
	HEAL_ANIM_BAR_HOLD = 10,	/* full gauge, before it goes away */
	HEAL_ANIM_ALPHA_MAX = 16,

	HEAL_BAR_DIGITS = 3,		/* hp number in front of the gauge */
	HEAL_BAR_SEGMENTS = 6,		/* gauge tiles, see gManimHpBarTilesBaseInfo */
	HEAL_BAR_WIDTH = HEAL_BAR_DIGITS + HEAL_BAR_SEGMENTS,

	/* The gauge art sits where the map ui / window frame keep their own chr,
	 * so the teardown below has to put those back (as Manim_Finish() does).
	 */
	HEAL_BAR_PAL = BGPAL_MANIM_INFO,
};

struct ProcMapHealAnim {
	PROC_HEADER;

	/* 2C */ struct Unit *unit;
	/* 30 */ int amount;

	/* 34 */ int hp_shown_q4;	/* displayed hp, manim keeps 4 fractional bits */
	/* 38 */ int bar_x;		/* BG0 tilemap spot of the number block */
	/* 3C */ int bar_y;
	/* 40 */ bool mu_generated;	/* we hid the sprite, so we put it back */
};

static void map_heal_bar_put(struct ProcMapHealAnim *proc)
{
	u16 *tm = gBg0Tm + TM_OFFSET(proc->bar_x, proc->bar_y);
	int hp = proc->hp_shown_q4 >> 4;

	/* PutManimWindowNumber() takes the rightmost digit and writes leftwards. */
	PutManimWindowNumber(tm - 1, hp,
		TILEREF(BGCHR_MANIM_INFOFRAME + 31, HEAL_BAR_PAL),
		HEAL_BAR_DIGITS, 0);

	PutManimWindowBar(tm, GetUnitMaxHp(proc->unit), hp, 0,
		gManimHpBarTilesBaseInfo);

	EnableBgSync(BG0_SYNC_BIT);
}

static void map_heal_bar_clear(struct ProcMapHealAnim *proc)
{
	u16 *tm = gBg0Tm + TM_OFFSET(proc->bar_x - HEAL_BAR_DIGITS, proc->bar_y);
	int i;

	for (i = 0; i < HEAL_BAR_WIDTH; i++)
		tm[i] = 0;

	EnableBgSync(BG0_SYNC_BIT);
}

static void map_heal_anim_init(struct ProcMapHealAnim *proc)
{
	struct Unit *unit = proc->unit;
	struct MuProc *mu;

	mu = GetUnitMu(unit);
	if (!mu) {
		HideUnitSprite(unit);
		mu = StartMu(unit);
		proc->mu_generated = true;
	}

	if (mu) {
		SetMuDefaultFacing(mu);
		FreezeSpriteAnim(mu->sprite_anim);
	}

	SetBlendNone();

	CameraMoveWatchPosition(proc, unit->x, unit->y);
}

static void map_heal_anim_pose(struct ProcMapHealAnim *proc)
{
	struct MuProc *mu = GetUnitMu(proc->unit);

	if (mu)
		StartMuActionAnim(mu);
}

static void map_heal_anim_apply(struct ProcMapHealAnim *proc)
{
	proc->hp_shown_q4 = GetUnitCurrentHp(proc->unit) << 4;

	AddUnitHp(proc->unit, proc->amount);
}

static void map_heal_anim_start_bar(struct ProcMapHealAnim *proc)
{
	struct Unit *unit = proc->unit;
	int x = SCREEN_TILE_X(unit->x);
	int y = SCREEN_TILE_Y(unit->y);

	UnpackManimWindowGraphics(Img_ManimHpBar);

	/*
	 * The gauge is centered under the unit's feet (48 px against a 16 px
	 * sprite means it starts two tiles left), with the hp number right in
	 * front of its left end.
	 */
	proc->bar_x = x - 2;
	proc->bar_y = y + 2;

	if (proc->bar_x < HEAL_BAR_DIGITS)
		proc->bar_x = HEAL_BAR_DIGITS;

	if (proc->bar_x > DISPLAY_WIDTH / 8 - HEAL_BAR_SEGMENTS)
		proc->bar_x = DISPLAY_WIDTH / 8 - HEAL_BAR_SEGMENTS;

	if (proc->bar_y > DISPLAY_HEIGHT / 8 - 1)
		proc->bar_y = DISPLAY_HEIGHT / 8 - 1;

	map_heal_bar_put(proc);
}

static void map_heal_anim_start_fx(struct ProcMapHealAnim *proc)
{
	/*
	 * The vanilla fx proc draws its tiles one frame before it starts the
	 * blend, so preload the palette and start it fully transparent; otherwise
	 * that frame would show the glow with whatever palette slot 4 held.
	 */
	ApplyPalette(Pal_ManimHeal, BGPAL_MANIM_EFFECT);

	SetBlendAlpha(0, HEAL_ANIM_ALPHA_MAX);
	SetBlendTargetA(0, 0, 1, 0, 0);
	SetBlendBackdropA(0);
	SetBlendTargetB(0, 0, 0, 1, 1);
	SetBlendBackdropB(1);

	StartManimHealFx(proc->unit, Img_ManimHeal, Pal_ManimHeal, SONG_89);
}

static void map_heal_anim_loop(struct ProcMapHealAnim *proc)
{
	int target_q4 = GetUnitCurrentHp(proc->unit) << 4;
	int val = proc->hp_shown_q4;

	/*
	 * Same counting rate as the manim gauge: a quarter hp per frame, one
	 * SONG_75 tick per whole hp.
	 */
	if (val > target_q4) {
		val -= 16;
	} else if (val < target_q4) {
		val += 4;

		if (val % 16 == 0)
			PlaySe(SONG_75);
	}

	if (val != proc->hp_shown_q4) {
		proc->hp_shown_q4 = val;
		map_heal_bar_put(proc);
	}

	if (val == target_q4 && !Proc_Exists(ProcScr_ManimHealFx))
		Proc_Break(proc);
}

static void map_heal_anim_end(struct ProcMapHealAnim *proc)
{
	struct MuProc *mu;

	map_heal_bar_clear(proc);

	/* Give the map ui/window frame their graphics and palettes back. */
	UnpackUiWindowFrameGraphics();
	ApplyIconPalettes(BGPAL_ICONS);

	InitBmBgLayers();

	mu = GetUnitMu(proc->unit);

	if (proc->mu_generated) {
		/* Nobody owns this Mu but us: drop it and show the map sprite
		 * again, the way the hazard displays do. */
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

static const struct ProcScr ProcScr_MapHealAnim[] = {
	PROC_YIELD,
	PROC_CALL(map_heal_anim_init),
	PROC_YIELD,
	PROC_CALL(map_heal_anim_pose),
	PROC_SLEEP(HEAL_ANIM_POSE_FRAMES),
	PROC_CALL(map_heal_anim_apply),
	PROC_CALL(map_heal_anim_start_bar),
	PROC_CALL(map_heal_anim_start_fx),
	PROC_REPEAT(map_heal_anim_loop),
	PROC_SLEEP(HEAL_ANIM_BAR_HOLD),
	PROC_CALL(map_heal_anim_end),
	PROC_END
};

void StartMapHealAnim(ProcPtr parent, struct Unit *unit, int amount)
{
	struct ProcMapHealAnim *proc;

	if (parent)
		proc = SpawnProcLocking(ProcScr_MapHealAnim, parent);
	else
		proc = SpawnProc(ProcScr_MapHealAnim, PROC_TREE_3);

	proc->unit = unit;
	proc->amount = amount;
	proc->mu_generated = false;
}

bool MapHealAnimExists(void)
{
	return Proc_Exists(ProcScr_MapHealAnim);
}
