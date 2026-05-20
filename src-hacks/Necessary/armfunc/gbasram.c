#include "prelude.h"
#include "gbasram.h"
#include "gbaio.h"

extern void ReadSramFast_Core(void const * src, void * dest, int size);
extern u32 VerifySramFast_Core(void const * src, void * dest, int size);

void SetSramFastFunc(void)
{
    REG_WAITCNT = (REG_WAITCNT & ~3) | 3;
}
