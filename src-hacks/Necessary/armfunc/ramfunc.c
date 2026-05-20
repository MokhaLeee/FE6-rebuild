#include "armfunc.h"

#undef DrawGlyph
#undef DecodeString
#undef PutOamHi
#undef PutOamLo
#undef MapFloodCoreStep
#undef MapFloodCore

extern u8 RamFuncArea[];

extern void (* DrawGlyphRamFunc)(u16 const * cvtLut, void * chr, u32 const * glyph, int offset);
extern void (* DecodeStringRamFunc)(char const * src, char * dst);
extern void (* PutOamHiRamFunc)(int x, int y, u16 const * oam_list, int oam2);
extern void (* PutOamLoRamFunc)(int x, int y, u16 const * oam_list, int oam2);
extern void (* MapFloodCoreStepRamFunc)();
extern void (* MapFloodCoreRamFunc)(void);

void InitRamFuncs(void)
{
    int size = ArmCodeEnd - ArmCodeStart;

    CpuCopy16(ArmCodeStart, RamFuncArea, size);

    DrawGlyphRamFunc        = (void *) RamFuncArea + (((u8 *) (void *) DrawGlyph)        - ArmCodeStart);
    DecodeStringRamFunc     = (void *) RamFuncArea + (((u8 *) (void *) DecodeString)     - ArmCodeStart);
    PutOamHiRamFunc         = (void *) RamFuncArea + (((u8 *) (void *) PutOamHi)         - ArmCodeStart);
    PutOamLoRamFunc         = (void *) RamFuncArea + (((u8 *) (void *) PutOamLo)         - ArmCodeStart);
    MapFloodCoreStepRamFunc = (void *) RamFuncArea + (((u8 *) (void *) MapFloodCoreStep) - ArmCodeStart);
    MapFloodCoreRamFunc     = (void *) RamFuncArea + (((u8 *) (void *) MapFloodCore)     - ArmCodeStart);
}
