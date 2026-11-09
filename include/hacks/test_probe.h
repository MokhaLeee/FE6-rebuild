#pragma once

#include "prelude.h"

#if CONFIG_TEST_MENU

#define TEST_MENU_PROBE_MAGIC 0x54535450u /* "TSTP"；按 u32 比较，不看内存字节序 */

enum TestMenuId {
	TEST_MENU_ID_NONE,
	TEST_MENU_ID_TOP,
	TEST_MENU_ID_TEST_ROOT,
	TEST_MENU_ID_CATEGORY,
	TEST_MENU_ID_CASE,
};

enum TestMenuState {
	TEST_MENU_STATE_NONE,
	TEST_MENU_STATE_MENU,
	TEST_MENU_STATE_CASE_RUNNING,
	TEST_MENU_STATE_CASE_DONE,
	TEST_MENU_STATE_CASE_FAILED,
};

struct TestMenuProbe {
	/* 0x00 */ u32 magic;
	/* 0x04 */ u8 menu;      /* enum TestMenuId */
	/* 0x05 */ u8 state;     /* enum TestMenuState */
	/* 0x06 */ u8 category;  /* 领域 id，0 = 无 */
	/* 0x07 */ u8 case_id;   /* 领域内 case id，0 = 无 */
	/* 0x08 */ u16 step;     /* 多步 case 的步骤 */
	/* 0x0A */ u16 flags;    /* case 专用标志位 */
	/* 0x0C */ u32 value[4]; /* case 专用数值 */
	/* 0x1C */ u32 frame;    /* 最近一次状态变化的 GetGameTime() */
}; /* size = 0x20 */

STATIC_ASSERT(sizeof(struct TestMenuProbe) == 0x20);

extern struct TestMenuProbe EWRAM_DATA gTestMenuProbe;

void test_probe_reset(void);
void test_probe_set_menu(u8 menu, u8 state);
void test_probe_set_case(u8 category, u8 case_id);
void test_probe_set_state(u8 state);
void test_probe_set_value(int index, u32 value);
void test_probe_set_flags(u16 flags);
void test_probe_finish(bool pass);

#endif /* CONFIG_TEST_MENU */
