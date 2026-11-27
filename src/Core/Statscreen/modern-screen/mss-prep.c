#include "prelude.h"

#include "hardware.h"
#include "util.h"
#include "proc.h"
#include "prepscreen.h"
#include "statscreen.h"

static ProcPtr s_mss_prep_bg;

/*
 * The prep menu and the unit list never leave the map's display state behind:
 * the display is switched off, a window may be enabled and, depending on the
 * screen, BG2 points at chr base 0x8000 (see PrepScreen_DrawScreenInfo()). The
 * modern statscreen draws absolute tile numbers and assumes chr base 0 on
 * BG0..BG2, so it rebuilds the whole screen instead of inheriting it.
 */
void Mss_Prep_ScreenInit(void)
{
	InitBgs(NULL);

	/* the caller's scanline callback must not touch the panels */
	SetOnVMatch(NULL);

	/* TmFill(0) is used all over the panels: keep tile 0 blank */
	SetBlankChr(0);
}

/*
 * Same scrolling backdrop as the prep menu and the unit list. mss_init() makes
 * BG2 the alpha-blend target and BG3 the second target, so the backdrop keeps
 * moving through the translucent panel fill.
 */
void Mss_Prep_BgStart(void)
{
	Decompress(Img_MonologueBG, (void *)VRAM + GetBgChrOffset(BG_3));
	ApplyPalettes(Pal_MonologueBG, BGPAL_PREP_BGSCROLL, 4);

	s_mss_prep_bg = StartPrepBgScrolling(NULL);
}

/*
 * The backdrop proc lives on the vsync tree, so the caller's blocking spawn
 * does not end it: it has to be killed here or it keeps scrolling on top of
 * whatever screen comes next.
 */
static void mss_prep_bg_end(void)
{
	if (s_mss_prep_bg == NULL)
		return;

	Proc_End(s_mss_prep_bg);
	s_mss_prep_bg = NULL;
}

void Mss_Prep_ScreenEnd(void)
{
	mss_prep_bg_end();

	/* The prep screens redraw themselves and switch the display back on. */
	SetDispEnable(0, 0, 0, 0, 0);
	SetBlendDarken(0x10);
	SetBlendTargetA(0, 0, 0, 0, 0);
	SetBlendBackdropA(1);
	SetBackdropColor(0);
}
