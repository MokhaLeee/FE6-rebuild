/*
 * NDS 覆盖：GBA 的 OBJ VRAM 在 0x06010000，但 DS 的 OBJ VRAM 固定在 0x06400000。
 * 这里只重定向 OBJ 相关常量；PLTT/VRAM/OAM 基址在 DS 上恰好一致，不需要改。
 */
#ifndef NDS_DEFINES_OVERRIDE
#define NDS_DEFINES_OVERRIDE

#include_next "defines.h"

#undef OBJ_VRAM0
#undef OBJ_VRAM0_SIZE
#undef OBJ_VRAM1
#undef OBJ_VRAM1_SIZE

/* DS: main engine OBJ VRAM at 0x06400000 (256KB available) */
#define OBJ_VRAM0      (void *)(0x06400000)
#define OBJ_VRAM0_SIZE 0x8000

#define OBJ_VRAM1      (void *)(0x06404000)
#define OBJ_VRAM1_SIZE 0x4000

#endif
