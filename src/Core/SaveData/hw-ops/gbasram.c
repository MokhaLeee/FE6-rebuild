#include "prelude.h"
#include "gbasram.h"
#include "gbaio.h"

#if CONFIG_SAVE_USE_SRAM
const char AgbLibSramVersion[] = "SRAM_F_V102";

extern u32 VerifySramFast(void const *_src, void *_dest, int size);

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

void SramInit(void)
{
	REG_WAITCNT = (REG_WAITCNT & ~3) | 3;
	REG_IE |= INTR_FLAG_GAMEPAK;

}

void WipeSram(void)
{
	u32 buf[0x10];
	int i;

	for (i = 0; i < (int) ARRAY_COUNT(buf); i++)
		buf[i] = 0xFFFFFFFF;

	for (i = 0; i < CART_SRAM_SIZE / (int) sizeof(buf); i++)
		WriteAndVerifySramFast(buf, CART_SRAM + i *sizeof(buf), sizeof(buf));

	STATIC_ASSERT(CART_SRAM_SIZE % sizeof(buf) == 0);
}

#endif /* CONFIG_SAVE_USE_SRAM */
