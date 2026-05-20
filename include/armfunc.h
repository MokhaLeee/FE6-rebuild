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

// ramfunc
void InitRamFuncs(void);
void DrawGlyph_thm(u16 const * cvtLut, void * chr, u32 const * glyph, int offset);
void DecodeString_thm(char const * src, char * dst);
void PutOamHi_thm(int x, int y, u16 const * oam_list, int oam2);
void PutOamLo_thm(int x, int y, u16 const * oam_list, int oam2);
void MapFloodCoreStep_thm(int connect, int x, int y);
void MapFloodCore_thm(void);

// linker stubs
void ClearOam_thm(void * oam, int count);
void TmApplyTsa_thm(u16 * tm, u8 const * tsa, u16 tileref);
void TmFillRect_thm(u16 * tm, int width, int height, u16 tileref);
void ColorFadeTick_thm(void);
void TmCopyRect_thm(u16 const * src, u16 * dst, int width, int height);
u32 Checksum32_thm(void const * buf, int size);

// helper macros
#define ColorFadeTick ColorFadeTick_thm
#define ClearOam ClearOam_thm
#define Checksum32 Checksum32_thm
#define TmApplyTsa TmApplyTsa_thm
#define TmCopyRect TmCopyRect_thm
#define TmFillRect TmFillRect_thm
#define DrawGlyph DrawGlyph_thm
#define DecodeString DecodeString_thm
#define PutOamHi PutOamHi_thm
#define PutOamLo PutOamLo_thm
#define MapFloodCoreStep MapFloodCoreStep_thm
#define MapFloodCore MapFloodCore_thm

#endif // ARMFUNC_H
