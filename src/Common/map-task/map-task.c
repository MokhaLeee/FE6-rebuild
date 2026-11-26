#include "prelude.h"
#include "hardware.h"
#include "armfunc.h"
#include "oam.h"
#include "sprite.h"
#include "unit.h"
#include "faction.h"
#include "unitsprite.h"

#include "klib.h"
#include "map-task.h"

#include "constants/videoalloc_global.h"

/*
 * Map tasks: the overlays drawn on top of the map units, in the same OAM pass
 * as the unit sprites themselves (PutUnitSpritesOam() calls in here first).
 * One walk over the unit list feeds every overlay, so a new one - the hp bar,
 * say - only needs a call added to PutMapTaskOam().
 *
 * The icon art lives here too: nothing else draws it.
 */

static const u16 Sprite_SleepIconA[] =
{
	1, OAM0_SHAPE_16x16, OAM1_SIZE_16x16, OAM2_CHR(0x64) + OAM2_LAYER(2) + OAM2_PAL(OBPAL_1),
};

static const u16 Sprite_SleepIconB[] =
{
	1, OAM0_SHAPE_16x16 + OAM0_Y(-1), OAM1_SIZE_16x16, OAM2_CHR(0x64) + OAM2_LAYER(2) + OAM2_PAL(OBPAL_1),
};

static const u16 Sprite_SleepIconC[] =
{
	1, OAM0_SHAPE_16x16 + OAM0_Y(-2), OAM1_SIZE_16x16 + OAM1_X(-1), OAM2_CHR(0x64) + OAM2_LAYER(2) + OAM2_PAL(OBPAL_1),
};

static const u16 Sprite_SleepIconD[] =
{
	1, OAM0_SHAPE_16x16 + OAM0_Y(-3), OAM1_SIZE_16x16 + OAM1_X(-1), OAM2_CHR(0x4A) + OAM2_LAYER(2) + OAM2_PAL(OBPAL_1),
};

static const u16 Sprite_SleepIconE[] =
{
	1, OAM0_SHAPE_16x16 + OAM0_Y(-4), OAM1_SIZE_16x16 + OAM1_X(-2), OAM2_CHR(0x4A) + OAM2_LAYER(2) + OAM2_PAL(OBPAL_1),
};

static const u16 Sprite_SleepIconF[] =
{
	1, OAM0_SHAPE_16x16 + OAM0_Y(-5), OAM1_SIZE_16x16 + OAM1_X(-2), OAM2_CHR(0x4A) + OAM2_LAYER(2) + OAM2_PAL(OBPAL_1),
};

static const u16 Sprite_SleepIconG[] =
{
	1, OAM0_SHAPE_16x16 + OAM0_Y(-6), OAM1_SIZE_16x16 + OAM1_X(-3), OAM2_CHR(0x4A) + OAM2_LAYER(2) + OAM2_PAL(OBPAL_1),
};

static u16 const *const SleepIconSprites[] =
{
	Sprite_SleepIconA,
	Sprite_SleepIconB,
	Sprite_SleepIconC,
	Sprite_SleepIconD,
	Sprite_SleepIconE,
	Sprite_SleepIconF,
	Sprite_SleepIconG,
};

static const u16 Sprite_BerserkIconA[] =
{
	1, OAM0_SHAPE_16x8, OAM1_SIZE_16x8, OAM2_CHR(0x42) + OAM2_LAYER(2) + OAM2_PAL(OBPAL_1),
};

static const u16 Sprite_BerserkIconB[] =
{
	1, OAM0_SHAPE_16x8 + OAM0_Y(+1), OAM1_SIZE_16x8 + OAM1_X(+1), OAM2_CHR(0x62) + OAM2_LAYER(2) + OAM2_PAL(OBPAL_1),
};

static const u16 Sprite_BerserkIconC[] =
{
	1, OAM0_SHAPE_16x8 + OAM0_Y(+1), OAM1_SIZE_16x8, OAM2_CHR(0x44) + OAM2_LAYER(2) + OAM2_PAL(OBPAL_1),
};

