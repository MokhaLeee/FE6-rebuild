#include "prelude.h"
#include "gbasram.h"
#include "gbaio.h"

const char AgbLibSramVersion[] = "SRAM_F_V102";

void SetSramFastFunc(void)
{
	REG_WAITCNT = (REG_WAITCNT & ~3) | 3;
}

void WriteSramFast(u8 const * src, u8 * dest, int size)
{
	REG_WAITCNT = (REG_WAITCNT & ~3) | 3;
	while (--size != -1)
		*dest++ = *src++;
}

u32 WriteAndVerifySramFast(void const * src, void * dest, int size)
{
	u8 i;
	u32 errorAddr = 0;

	// try writing and verifying the data 3 times
	for (i = 0; i < 3; i++) {
		WriteSramFast(src, dest, size);
		errorAddr = VerifySramFast(src, dest, size);
		if (errorAddr == 0)
			break;
	}

	return errorAddr;
}
