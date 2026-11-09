#pragma once

// debug menu 的 MenuInfo 声明。
// 这些声明原先在 include/menuinfo.h，随 debug menu 一起移到 src/Test/ref。

#include "prelude.h"
#include "menu.h"

#if CONFIG_DEBUG_MENU
extern struct MenuInfo CONST_DATA MenuInfo_DebugMain;
extern struct MenuInfo CONST_DATA MenuInfo_DebugClearFile;
extern struct MenuInfo CONST_DATA MenuInfo_Debug_LoadGame;
extern struct MenuInfo CONST_DATA MenuInfo_DebugSuspend;
extern struct MenuInfo CONST_DATA MenuInfo_DebugCpControl;
#endif
