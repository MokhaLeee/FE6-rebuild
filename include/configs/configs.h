#ifndef CONFIG_H
#define CONFIG_H

#define CONFIG_VERSION "v0.1.0"

/* remove io print */
#define CONFIG_MGBA_PRINT_EN 0
#define CONFIG_NCGB_PRINT_EN 1

/* save media config: sram or flash */
#define CONFIG_SAVE_USE_SRAM 1
#define CONFIG_SAVE_USE_FLASH 0

/* read/write save in 4K sector */
#define CONFIG_SECTOR_OPERATION_IN_4K 1

/* m4a_hq_mixer */
#define CONFIG_USE_M4A_HQ_MIXER 1

/* remove unit-kakudai */
#define CONFIG_REMOVE_BANIM_UNITKAKUDAI 0

/* auto-left OAM */
#define CONFIG_AUTO_LEFT_OAM 1

/* use rewritten statscreen */
#define CONFIG_USE_MODERN_STATSCREEN 1

#include "configs/config-debug.h"

#endif
