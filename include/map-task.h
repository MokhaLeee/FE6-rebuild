#pragma once

#include "prelude.h"

/*
 * Map tasks draw the overlays that sit on top of the map units: the status
 * icons, the rescue marker and, later on, the hp bar.  They share one walk
 * over the unit list with the unit sprite OAM pass.
 */

void PutMapTaskOam(void);
