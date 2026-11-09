#pragma once

#include "prelude.h"
#include "menu.h"

#if CONFIG_TEST_MENU

void StartTestMenuTop(void);
void StartTestMenuTestRoot(void);

extern struct MenuInfo CONST_DATA MenuInfo_TestRoot;

#endif /* CONFIG_TEST_MENU */
