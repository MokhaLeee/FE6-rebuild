#include "prelude.h"
#include "irq.h"

IWRAM_DATA IrqFunc gIrqFuncs[INT_COUNT];
IWRAM_DATA static u8 IntrMainRam[0x120]; /* IrqMain_end - IrqMain */

static void DummyFunc(void) {}

void IrqInit(void)
{
	int i;

	for (i = 0; i < INT_COUNT; ++i)
		gIrqFuncs[i] = DummyFunc;

	CpuFastCopy(IrqMain, IntrMainRam, sizeof IntrMainRam);
	INTR_VECTOR = IntrMainRam;
}

void SetIrqFunc(int num, IrqFunc func)
{
	if (func == NULL)
		func = DummyFunc;

	if (num >= INT_COUNT || num < 0)
		return;

	gIrqFuncs[num] = func;
}
