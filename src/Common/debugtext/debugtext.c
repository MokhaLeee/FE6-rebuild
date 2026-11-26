#include "debugtext.h"

#include <stdarg.h>

#include "hardware.h"
#include "datamove.h"
#include "oam.h"
#include "armfunc.h"
#include "sprite.h"
#include "debug.h"
#include "klib.h"

#include "constants/videoalloc_global.h"

int vsnprintf(char *str, size_t len, const char *fmt, va_list ap);

/*
 * Debug text support: a 256x32 character screen rendered through BG2 and a
 * single-line OBJ string renderer. Moved out of vanilla/ so it can be built
 * with devkitARM; the public interface stays the same for talk.c,
 * worldmapfx.c, mapui.c and testmenu.c.
 */

extern u8 CONST_DATA Img_DebugFont[];

struct DebugTextSt {
	/* 00 */ int vramOffset;
	/* 04 */ short bg;
	/* 06 */ u16 chr;

	/* 08 */ int hcur;
	/* 0C */ u32 vcur;
	/* 10 */ u32 vdisp;

	/* 14 */ char screen[256][0x31]; /* 0x30 columns plus the final '\0' slot */
};

static struct DebugTextSt EWRAM_DATA s_debug_text_st = {};

char EWRAM_DATA gNumberStr[9] = {};

static int EWRAM_DATA s_debug_oam2_chr = 0;
static int EWRAM_DATA s_debug_oam2_pal = 0;

/* klib only has unsigned helpers; keep the sign at the call site. */
static int debug_div10(int value)
{
	if (value < 0)
		return -(int)k_udiv10((u32)-value);

	return (int)k_udiv10((u32)value);
}

static int debug_mod10(int value)
{
	if (value < 0)
		return -(int)k_umod10((u32)-value);

	return (int)k_umod10((u32)value);
}

void DebugInitBg(int bg, int vramOffset)
{
	if (vramOffset == DEBUGTEXT_BG_VRAM_DEFAULT)
		vramOffset = BGCHR_DEBUGTEXT_DEFAULT * CHR_SIZE;

	SetBgChrOffset(bg, 0);
	SetBgScreenSize(bg, BG_SIZE_256x256);

	RegisterVramMove(Img_DebugFont, vramOffset, 0x40 * CHR_SIZE);

	PAL_BG_COLOR(0, 0) = RGB(0, 0, 0);
	PAL_BG_COLOR(0, 2) = RGB(31, 31, 31);

	EnablePalSync();

	TmFill(GetBgTilemap(bg), 0);

	s_debug_text_st.bg = bg;
	s_debug_text_st.vramOffset = vramOffset;
	s_debug_text_st.chr = GetBgChrId(bg, vramOffset);
}

void DebugPutStr(u16 *tm, char const *str)
{
	while (*str) {
		/* Img_DebugFont holds ' ' through '_'; lowercase reuses the uppercase glyphs */
		*tm = *str > '`'
			? *str - '`' + (s_debug_text_st.chr + ('@' - ' '))
			: *str - ' ' + (s_debug_text_st.chr);

		tm++;
		str++;
	}

	EnableBgSyncById(s_debug_text_st.bg);
}

void DebugPutFmt(u16 *tm, char const *fmt, ...)
{
	char buffer[0x100];
	va_list args;

	va_start(args, fmt);
	vsnprintf(buffer, sizeof(buffer), fmt, args);
	va_end(args);

	DebugPutStr(tm, buffer);
}

void DebugScreenInit(void)
{
	int i;

	for (i = 0; i < 0x100; i++)
		s_debug_text_st.screen[i & 0xFF][0] = '\0';

	s_debug_text_st.hcur = 0;
	s_debug_text_st.vcur = 0;

	TmFill(gBg2Tm, 0);
	EnableBgSync(BG2_SYNC_BIT);
}

void DebugPrintFmt(char const *fmt, ...)
{
	char buffer[0x100];
	va_list args;

	va_start(args, fmt);
	vsnprintf(buffer, sizeof(buffer), fmt, args);
	va_end(args);

	DebugPrintStr(buffer);
}

static void clear_number_str(void)
{
	u32 *ptr = (u32 *)gNumberStr;

	*ptr++ = 0x20202020; /* four spaces */
	*ptr = 0x20202020; /* four spaces */

	gNumberStr[8] = 0;
}

void GenNumberStr(int number)
{
	int i;

	clear_number_str();

	for (i = 7; i >= 0; i--) {
		gNumberStr[i] = '0' + debug_mod10(number);

		number = debug_div10(number);

		if (number == 0)
			break;
	}
}

