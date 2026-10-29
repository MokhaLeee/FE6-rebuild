#include "prelude.h"
#include "hardware.h"

SECTION(".ewram.hardware") u16 gBg0Tm[0x400] = { 0 };
SECTION(".ewram.hardware") u16 gBg1Tm[0x400] = { 0 };
SECTION(".ewram.hardware") u16 gBg2Tm[0x400] = { 0 };
SECTION(".ewram.hardware") u16 gBg3Tm[0x400] = { 0 };
SECTION(".ewram.hardware") u16 gPal[0x200] = { 0 };

EWRAM_DATA static u8 sBgSyncBits;
EWRAM_DATA static bool sPalSyncFlag;
EWRAM_DATA static void *gBgMapVramTable[4];

inline void EnableBgSync(int bits)
{
	sBgSyncBits |= bits;
}

inline void EnableBgSyncById(int bgid)
{
	sBgSyncBits |= (1 << bgid);
}

inline void DisableBgSync(int bits)
{
	sBgSyncBits &= ~bits;
}

inline void EnablePalSync(void)
{
	sPalSyncFlag = TRUE;
}

inline void DisablePalSync(void)
{
	sPalSyncFlag = FALSE;
}

void ApplyPaletteExt(void const *data, int startOffset, int size)
{
	if (size & 0x1F) // size is not a multiple of 32
		CpuCopy16(data, gPal + (startOffset >> 1), size);
	else
		CpuFastCopy(data, gPal + (startOffset >> 1), size);

	EnablePalSync();
}

struct BgCnt * GetBgCt(u16 bgid)
{
	switch (bgid) {
	case 0:
		return &gDispIo.bg0_ct;
	case 1:
		return &gDispIo.bg1_ct;
	case 2:
		return &gDispIo.bg2_ct;
	case 3:
		return &gDispIo.bg3_ct;
	}
	return NULL;
}

int GetBgChrOffset(int bg)
{
	struct BgCnt * bgCt = GetBgCt(bg);
	return bgCt->chr_block * 0x4000;
}

int GetBgChrId(int bg, int offset)
{
	offset &= 0xFFFF;

	return (offset - GetBgChrOffset(bg)) / 0x20;
}

int GetBgTilemapOffset(int bg)
{
	return GetBgCt(bg)->tm_block * 0x800;
}

void SetBgChrOffset(int bg, int offset)
{
	GetBgCt(bg)->chr_block = offset >> 14;
}

void SetBgTilemapOffset(int bg, int offset)
{
	if ((offset & 0x7FF) != 0)  // must be aligned
		return;

	GetBgCt(bg)->tm_block = offset >> 11;
	gBgMapVramTable[bg] = (void *) (VRAM | offset);
}

void SetBgScreenSize(int bg, int size)
{
	GetBgCt(bg)->size = size;
}

void SetBgBpp(int bg, int bpp)
{
	GetBgCt(bg)->color_depth = (bpp == 8) ? BG_COLORDEPTH_8BPP : BG_COLORDEPTH_4BPP;
}

void SyncBgsAndPal(void)
{
	if (sBgSyncBits & BG0_SYNC_BIT)
		CpuFastCopy(gBg0Tm, gBgMapVramTable[0], sizeof gBg0Tm);

	if (sBgSyncBits & BG1_SYNC_BIT)
		CpuFastCopy(gBg1Tm, gBgMapVramTable[1], sizeof gBg1Tm);

	if (sBgSyncBits & BG2_SYNC_BIT)
		CpuFastCopy(gBg2Tm, gBgMapVramTable[2], sizeof gBg2Tm);

	if (sBgSyncBits & BG3_SYNC_BIT)
		CpuFastCopy(gBg3Tm, gBgMapVramTable[3], sizeof gBg3Tm);

	sBgSyncBits = 0;

	if (sPalSyncFlag == TRUE) {
		CpuFastCopy(gPal, (void *) PLTT, sizeof gPal);
		sPalSyncFlag = FALSE;
	}
}

void SetBgOffset(u16 bgid, u16 x_offset, u16 y_offset)
{
	switch (bgid) {
	case 0:
		gDispIo.bg_off[0].x = x_offset;
		gDispIo.bg_off[0].y = y_offset;
		break;

	case 1:
		gDispIo.bg_off[1].x = x_offset;
		gDispIo.bg_off[1].y = y_offset;
		break;

	case 2:
		gDispIo.bg_off[2].x = x_offset;
		gDispIo.bg_off[2].y = y_offset;
		break;

	case 3:
		gDispIo.bg_off[3].x = x_offset;
		gDispIo.bg_off[3].y = y_offset;
		break;

	}
}

u16 *GetBgTilemap(int bg)
{
	static u16 * const lut[] = {
		gBg0Tm,
		gBg1Tm,
		gBg2Tm,
		gBg3Tm,
	};

	return lut[bg];
}

