#include "prelude.h"
#include "hardware.h"
#include "move.h"

static EWRAM_DATA u8 sUnk_03000014;
static EWRAM_DATA u8 sUnk_03000015;

void TmFill(u16 *dest, int tileref)
{
	tileref = tileref + (tileref << 16);
	CpuFastFill(tileref, dest, sizeof gBg0Tm);
}

void SetBlankChr(int chr)
{
	RegisterDataFill(0, (void *)(VRAM + 0x20 *chr), 0x20);
}

void func_fe6_08001AE4(void)
{
	sUnk_03000014 = sUnk_03000015 = 0;

	TmFill(gBg0Tm, 0);
	EnableBgSync(BG0_SYNC_BIT);
}

void func_fe6_08001B18(u8 a, u8 b)
{
	sUnk_03000014 = a;
	sUnk_03000015 = b;
}

void func_fe6_08001B4C(u16 *a, u16 *b)
{
	int i;

	for (i = 0x27F; i >= 0; i--)
		*a++ = *b++;
}

void func_fe6_08001B8C(void *tm, void const *in_data, u8 base, u8 linebits)
{
	u8 const *it = (u8 const *) in_data + 2;
	u8 *out;

	u8 x_size = (*(u32 const *) in_data);
	u8 y_size = (*(u32 const *) in_data) >> 8;

	i8 ix, iy;

	for (iy = y_size; iy >= 0; iy--) {
		out = (u8 *) tm + (iy << linebits);

		for (ix = x_size; ix >= 0; ix--)
			*out++ = *it++ + base;
	}
}

void func_fe6_08001C68(u16 *tm, short const *in_data, int unused)
{
	int x_size = (in_data[0]) & 0xFF;
	int y_size = (in_data[0] >> 8) & 0xFF;

	int ix, iy;

	int acc = 0;

	in_data = in_data + 1;

	for (iy = 0; iy < y_size; ++iy) {
		u16 *out = tm + (iy << 5);

		for (ix = 0; ix < x_size; ++ix) {
			acc += *in_data++;
			*out++ = acc;
		}
	}
}
