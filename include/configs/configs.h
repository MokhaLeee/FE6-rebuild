#ifndef CONFIG_H
#define CONFIG_H

#define CONFIG_VERSION "v0.1.0"

/* 0: use flash, 1: sram */
#define CONFIG_SAVE_USE_SRAM 1
#define CONFIG_SAVE_USE_FLASH 1

/* read/write save in 4K sector */
#define CONFIG_SECTOR_OPERATION_IN_4K 1

/* m4a_hq_mixer */
#define CONFIG_USE_M4A_HQ_MIXER 1

#include "configs/config-debug.h"

#endif
