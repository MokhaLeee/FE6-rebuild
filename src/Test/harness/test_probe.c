#include "prelude.h"

#include "hardware.h"

#include "test_probe.h"

#if CONFIG_TEST_MENU

struct TestMenuProbe EWRAM_DATA gTestMenuProbe;

void test_probe_reset(void)
{
	memset(&gTestMenuProbe, 0, sizeof(gTestMenuProbe));
	gTestMenuProbe.magic = TEST_MENU_PROBE_MAGIC;
	gTestMenuProbe.frame = GetGameTime();
}

void test_probe_set_menu(u8 menu, u8 state)
{
	gTestMenuProbe.menu = menu;
	gTestMenuProbe.state = state;
	gTestMenuProbe.frame = GetGameTime();
}

void test_probe_set_case(u8 category, u8 case_id)
{
	gTestMenuProbe.menu = TEST_MENU_ID_CASE;
	gTestMenuProbe.category = category;
	gTestMenuProbe.case_id = case_id;
	gTestMenuProbe.step = 0;
	gTestMenuProbe.state = TEST_MENU_STATE_CASE_RUNNING;
	gTestMenuProbe.frame = GetGameTime();
}

void test_probe_set_state(u8 state)
{
	gTestMenuProbe.state = state;
	gTestMenuProbe.frame = GetGameTime();
}

void test_probe_set_value(int index, u32 value)
{
	if (index >= 0 && index < 4)
		gTestMenuProbe.value[index] = value;
}

void test_probe_set_flags(u16 flags)
{
	gTestMenuProbe.flags = flags;
}

void test_probe_finish(bool pass)
{
	gTestMenuProbe.state = pass ? TEST_MENU_STATE_CASE_DONE
				    : TEST_MENU_STATE_CASE_FAILED;
	gTestMenuProbe.frame = GetGameTime();
}

#endif /* CONFIG_TEST_MENU */