static const u16 Sprite_BerserkIconD[] =
{
	1, OAM0_SHAPE_16x8, OAM1_SIZE_16x8 + OAM1_X(+1), OAM2_CHR(0x42) + OAM2_LAYER(2) + OAM2_PAL(OBPAL_1),
};

static const u16 Sprite_BerserkIconE[] =
{
	1, OAM0_SHAPE_16x8, OAM1_SIZE_16x8 + OAM1_X(+2), OAM2_CHR(0x62) + OAM2_LAYER(2) + OAM2_PAL(OBPAL_1),
};

static const u16 Sprite_BerserkIconF[] =
{
	1, OAM0_SHAPE_16x8 + OAM0_Y(+1), OAM1_SIZE_16x8, OAM2_CHR(0x44) + OAM2_LAYER(2) + OAM2_PAL(OBPAL_1),
};

static const u16 Sprite_BerserkIconG[] =
{
	1, OAM0_SHAPE_16x8, OAM1_SIZE_16x8 + OAM1_X(-1), OAM2_CHR(0x42) + OAM2_LAYER(2) + OAM2_PAL(OBPAL_1),
};

static const u16 Sprite_BerserkIconH[] =
{
	1, OAM0_SHAPE_16x8 + OAM0_Y(+1), OAM1_SIZE_16x8 + OAM1_X(+1), OAM2_CHR(0x62) + OAM2_LAYER(2) + OAM2_PAL(OBPAL_1),
};

static const u16 Sprite_BerserkIconI[] =
{
	1, OAM0_SHAPE_16x8 + OAM0_Y(+1), OAM1_SIZE_16x8 + OAM1_X(+2), OAM2_CHR(0x44) + OAM2_LAYER(2) + OAM2_PAL(OBPAL_1),
};

static u16 const *const BerserkIconSprites[] =
{
	Sprite_BerserkIconA,
	Sprite_BerserkIconB,
	Sprite_BerserkIconC,
	Sprite_BerserkIconD,
	Sprite_BerserkIconE,
	Sprite_BerserkIconF,
	Sprite_BerserkIconG,
	Sprite_BerserkIconH,
	Sprite_BerserkIconI,
};

static const u16 Sprite_None[] = { 0 };

static const u16 Sprite_SilenceIconA[] =
{
	1, OAM0_SHAPE_16x8, OAM1_SIZE_16x8, OAM2_CHR(0x66) + OAM2_LAYER(2) + OAM2_PAL(OBPAL_1),
};

static const u16 Sprite_SilenceIconB[] =
{
	1, OAM0_SHAPE_16x8 + OAM0_Y(-1), OAM1_SIZE_16x8, OAM2_CHR(0x46) + OAM2_LAYER(2) + OAM2_PAL(OBPAL_1),
};

static const u16 Sprite_SilenceIconC[] =
{
	1, OAM0_SHAPE_16x16 + OAM0_Y(-2), OAM1_SIZE_16x16, OAM2_CHR(0x48) + OAM2_LAYER(2) + OAM2_PAL(OBPAL_1),
};

static u16 const *const SilenceIconSprites[] =
{
	Sprite_SilenceIconA,
	Sprite_SilenceIconB,
	Sprite_SilenceIconC,
	Sprite_SilenceIconC,
	Sprite_SilenceIconC,
	Sprite_SilenceIconC,
	Sprite_SilenceIconC,
	Sprite_SilenceIconC,
	Sprite_SilenceIconC,
	Sprite_SilenceIconC,
	Sprite_SilenceIconC,
	Sprite_SilenceIconB,
	Sprite_SilenceIconA,
	Sprite_None,
	Sprite_None,
	Sprite_None,
	Sprite_None,
	Sprite_None,
};

static const u16 Sprite_PoisonIconA[] =
{
	2,
	OAM0_SHAPE_8x16, OAM1_SIZE_8x16 + OAM1_X(2), OAM2_CHR(0x40) + OAM2_LAYER(2) + OAM2_PAL(OBPAL_1),
	OAM0_SHAPE_8x16 + OAM0_Y(3), OAM1_SIZE_8x16 + OAM1_X(10), OAM2_CHR(0x41) + OAM2_LAYER(2) + OAM2_PAL(OBPAL_1),
};

