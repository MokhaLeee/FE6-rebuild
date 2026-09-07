#include "prelude.h"
#include "save_core.h"
#include "gbasram.h"
#include "gbaflash.h"

#include "save-hw.h"

#if CONFIG_SAVE_USE_SRAM
extern void SramInit(void);
extern void WipeSram(void);
extern void WriteSramFast(u8 const * src, u8 * dest, int size);
extern u32 WriteAndVerifySramFast(void const * src, void * dest, int size);
extern void ReadSramFast(void const *_src, void *_dest, int size);

void SaveHwInit(void) { SramInit(); }
void WipeSave(void) { WipeSram(); }
void WriteSave(void const *src, void *dest, int size) { WriteAndVerifySramFast(src, dest, size); }
void ReadSave(void const *src, void *dest, int size) { ReadSramFast(src, dest, size); }

#elif CONFIG_SAVE_USE_FLASH
#endif

bool IsSaveWorking(void) { return true; }
