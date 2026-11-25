#pragma once

#include "types.h"

struct SysConfig {
    u8 auto_narrow_font;
    u8 skill_sub_menu_width;
};
extern struct SysConfig const *const gpSysConfig;
