#include "prelude.h"
#include "statscreen.h"
#include "unit.h"
#include "text.h"
#include "faction.h"
#include "hardware.h"
#include "support.h"
#include "icon.h"
#include "armfunc.h"
#include "systemlabels.h"
#include "util.h"
#include "oam.h"
#include "sprite.h"
#include "constants/videoalloc_global.h"

#include "klib.h"
#include "lvup.h"

char const * CONST_DATA SystemLabel_Total[] = {
	[LANG_JAPANESE] = JTEXT("Total"),
	[LANG_ENGLISH] = TEXT("Total", "Total"),
};

static struct StatScreenTextInfo const gStatScreenPersonalInfoLabelsInfo[] = {
	{ gStatScreenSt.text + STATSCREEN_TEXT_POW,	  gUiTmScratchA + TM_OFFSET(1, 1),  TEXT_COLOR_SYSTEM_GOLD, 0, "Str" },
	{ gStatScreenSt.text + STATSCREEN_TEXT_MAG,	  gUiTmScratchA + TM_OFFSET(1, 3),  TEXT_COLOR_SYSTEM_GOLD, 0, "Mag" },
	{ gStatScreenSt.text + STATSCREEN_TEXT_SKL,	  gUiTmScratchA + TM_OFFSET(1, 5),  TEXT_COLOR_SYSTEM_GOLD, 0, "Skl" },
	{ gStatScreenSt.text + STATSCREEN_TEXT_SPD,	  gUiTmScratchA + TM_OFFSET(1, 7),  TEXT_COLOR_SYSTEM_GOLD, 0, "Spd" },
	{ gStatScreenSt.text + STATSCREEN_TEXT_LCK,	  gUiTmScratchA + TM_OFFSET(1, 9),  TEXT_COLOR_SYSTEM_GOLD, 0, "Luck" },
	{ gStatScreenSt.text + STATSCREEN_TEXT_DEF,	  gUiTmScratchA + TM_OFFSET(1, 11),  TEXT_COLOR_SYSTEM_GOLD, 0, "Def" },
	{ gStatScreenSt.text + STATSCREEN_TEXT_RES,	  gUiTmScratchA + TM_OFFSET(1, 13), TEXT_COLOR_SYSTEM_GOLD, 0, "Res" },
	{ gStatScreenSt.text + STATSCREEN_TEXT_MOV,	  gUiTmScratchA + TM_OFFSET(9, 1),  TEXT_COLOR_SYSTEM_GOLD, 0, "Move" },
	{ gStatScreenSt.text + STATSCREEN_TEXT_CON,	  gUiTmScratchA + TM_OFFSET(9, 3),  TEXT_COLOR_SYSTEM_GOLD, 0, "Con" },
	{ gStatScreenSt.text + STATSCREEN_TEXT_AID,	  gUiTmScratchA + TM_OFFSET(9, 5),  TEXT_COLOR_SYSTEM_GOLD, 0, "Aid" },
	{ gStatScreenSt.text + STATSCREEN_TEXT_AFFIN, gUiTmScratchA + TM_OFFSET(9, 9),  TEXT_COLOR_SYSTEM_GOLD, 0, "Affin" },
	{ gStatScreenSt.text + STATSCREEN_TEXT_TALK,  gUiTmScratchA + TM_OFFSET(9, 7),  TEXT_COLOR_SYSTEM_GOLD, 0, "Talk" },
	{ gStatScreenSt.text + STATSCREEN_TEXT_STAT,  gUiTmScratchA + TM_OFFSET(9, 11), TEXT_COLOR_SYSTEM_GOLD, 0, "Cond" },
	{ gStatScreenSt.text + STATSCREEN_TEXT_TOTAL, gUiTmScratchA + TM_OFFSET(9, 13), TEXT_COLOR_SYSTEM_GOLD, 0, "Total" },
	{ 0 }, // end
};

void PutStatScreenStatWithBar(int num, int x, int y, int base, int total, int max)
{
	int bonus = total - base;

	PutNumberOrBlank(gUiTmScratchA + TM_OFFSET(x, y),
		(base == max) ? TEXT_COLOR_SYSTEM_GREEN : TEXT_COLOR_SYSTEM_BLUE, base);

	PutNumberBonus(bonus, gUiTmScratchA + TM_OFFSET(x + 1, y));

	if (total > 30) {
		total = 30;
		bonus = total - base;
	}

	PutDrawUiGauge(BGCHR_STATSCREEN_STATBAR + 1 + num*6, 6,
		gUiTmScratchC + TM_OFFSET(x - 2, y + 1),
		TILEREF(0, BGPAL_STATSCREEN_STATBAR),
		k_udiv(max * 41, 30),
		k_udiv(base * 41, 30),
		k_udiv(bonus * 41, 30));
}

