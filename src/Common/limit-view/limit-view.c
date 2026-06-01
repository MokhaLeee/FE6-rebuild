#include "prelude.h"
#include "playerphase.h"
#include "hardware.h"
#include "constants/videoalloc_global.h"

void LimitView_Loop(struct Proc *proc)
{
	int frame = (GetGameTime() / 2) & 0x1F;

	/**
	 * MMAP
	 */
	if (proc->unk4A & LIMITVIEW_MMAP_BLUE)
		ApplyPaletteExt(Pal_LimitViewBlue + frame,  0x20 * BGPAL_LIMITVIEW + 2, 0x20);

	if (proc->unk4A & LIMITVIEW_MMAP_RED)
		ApplyPaletteExt(Pal_LimitViewRed + frame,   0x20 * BGPAL_LIMITVIEW + 2, 0x20);

	if (proc->unk4A & LIMITVIEW_MMAP_GREEN)
		ApplyPaletteExt(Pal_LimitViewGreen + frame, 0x20 * BGPAL_LIMITVIEW + 2, 0x20);

	/**
	 * RMAP
	 */
	if (proc->unk4A & LIMITVIEW_RMAP_RED)
		ApplyPaletteExt(Pal_LimitViewRed + frame,   0x20 * (BGPAL_LIMITVIEW + 1) + 2, 0x20);

	if (proc->unk4A & LIMITVIEW_RMAP_GREEN)
		ApplyPaletteExt(Pal_LimitViewGreen + frame, 0x20 * (BGPAL_LIMITVIEW + 1) + 2, 0x20);

	if (proc->unk4A & LIMITVIEW_RMAP_BLUE)
		ApplyPaletteExt(Pal_LimitViewBlue + frame,  0x20 * (BGPAL_LIMITVIEW + 1) + 2, 0x20);
}
