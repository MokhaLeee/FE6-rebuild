#ifndef ATTRIBUTES_H
#define ATTRIBUTES_H

#include <stddef.h>

#define SECTION(name) __attribute__((section(name)))

#define IWRAM_DATA        SECTION("iwram_data")
#define EWRAM_DATA        SECTION("ewram_data")
#define EWRAM_OVERLAY(id) SECTION("ewram_overlay_" # id)
#define GAMEINFO_DATA     SECTION(".gameinfo_data")
#define CONTENT_DATA      SECTION(".content_data")

#define IWRAM_FUNC      SECTION(".iwram_code")
#define IWRAM_FUNC_STUB __attribute__((section(".text.iwram_code.stub"), long_call, noinline))

#define EWRAM_OVERLAY_BMAP EWRAM_OVERLAY(0)
#define EWRAM_OVERLAY_ANIM EWRAM_OVERLAY(1)
#define EWRAM_OVERLAY_ENTR EWRAM_OVERLAY(2)
#define EWRAM_OVERLAY_TEST EWRAM_OVERLAY(3)

#define ALIGNED(n) __attribute__((aligned(n)))
#define NAKEDFUNC __attribute__((naked))

#define _UNUSED __attribute__((unused))
#define _WEAK __attribute__((weak))

#if defined(MODERN) && MODERN
#  define CONST_DATA const
#  define COMMON_DATA(name) SECTION(".bss")
#  define SHOULD_BE_STATIC static
#  define SHOULD_BE_CONST const
#else
#  define CONST_DATA SECTION(".data")
#  define COMMON_DATA(name) SECTION("COMMON." # name)
#  define SHOULD_BE_STATIC
#  define SHOULD_BE_CONST
#endif

#define likely(x)   __builtin_expect(!!(x), 1)
#define unlikely(x) __builtin_expect(!!(x), 0)

#endif // ATTRIBUTES_H
