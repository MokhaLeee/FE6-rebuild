#include "prelude.h"
#include "hardware.h"
#include "irq.h"

static Func MainFunc, gOnHBlankA, gOnHBlankB;

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
