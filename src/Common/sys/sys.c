#include "prelude.h"
#include "hardware.h"
#include "irq.h"

static Func MainFunc, gOnHBlankA, gOnHBlankB;
struct DispIo gDispIo;

void SetMainFunc(Func func)
{
	MainFunc = func;
}

void RunMainFunc(void)
{
	if (MainFunc)
		MainFunc();
}

void SoftResetIfKeyCombo(void)
{
	if (gKeySt->held == (KEY_BUTTON_A + KEY_BUTTON_B + KEY_BUTTON_SELECT + KEY_BUTTON_START))
		SoftReset(GBA_RESET_ALL);
}

void SyncDispIo(void)
{
	#define SET_REG(type, reg, src) *((typeof((src)) volatile *) &REG_##reg) = (src)

	SET_REG(u16, DISPCNT,  gDispIo.disp_ct);
	SET_REG(u16, DISPSTAT, gDispIo.disp_stat);

	SET_REG(u16, BG0CNT,   gDispIo.bg0_ct);
	SET_REG(u16, BG1CNT,   gDispIo.bg1_ct);
	SET_REG(u16, BG2CNT,   gDispIo.bg2_ct);
	SET_REG(u16, BG3CNT,   gDispIo.bg3_ct);

	// set both HOFS and VOFS with a single 32-bit copy
	SET_REG(u32, BG0HOFS,  gDispIo.bg_off[0]);
	SET_REG(u32, BG1HOFS,  gDispIo.bg_off[1]);
	SET_REG(u32, BG2HOFS,  gDispIo.bg_off[2]);
	SET_REG(u32, BG3HOFS,  gDispIo.bg_off[3]);

	REG_WIN0H = gDispIo.win0_right + (gDispIo.win0_left << 8);
	REG_WIN1H = gDispIo.win1_right + (gDispIo.win1_left << 8);
	REG_WIN0V = gDispIo.win0_bottom + (gDispIo.win0_top << 8);
	REG_WIN1V = gDispIo.win1_bottom + (gDispIo.win1_top << 8);

	// set both WININ and WINOUT with a single 32-bit copy
	SET_REG(u32, WININ,    gDispIo.win_ct);

	SET_REG(u16, MOSAIC,   gDispIo.mosaic);
	SET_REG(u16, BLDCNT,   gDispIo.blend_ct);

	REG_BLDALPHA = gDispIo.blend_coef_a + (gDispIo.blend_coef_b << 8);
	SET_REG(u8,  BLDY,     gDispIo.blend_y);

	REG_BG2PA = gDispIo.bg2pa;
	REG_BG2PB = gDispIo.bg2pb;
	REG_BG2PC = gDispIo.bg2pc;
	REG_BG2PD = gDispIo.bg2pd;

	SET_REG(u32, BG2X,     gDispIo.bg2x);
	SET_REG(u32, BG2Y,     gDispIo.bg2y);

	REG_BG3PA = gDispIo.bg3pa;
	REG_BG3PB = gDispIo.bg3pb;
	REG_BG3PC = gDispIo.bg3pc;
	REG_BG3PD = gDispIo.bg3pd;

	SET_REG(u32, BG3X,     gDispIo.bg3x);
	SET_REG(u32, BG3Y,     gDispIo.bg3y);

	#undef SET_REG
}

void SetOnVBlank(IrqFunc func)
{
	if (func != NULL) {
		gDispIo.disp_stat.vblank_int_enable = TRUE;

		SetIrqFunc(INT_VBLANK, func);
		REG_IE |= INTR_FLAG_VBLANK;
	} else {
		gDispIo.disp_stat.vblank_int_enable = FALSE;
		REG_IE &= ~INTR_FLAG_VBLANK;
	}
}

void SetOnVMatch(IrqFunc func)
{
	if (func != NULL) {
		gDispIo.disp_stat.vcount_int_enable = TRUE;

		SetIrqFunc(INT_VCOUNT, func);
		REG_IE |= INTR_FLAG_VCOUNT;
	} else {
		gDispIo.disp_stat.vcount_int_enable = FALSE;
		REG_IE &= ~INTR_FLAG_VCOUNT;

		gDispIo.disp_stat.vcount_compare = 0;
	}
}

void SetNextVCount(int vcount)
{
	u16 disp_stat;

	disp_stat = REG_DISPSTAT;
	disp_stat = disp_stat & 0xFF;
	disp_stat = disp_stat | (vcount << 8);

	REG_DISPSTAT = disp_stat;
}

void SetVCount(int vcount)
{
	gDispIo.disp_stat.vcount_compare = vcount;
}

void func_fe6_0800285C(int unk)
{
	u16 ie = REG_IE;

	REG_KEYCNT = unk - 0x4000;
	REG_IE &= ~(INTR_FLAG_SERIAL | INTR_FLAG_GAMEPAK);
	REG_IE |= INTR_FLAG_KEYPAD;
	REG_DISPCNT |= DISPCNT_FORCE_BLANK;

	SoundBiasReset();
	asm("swi 3"); // enter sleep mode
	SoundBiasSet();

	REG_IE = ie;
}

static void OnHBlankBoth(void)
{
	if (gOnHBlankA)
		gOnHBlankA();

	if (gOnHBlankB)
		gOnHBlankB();
}

static void RefreshOnHBlank(void)
{
	int st = 0;

	if (gOnHBlankA != NULL)
		st += 1;

	if (gOnHBlankB != NULL)
		st += 2;

	switch (st) {
	case 0:
		// no funcs
		gDispIo.disp_stat.hblank_int_enable = 0;
		REG_IE &= ~INTR_FLAG_HBLANK;
		break;

	case 1:
		// only func A
		gDispIo.disp_stat.hblank_int_enable = 1;
		SetIrqFunc(INT_HBLANK, gOnHBlankA);
		REG_IE |= INTR_FLAG_HBLANK;

		break;

	case 2:
		// only func B
		gDispIo.disp_stat.hblank_int_enable = 1;
		SetIrqFunc(INT_HBLANK, gOnHBlankB);
		REG_IE |= INTR_FLAG_HBLANK;

		break;

	case 3:
		// both funcs
		gDispIo.disp_stat.hblank_int_enable = 1;
		SetIrqFunc(INT_HBLANK, OnHBlankBoth);
		REG_IE |= INTR_FLAG_HBLANK;
		break;

	}
}

void SetOnHBlankA(Func func)
{
	gOnHBlankA = func;
	RefreshOnHBlank();
}

void SetOnHBlankB(Func func)
{
	gOnHBlankB = func;
	RefreshOnHBlank();
}
