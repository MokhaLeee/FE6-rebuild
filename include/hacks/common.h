#pragma once

#include "prelude.h"

struct SysConfig {
    u8 auto_narrow_font;
};

extern struct SysConfig const *const gpSysConfig;
