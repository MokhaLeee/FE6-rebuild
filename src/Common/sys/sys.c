#include "prelude.h"
#include "hardware.h"

static Func EWRAM_DATA MainFunc = NULL;

void SetMainFunc(Func func)
{
	MainFunc = func;
}

void RunMainFunc(void)
{
	if (MainFunc)
		MainFunc();
}
