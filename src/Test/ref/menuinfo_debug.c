// debug menu 的 MenuInfo 表。
//
// 原先在 vanilla/menuinfo.c（HEAD 0413799 第 33–184 行与第 802–837 行）。
// 随 debug menu 一起移到 src/Test/ref，只在 CONFIG_DEBUG_MENU 打开时编译。

#include "menuinfo_debug.h"

#include "debugmenu.h"
#include "ui.h"

#include "constants/msg.h"

#if CONFIG_DEBUG_MENU

struct MenuEntInfo CONST_DATA MenuEntInfo_DebugClearFile[] =
{
    {
        .label = JTEXT("ファイルをクリアずみに"),
        .available = MenuEntryEnabled,
    },

    {
        .label = JTEXT("しますか？"),
        .available = MenuEntryEnabled,
    },

    {
        .label = JTEXT("クリアずみファイルでは"),
        .available = MenuEntryEnabled,
    },

    {
        .label = JTEXT("以後プレイできません"),
        .available = MenuEntryEnabled,
    },

    {
        .label = JTEXT("　　　　　　　　　了解"),
        .text_color = TEXT_COLOR_SYSTEM_GREEN,
        .available = MenuEntryEnabled,
        .on_select = DebugClearFileMenu_OnSelect_Confirm,
    },

    { 0 }, // end
};

struct MenuEntInfo CONST_DATA MenuEntInfo_DebugCpControl[] =
{
    {
        .label = "",
        .available = MenuEntryEnabled,
        .display = DebugCpControlMenu_Entry_Display,
        .on_idle = DebugCpControlMenu_Entry_Idle,
    },

    {
        .label = "",
        .available = MenuEntryEnabled,
        .display = DebugCpControlMenu_Entry_Display,
        .on_idle = DebugCpControlMenu_Entry_Idle,
    },

    { 0 }, // end
};

struct MenuEntInfo CONST_DATA MenuEntInfo_Debug_LoadGame[] =
{
    {
        .label = JTEXT("　リリースエントリ"),
        .available = MenuEntryEnabled,
        .on_select = DebugMenu_OnSelect_ReleaseEntry,
    },

    {
        .label = JTEXT("　どこでも再開"),
        .available = DebugMenu_Available_LoadMainSuspend,
        .on_select = DebugMenu_OnSelect_LoadMainSuspend,
    },

    {
        .label = JTEXT("　手再開"),
        .available = DebugMenu_Available_LoadAltSuspend,
        .on_select = DebugMenu_OnSelect_LoadAltSuspend,
    },

    { 0 }, // end
};

struct MenuEntInfo CONST_DATA MenuEntInfo_DebugSuspend[] =
{
    {
        .label = JTEXT("　手中断"),
        .available = DebugMenu_Available_SaveAltSuspend,
        .on_select = DebugMenu_OnSelect_SaveAltSuspend,
    },

    {
        .label = JTEXT("　手再開"),
        .available = DebugMenu_Available_LoadAltSuspend,
        .on_select = DebugMenu_OnSelect_LoadAltSuspend,
    },

    { 0 }, // end
};

struct MenuEntInfo CONST_DATA MenuEntInfo_DebugMain[] =
{
    {
        .label = JTEXT("　マップ"),
        .available = MenuEntryEnabled,
        .on_select = DebugMenu_OnSelect_Map,
        .on_idle = DebugMenu_Idle_Map,
    },

    {
        .label = JTEXT("　デブ情報"),
        .available = MenuEntryEnabled,
        .display = DebugMenu_Display_DebugInfo,
        .on_select = DebugMenu_OnSelect_DebugInfo,
        .on_idle = DebugMenu_Idle_DebugInfo,
    },

    {
        .label = JTEXT("　天気"),
        .available = MenuEntryEnabled,
        .display = DebugMenu_Display_Weather,
        .on_select = DebugMenu_OnSelect_Weather,
        .on_idle = DebugMenu_Idle_Weather,
    },

    {
        .label = JTEXT("　索敵"),
        .available = MenuEntryEnabled,
        .display = DebugMenu_Display_Fog,
        .on_select = DebugMenu_OnSelect_Fog,
        .on_idle = DebugMenu_Idle_Fog,
    },

    {
        .label = JTEXT("　周回数"),
        .available = MenuEntryEnabled,
        .display = DebugMenu_Display_Playthroughs,
        .on_select = DebugMenu_OnSelect_Playthroughs,
        .on_idle = DebugMenu_Idle_Playthroughs,
    },

    {
        .label = JTEXT("　クリアずみ"),
        .available = MenuEntryEnabled,
        .on_select = DebugMenu_OnSelect_ClearFile,
    },

    {
        .label = "",
        .available = MenuEntryEnabled,
    },

    {
        .label = JTEXT("　おやすみなさい"),
        .available = MenuEntryEnabled,
        .on_select = DebugMenu_OnSelect_Sleep,
    },

    { 0 }, // end
};

struct MenuInfo CONST_DATA MenuInfo_DebugClearFile =
{
    .rect = { 1, 6, 13, 0 },
    .entries = MenuEntInfo_DebugClearFile,
    .on_b_press = DebugMenu_OnBPress,
};

struct MenuInfo CONST_DATA MenuInfo_DebugCpControl =
{
    .rect = { 1, 1, 10, 0 },
    .entries = MenuEntInfo_DebugCpControl,
    .on_b_press = DebugMenu_OnBPress,
};

struct MenuInfo CONST_DATA MenuInfo_Debug_LoadGame =
{
    .rect = { 9, 4, 12, 0 },
    .entries = MenuEntInfo_Debug_LoadGame,
    .on_init = DebugMenu_OnInit_LoadGame,
    .on_end = DebugMenu_OnEnd_LoadGame,
};

struct MenuInfo CONST_DATA MenuInfo_DebugSuspend =
{
    .rect = { 1, 1, 8, 0 },
    .entries = MenuEntInfo_DebugSuspend,
    .on_b_press = DebugMenu_OnBPress,
};

struct MenuInfo CONST_DATA MenuInfo_DebugMain =
{
    .rect = { 1, 1, 14, 0 },
    .entries = MenuEntInfo_DebugMain,
    .on_init = DebugMenu_OnInit_Main,
    .on_b_press = DebugMenu_OnBPress,
};

#endif /* CONFIG_DEBUG_MENU */
