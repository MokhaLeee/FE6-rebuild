#include "prelude.h"
#include "hardware.h"
#include "bmio.h"
#include "statscreen.h"
#include "sound.h"
#include "util.h"
#include "mapui.h"
#include "save_stats.h"
#include "constants/songs.h"

static void mss_main(ProcPtr proc)
{
	if (gKeySt->pressed & KEY_BUTTON_B) {
		Proc_Break(proc);
		PlaySe(SONG_6B);
		return;
	}
}

static void mss_hide_mapui(ProcPtr proc)
{
	ProcPtr ui_proc;

	ui_proc = FindProc(ProcScr_UnitMapUi);
	if (ui_proc)
		Proc_Goto(ui_proc, 3);

	ui_proc = FindProc(ProcScr_TerrainMapUi);
	if (ui_proc)
		Proc_Break(ui_proc);

	CallDelayed(EndMapUi, 3);
	StartTemporaryLock(proc, 3);
}

static const struct ProcScr procscr_modern_statscreen[] = {
	PROC_CALL(LockBmDisplay),

	/* remove map-ui */
	PROC_CALL(mss_hide_mapui),
	PROC_YIELD,

	PROC_CALL(StartGreenText),

	PROC_REPEAT(mss_main),

	PROC_CALL(UnlockBmDisplay),
	PROC_CALL(EndGreenText),
	PROC_END,
};

void StartModernStatScreen(struct Unit *unit, ProcPtr parent)
{
	gStatScreenSt.x_disp_off = 0;
	gStatScreenSt.y_disp_off = 0;
	gStatScreenSt.page = 0;
	gStatScreenSt.unit = unit;
	gStatScreenSt.help = NULL;
	gStatScreenSt.page_slide_key_bit = 0;
	gStatScreenSt.is_transitioning = FALSE;

	PidStatsAddStatView(unit->pinfo->id);
	PlaySe(SONG_6A);

	SpawnProcLocking(procscr_modern_statscreen, parent);
}