static const u16 Sprite_PoisonIconB[] =
{
	2,
	OAM0_SHAPE_8x16 + OAM0_Y(-1), OAM1_SIZE_8x16 + OAM1_X(2) + OAM1_HFLIP, OAM2_CHR(0x40) + OAM2_LAYER(2) + OAM2_PAL(OBPAL_1),
	OAM0_SHAPE_8x16 + OAM0_Y(2), OAM1_SIZE_8x16 + OAM1_X(8) + OAM1_HFLIP, OAM2_CHR(0x41) + OAM2_LAYER(2) + OAM2_PAL(OBPAL_1),
};

static const u16 Sprite_PoisonIconC[] =
{
	2,
	OAM0_SHAPE_8x16 + OAM0_Y(-2), OAM1_SIZE_8x16 + OAM1_X(2), OAM2_CHR(0x40) + OAM2_LAYER(2) + OAM2_PAL(OBPAL_1),
	OAM0_SHAPE_8x16 + OAM0_Y(1), OAM1_SIZE_8x16 + OAM1_X(10), OAM2_CHR(0x41) + OAM2_LAYER(2) + OAM2_PAL(OBPAL_1),
};

static const u16 Sprite_PoisonIconD[] =
{
	2,
	OAM0_SHAPE_8x16 + OAM0_Y(-3), OAM1_SIZE_8x16 + OAM1_X(2) + OAM1_HFLIP, OAM2_CHR(0x40) + OAM2_LAYER(2) + OAM2_PAL(OBPAL_1),
	OAM0_SHAPE_8x16, OAM1_SIZE_8x16 + OAM1_X(8) + OAM1_HFLIP, OAM2_CHR(0x41) + OAM2_LAYER(2) + OAM2_PAL(OBPAL_1),
};

static const u16 Sprite_PoisonIconE[] =
{
	1, OAM0_SHAPE_8x16 + OAM0_Y(-4), OAM1_SIZE_8x16 + OAM1_X(4), OAM2_CHR(0x40) + OAM2_LAYER(2) + OAM2_PAL(OBPAL_1),
};

static const u16 Sprite_PoisonIconF[] =
{
	1, OAM0_SHAPE_8x16 + OAM0_Y(-5), OAM1_SIZE_8x16 + OAM1_X(4), OAM2_CHR(0x41) + OAM2_LAYER(2) + OAM2_PAL(OBPAL_1),
};

static const u16 Sprite_PoisonIconG[] =
{
	1, OAM0_SHAPE_8x16 + OAM0_Y(-6), OAM1_SIZE_8x16 + OAM1_X(4), OAM2_CHR(0x40) + OAM2_LAYER(2) + OAM2_PAL(OBPAL_1),
};

static const u16 Sprite_PoisonIconH[] =
{
	1, OAM0_SHAPE_8x16 + OAM0_Y(-7), OAM1_SIZE_8x16 + OAM1_X(4) + OAM1_HFLIP, OAM2_CHR(0x41) + OAM2_LAYER(2) + OAM2_PAL(OBPAL_1),
};

static u16 const *const PoisonIconSprites[] =
{
	Sprite_PoisonIconA,
	Sprite_PoisonIconB,
	Sprite_PoisonIconC,
	Sprite_PoisonIconD,
	Sprite_PoisonIconE,
	Sprite_PoisonIconF,
	Sprite_PoisonIconG,
	Sprite_PoisonIconH,
	Sprite_PoisonIconH,
	Sprite_None,
	Sprite_None,
	Sprite_None,
};

/* One frame of every animated status icon; resolved once per OAM pass. */
struct UnitStatusIconFrame {
	int poison;
	int sleep;
	int berserk;
	int silence;
};

/*
 * The hp bar follows the fe8u-cskillsys map task: one 16x8 OAM per unit, at
 * the unit's feet.  Its graphics live in the system objects sheet
 * (Img_SystemObjects), so the chr table below is all the bar needs; $74 is the
 * empty bar.
 */
static const u8 sHpBarChr[] = {
	0x74, 0x74,
	0x56, 0x54, 0x52,
	0x36, 0x34, 0x32,
	0x16, 0x14, 0x12,
};

