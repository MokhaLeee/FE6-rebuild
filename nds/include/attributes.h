/*
 * NDS 覆盖：不使用 GBA 的自定义段（.ewram_data / iwram_data /
 * ewram_overlay_* / .content_data 等），全部交给 libnds 的标准链接脚本。
 *
 * 代价：EWRAM_OVERLAY 的"多 overlay 共享同一内存区"语义失效，
 * 第一版先接受（后续可用 DS 的 4MB RAM 或自定义 lds 恢复）。
 */
#ifndef NDS_ATTRIBUTES_OVERRIDE
#define NDS_ATTRIBUTES_OVERRIDE

#include_next "attributes.h"

#undef IWRAM_DATA
#undef EWRAM_DATA
#undef EWRAM_OVERLAY
#undef IWRAM_FUNC
#undef IWRAM_FUNC_STUB
#undef GAMEINFO_DATA
#undef CONTENT_DATA
#undef CONST_DATA
#undef COMMON_DATA
#undef SHOULD_BE_STATIC
#undef SHOULD_BE_CONST

#define IWRAM_DATA
#define EWRAM_DATA
#define EWRAM_OVERLAY(id)
#define IWRAM_FUNC
#define IWRAM_FUNC_STUB __attribute__((long_call, noinline))
#define GAMEINFO_DATA
#define CONTENT_DATA
#define CONST_DATA
#define COMMON_DATA(name)
#define SHOULD_BE_STATIC static
#define SHOULD_BE_CONST const

#endif
