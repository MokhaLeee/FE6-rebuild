#include "prelude.h"
#include "statscreen.h"
#include "hardware.h"
#include "util.h"

static void DrawUiGaugeBitmapEdgeColumn(u8 *bitmap, int pixels_per_line, int column)
{
	bitmap[1 * pixels_per_line + column] = 4;
	bitmap[2 * pixels_per_line + column] = 14;
	bitmap[3 * pixels_per_line + column] = 3;
}

static void DrawUiGaugeBitmapBaseColumn(u8 *bitmap, int pixels_per_line, int column)
{
	bitmap[0 * pixels_per_line + column] = 4;
	bitmap[1 * pixels_per_line + column] = 14;
	bitmap[2 * pixels_per_line + column] = 14;
	bitmap[3 * pixels_per_line + column] = 14;
	bitmap[4 * pixels_per_line + column] = 3;
}

static void DrawUiGaugeBitmapFilledColumn(u8 *bitmap, int pixels_per_line, int column)
{
	bitmap[1 * pixels_per_line + column] = 1;
	bitmap[2 * pixels_per_line + column] = 5;
}

static void DrawUiGaugeBitmapBonusColumn(u8 *bitmap, int pixels_per_line, int column)
{
	bitmap[1 * pixels_per_line + column] = 13;
	bitmap[2 * pixels_per_line + column] = 12;
}

static void DrawUiGauge(int chr, int dot_x, int chr_count, int dot_width, int dot_plain, int dot_bonus)
{
	int i;

	u8 *bitmap = gBuf;

	CpuFastFill(0, bitmap, chr_count * 8 * 8);

	DrawUiGaugeBitmapEdgeColumn(bitmap, chr_count * 8, dot_x);
	DrawUiGaugeBitmapEdgeColumn(bitmap, chr_count * 8, dot_x + dot_width + 3);

	for (i = 0; i < dot_width + 2; i++)
		DrawUiGaugeBitmapBaseColumn(bitmap, chr_count * 8, i + 1 + dot_x);

	for (i = 0; i < dot_plain; i++)
		DrawUiGaugeBitmapFilledColumn(bitmap, chr_count * 8, i + 2 + dot_x);

	if (dot_bonus > 0) {
		for (i = 0; i < dot_bonus; i++)
			DrawUiGaugeBitmapBonusColumn(bitmap, chr_count * 8, dot_plain + i + 2 + dot_x);
	} else {
		/**
		 * !
		 * negativestatbar
		 */
		dot_bonus = -dot_bonus;

		for (i = 0; i < dot_bonus; i++) {
			int pixels_per_line = chr_count * 8;
			int column = dot_plain - i + 2 + dot_x;

			bitmap[1 * pixels_per_line + column] = 8;
			bitmap[2 * pixels_per_line + column] = 7;
		}
	}

	ApplyBitmap(bitmap, ((u8 *) VRAM) + chr * CHR_SIZE, chr_count, 1);
}

void PutDrawUiGauge(int chr, int width, u16 * tm, int tileref, int dot_width, int dot_plain, int dot_bonus)
{
	DrawUiGauge(chr, 2, width, dot_width, dot_plain, dot_bonus);

	tileref += chr & 0x3FF; // TODO: macro?
	PutAppliedBitmap(tm, tileref, width, 1);
}