void PutStatScreenPersonalInfoPage(void)
{
	const void *tsa;

	if (UNIT_FACTION(gStatScreenSt.unit) == FACTION_BLUE)
		tsa = TsaLut_StatScreenBgPlayer[0];
	else
		tsa = TsaLut_StatScreenBgNonePlayer[0];

	TmApplyTsa(gUiTmScratchB, tsa, TILEREF(BGCHR_WINDOWFRAME, BGPAL_WINDOWFRAME));

	PutStatScreenText(gStatScreenPersonalInfoLabelsInfo);

	// display strength/magic stat value
	PutStatScreenStatWithBar(0, 5, 1,
		gStatScreenSt.unit->pow,
		GetUnitPower(gStatScreenSt.unit),
		GetUnitMaxStatusPow(gStatScreenSt.unit));

	PutStatScreenStatWithBar(1, 5, 3,
		gStatScreenSt.unit->mag,
		GetUnitMagic(gStatScreenSt.unit),
		GetUnitMaxStatusMag(gStatScreenSt.unit));

	// display skill stat value
	PutStatScreenStatWithBar(2, 5, 5,
		gStatScreenSt.unit->flags & UNIT_FLAG_RESCUING
			? gStatScreenSt.unit->skl / 2 : gStatScreenSt.unit->skl,
		GetUnitSkill(gStatScreenSt.unit),
		gStatScreenSt.unit->flags & UNIT_FLAG_RESCUING
			? GetUnitMaxStatusSkl(gStatScreenSt.unit) / 2 : GetUnitMaxStatusSkl(gStatScreenSt.unit));

	// display speed stat value
	PutStatScreenStatWithBar(3, 5, 7,
		gStatScreenSt.unit->flags & UNIT_FLAG_RESCUING
			? gStatScreenSt.unit->spd/2 : gStatScreenSt.unit->spd,
		GetUnitSpeed(gStatScreenSt.unit),
		gStatScreenSt.unit->flags & UNIT_FLAG_RESCUING
			? GetUnitMaxStatusSpd(gStatScreenSt.unit) / 2 : GetUnitMaxStatusSpd(gStatScreenSt.unit));

	// display luck stat value
	PutStatScreenStatWithBar(4, 5, 9,
		gStatScreenSt.unit->lck,
		GetUnitLuck(gStatScreenSt.unit),
		GetUnitMaxStatusLck(gStatScreenSt.unit));

	// display defense stat value
	PutStatScreenStatWithBar(5, 5, 11,
		gStatScreenSt.unit->def,
		GetUnitDefense(gStatScreenSt.unit),
		GetUnitMaxStatusDef(gStatScreenSt.unit));

	// display resistance stat value
	PutStatScreenStatWithBar(6, 5, 13,
		gStatScreenSt.unit->res,
		GetUnitResistance(gStatScreenSt.unit),
		GetUnitMaxStatusRes(gStatScreenSt.unit));

	// display movement stat value
	PutStatScreenStatWithBar(7, 13, 1,
		UNIT_MOV_BASE(gStatScreenSt.unit),
		GetUnitMovement(gStatScreenSt.unit),
		GetUnitMaxStatusMov(gStatScreenSt.unit));

	// display constitution stat value
	PutStatScreenStatWithBar(8, 13, 3,
		UNIT_CON_BASE(gStatScreenSt.unit),
		GetUnitCon(gStatScreenSt.unit),
		GetUnitMaxStatusCon(gStatScreenSt.unit));

	// display unit aid
	PutNumber(gUiTmScratchA + TM_OFFSET(13, 5), TEXT_COLOR_SYSTEM_BLUE,
		GetUnitAid(gStatScreenSt.unit));

	// display unit aid icon
	PutIcon(gUiTmScratchA + TM_OFFSET(14, 5),
		GetAidIconFromAttributes(UNIT_ATTRIBUTES(gStatScreenSt.unit)),
		TILEREF(0, BGPAL_ICONS + 1));

	// display affininity icon and name
	if (gStatScreenSt.unit->pinfo->affinity) {
		PutIcon(gUiTmScratchA + TM_OFFSET(12, 9),
			GetUnitAffinityIcon(gStatScreenSt.unit),
			TILEREF(0, BGPAL_ICONS + 1));

		Text_InsertDrawString(gStatScreenSt.text + STATSCREEN_TEXT_AFFIN,
			40, TEXT_COLOR_SYSTEM_BLUE, GetAffinityName(gStatScreenSt.unit->pinfo->affinity));
	}

	// display status name
	Text_InsertDrawString(gStatScreenSt.text + STATSCREEN_TEXT_STAT,
		24, TEXT_COLOR_SYSTEM_BLUE,
		GetUnitStatusName(gStatScreenSt.unit));

	// display status turns
	if (gStatScreenSt.unit->status != UNIT_STATUS_NONE) {
		PutNumberSmall(gUiTmScratchA + TM_OFFSET(16, 11),
			TEXT_COLOR_SYSTEM_WHITE,
			gStatScreenSt.unit->status_duration);
	}
}

/**
 * rescue
 */
void StatScreenSprites_PutRescueMarkers(struct StatScreenSpritesProc *proc)
{
	bool display_icon = (GetGameTime() % 32) < 20;

	static u16 const pal_lut[3] = {
		OBPAL_UNITSPRITE_BLUE,
		OBPAL_UNITSPRITE_GREEN,
		OBPAL_UNITSPRITE_RED,
	};

	if (!gStatScreenSt.is_transitioning) {
		if ((gStatScreenSt.page == STATSCREEN_PAGE_PERSONALINFO) && (gStatScreenSt.unit->flags & UNIT_FLAG_RESCUING)) {
			PutSysArrow(120, 56, TRUE);
			PutSysArrow(120, 72, TRUE);

			if (display_icon) {
				PutSprite(4,
					32, 86, Sprite_8x8,
					OAM2_CHR(3) + OAM2_PAL(pal_lut[gStatScreenSt.unit->rescue >> 6]) + OAM2_LAYER(2));
			}
		}

		if (gStatScreenSt.unit->flags & UNIT_FLAG_RESCUED) {
			if (display_icon) {
				PutSprite(4,
					32, 86, Sprite_8x8,
					OAM2_CHR(3) + OAM2_PAL(pal_lut[gStatScreenSt.unit->rescue >> 6]) + OAM2_LAYER(2));
			}
		}
	}
}
