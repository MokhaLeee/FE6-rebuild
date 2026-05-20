#pragma once

#include "types.h"

void SetSramFastFunc(void);
void WriteSramFast(u8 const * src, u8 * dest, u32 size);
u32 WriteAndVerifySramFast(void const * src, void * dest, u32 size);
void ReadSramFast(void const *_src, void *_dest, int size);
u32 VerifySramFast(void const *_src, void *_dest, int size);

#define CART_SRAM_ADDR 0x0E000000
#define CART_SRAM_SIZE 0x00008000
#define CART_SRAM ((void *) CART_SRAM_ADDR)
