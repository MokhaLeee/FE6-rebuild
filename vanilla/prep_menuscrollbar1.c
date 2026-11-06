#include "prelude.h"
#include "hardware.h"
#include "proc.h"
#include "oam.h"
#include "sprite.h"
#include "prepscreen.h"

void MenuScroll_Init(struct MenuScrollBarProc * proc)
{
	proc->xBase = 0;
	proc->yBase = 0;
	proc->numSegments = 0;

	proc->currentSegment = 0;
	proc->numTotalRows = proc->currentSegment;
	proc->numVisibleRows = 0;
	proc->prevSegment = proc->currentSegment;
	proc->oam2Chr = OBCHR_PREPMENU_390;
	proc->oam2Pal = OAM2_PAL(OBPAL_PREPMENU_1);
	proc->topArrowFrameIdx = 0;
	proc->bottomArrowFrameIdx = 0;
}