static void put_unit_hp_bar_oam(struct Unit *unit, int x, int y)
{
	int hp = GetUnitCurrentHp(unit);
	int max = GetUnitMaxHp(unit);

	if (hp == max)
		return;

	if (hp > max)
		hp = max;

	PutOamHi(
		OAM1_X(0x200 + x), OAM0_Y(0x100 + y + 9),
		Sprite_16x8,
		OAM2_PAL(OBPAL_SYSTEM_OBJECTS) + OAM2_LAYER(2) +
		OAM2_CHR(sHpBarChr[k_udiv(hp * 10, max)]));
}

static void put_unit_status_icon_oam(struct Unit *unit, int x, int y,
				     const struct UnitStatusIconFrame *frame)
{
	switch (unit->status) {
	case UNIT_STATUS_POISON:
		PutOamHi(OAM1_X(0x200 + x - 2), OAM0_Y(0x100 + y - 4),
			 PoisonIconSprites[frame->poison], 0);
		break;

	case UNIT_STATUS_SILENCED:
		PutOamHi(OAM1_X(0x200 + x - 2), OAM0_Y(0x100 + y - 4),
			 SilenceIconSprites[frame->silence], 0);
		break;

	case UNIT_STATUS_SLEEP:
		PutOamHi(OAM1_X(0x200 + x + 2), OAM0_Y(0x100 + y),
			 SleepIconSprites[frame->sleep], 0);
		break;

	case UNIT_STATUS_BERSERK:
		PutOamHi(OAM1_X(0x200 + x + 1), OAM0_Y(0x100 + y - 5),
			 BerserkIconSprites[frame->berserk], 0);
		break;
	}
}

static void put_unit_rescue_icon_oam(struct Unit *unit, int x, int y)
{
	static u16 const rescue_pal_table[] = {
		OBPAL_UNITSPRITE_BLUE,
		OBPAL_UNITSPRITE_GREEN,
		OBPAL_UNITSPRITE_RED,
	};

	if (!(unit->flags & UNIT_FLAG_RESCUING))
		return;

	PutOamHi(OAM1_X(0x200 + x + 9), OAM0_Y(0x100 + y + 7), Sprite_8x8,
		 OAM2_CHR(3) + OAM2_LAYER(2) +
		 OAM2_PAL(rescue_pal_table[unit->rescue >> 6]));
}

/* Is this unit on screen, so that its map overlays should be drawn? */
static bool unit_oam_overlays_visible(struct Unit *unit, int *x_out, int *y_out)
{
	int x, y;

	if (!unit)
		return FALSE;

	if (!unit->pinfo)
		return FALSE;

	if (unit->flags & UNIT_FLAG_HIDDEN)
		return FALSE;

	if (GetUnitSpriteHiddenFlag(unit) != 0)
		return FALSE;

	x = unit->x * 16 - gBmSt.camera.x;
	y = unit->y * 16 - gBmSt.camera.y;

	if (x < -16 || x > DISPLAY_WIDTH)
		return FALSE;

	if (y < -16 || y > DISPLAY_HEIGHT)
		return FALSE;

	*x_out = x;
	*y_out = y;

	return TRUE;
}

void PutMapTaskOam(void)
{
	struct UnitStatusIconFrame frame;
	bool display_rescue_icon = GetGameTime() % 32 < 20 ? TRUE : FALSE;
	int i, x, y;

	frame.poison = k_umod(GetGameTime() / 8, ARRAY_COUNT(PoisonIconSprites));
	frame.sleep = k_umod(GetGameTime() / 16, ARRAY_COUNT(SleepIconSprites));
	frame.berserk = k_umod(GetGameTime() / 8, ARRAY_COUNT(BerserkIconSprites));
	frame.silence = k_umod(GetGameTime() / 4, ARRAY_COUNT(SilenceIconSprites));

	for (i = 1; i < FACTION_PURPLE; ++i) {
		struct Unit *unit = GetUnit(i);

		if (!unit_oam_overlays_visible(unit, &x, &y))
			continue;

		put_unit_hp_bar_oam(unit, x, y);
		put_unit_status_icon_oam(unit, x, y, &frame);

		if (display_rescue_icon)
			put_unit_rescue_icon_oam(unit, x, y);
	}
}
