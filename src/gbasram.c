#include "prelude.h"
#include "gbasram.h"
#include "gbaio.h"

void ReadSramFast_Core(u8 const *src, u8 *dest, u32 size);

const char AgbLibSramVersion[] = "SRAM_F_V102";

static u16 verifySramFast_Work[80]; // buffer to hold code of VerifySramFast_Core
static u16 readSramFast_Work[64];  // buffer to hold code of ReadSramFast_Core

void WriteSramFast(u8 const * src, u8 * dest, u32 size)
{
    REG_WAITCNT = (REG_WAITCNT & ~3) | 3;
    while (--size != -1)
        *dest++ = *src++;
}



u32 WriteAndVerifySramFast(void const * src, void * dest, u32 size)
{
    u8 i;
    u32 errorAddr;

#if BUGFIX
    errorAddr = 0;
#endif

    // try writing and verifying the data 3 times
    for (i = 0; i < 3; i++)
    {
        WriteSramFast(src, dest, size);
        errorAddr = VerifySramFast(src, dest, size);
        if (errorAddr == 0)
            break;
    }

    return errorAddr;
}