void GenNumberOrBlankStr(int number)
{
	clear_number_str();

	if (number == 255 || number == -1)
		gNumberStr[6] = gNumberStr[7] = ':';
	else
		GenNumberStr(number);
}

void DebugPrintNumber(int number, int length)
{
	GenNumberStr(number);
	DebugPrintStr(gNumberStr + 8 - length);
}

void GenNumberHexStr(int number)
{
	static char const hex_lut[] = "0123456789ABCDEF";

	int i;

	clear_number_str();

	for (i = 7; i >= 0; i--) {
		gNumberStr[i] = hex_lut[number & 0xF];

		number >>= 4;

		if (number == 0)
			break;
	}
}

void DebugPrintNumberHex(int number, int length)
{
	GenNumberHexStr(number);
	DebugPrintStr(gNumberStr + 8 - length);
}

void DebugPrintStr(char const *str)
{
	while (*str) {
		char chr = *str;

		if (s_debug_text_st.hcur == 0x30)
			chr = 0;
		else
			str++;

		if (chr == '\n')
			chr = 0;

		s_debug_text_st.screen[s_debug_text_st.vcur & 0xFF][s_debug_text_st.hcur] = chr;
		s_debug_text_st.hcur++;

		if (chr == 0) {
			s_debug_text_st.hcur = 0;
			s_debug_text_st.vcur++;
		}
	}

	if (s_debug_text_st.vcur > s_debug_text_st.vdisp + 20)
		s_debug_text_st.vdisp = s_debug_text_st.vcur - 20;
}

void DebugPutScreen(void)
{
	u16 *tm;
	u16 chr;
	int ih;
	int iv;

	TmFill(gBg2Tm, 0);

	for (iv = 0; iv < 20; iv++) {
		tm = gBg2Tm + TM_OFFSET(0, iv);

		for (ih = 0; s_debug_text_st.screen[(iv + s_debug_text_st.vdisp) & 0xFF][ih]; ++tm, ++ih) {
			chr = s_debug_text_st.screen[(iv + s_debug_text_st.vdisp) & 0xFF][ih];

			if (chr > '`')
				chr = chr - (' ' + 'a' - 'A');
			else
				chr = chr - ' ';

			*tm = chr + s_debug_text_st.chr;
		}
	}

	EnableBgSync(BG2_SYNC_BIT);
}

bool DebugUpdateScreen(u16 held, u16 pressed)
{
	int top;
	int bottom;

	if (pressed & KEY_BUTTON_B)
		return FALSE;

	DebugPutScreen();

	top = s_debug_text_st.vcur - 256;

	if (top < 0)
		top = 0;

	bottom = s_debug_text_st.vcur - 20;

	if (bottom < 0)
		bottom = 0;

	if ((held & KEY_DPAD_UP) && top < (int)s_debug_text_st.vdisp)
		s_debug_text_st.vdisp--;

	if ((held & KEY_DPAD_DOWN) && bottom > (int)s_debug_text_st.vdisp)
		s_debug_text_st.vdisp++;

	return TRUE;
}

void DebugInitObj(int offset, int palid)
{
	if (offset < 0)
		offset = OBCHR_DEBUGTEXT_DEFAULT * CHR_SIZE;

	offset &= 0xFFFF;

	s_debug_oam2_chr = offset / CHR_SIZE;
	s_debug_oam2_pal = OAM2_PAL(palid);

	RegisterVramMove(Img_DebugFont, OBJ_VRAM0_OFFSET + offset, 0x40 * CHR_SIZE);

	PAL_OBJ_COLOR(palid, 0) = RGB(0, 0, 0);
	PAL_OBJ_COLOR(palid, 1) = RGB(0, 0, 31);
	PAL_OBJ_COLOR(palid, 2) = RGB(31, 31, 31);

	EnablePalSync();
}

void DebugPutObjStr(int x, int y, char const *str)
{
	while (*str) {
		char chr = *str > '`'
			? *str - (' ' + 'a' - 'A')
			: *str - ' ';

		PutOamHi(x, y, Sprite_8x8, chr + s_debug_oam2_chr + s_debug_oam2_pal);

		x += 8;
		str++;
	}
}

void DebugPutObjNumber(int x, int y, int number, int length)
{
	GenNumberStr(number);
	DebugPutObjStr(x, y, gNumberStr + 8 - length);
}

void DebugPutObjNumberHex(int x, int y, int number, int length)
{
	GenNumberHexStr(number);
	DebugPutObjStr(x, y, gNumberStr + 8 - length);
}
