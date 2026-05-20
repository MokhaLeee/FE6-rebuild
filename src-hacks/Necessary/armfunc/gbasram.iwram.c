#include "prelude.h"
#include "gbasram.h"
#include "gbaio.h"

IWRAM_FUNC
void ReadSramFast(void const *_src, void *_dest, int size)
{
    u8 const *src = _src;
    u8 *dest = _dest;

    REG_WAITCNT = (REG_WAITCNT & ~3) | 3;

    while (--size != -1)
        *dest++ = *src++;
}

IWRAM_FUNC
u32 VerifySramFast(void const *_src, void *_dest, int size)
{
    u8 const *src = _src;
    u8 *dest = _dest;

    REG_WAITCNT = (REG_WAITCNT & ~3) | 3;

    while (--size != -1) {
        if (*dest++ != *src++)
            return (u32)(dest - 1);
    }
    return 0;
}
