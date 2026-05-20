#ifndef ARMFUNC_H
#define ARMFUNC_H

#include "prelude.h"

extern u8 const ArmCodeStart[];
extern u8 const ArmCodeEnd[];

// armfunc
void ColorFadeTick(void);
void ClearOam(void * oam, int count);
u32 Checksum32(void const * buf, int size);
void TmApplyTsa(u16 * tm, u8 const * tsa, u16 tileref);
void TmCopyRect(u16 const * src, u16 * dst, int width, int height);
void TmFillRect(u16 * tm, int width, int height, u16 tileref);
void DrawGlyph(u16 const * cvtLut, void * chr, u32 const * glyph, int offset);
void DecodeString(char const * src, char * dst);
void PutOamHi(int x, int y, u16 const * oam_list, int oam2);
void PutOamLo(int x, int y, u16 const * oam_list, int oam2);
void MapFloodCoreStep(int connect, int x, int y);
void MapFloodCore(void);

void InitRamFuncs(void);

#endif // ARMFUNC_H
