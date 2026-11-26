#pragma once

#include "prelude.h"

/* Map effect helpers: hazard hp changes and the status heal flash. */
void ApplyHazardHealing(ProcPtr proc, struct Unit *unit, int hp, int status);
void BeginUnitTrapDamageAnim(struct Unit *unit, int damage);
void StartStatusHealEffect(struct Unit *unit, ProcPtr parent);
void FinishDamageDisplay(ProcPtr proc);

/* Per-faction hazard/terrain displays; started from bm.c and trap.c. */
extern struct ProcScr CONST_DATA ProcScr_TerrainHealDisplay[];
extern struct ProcScr CONST_DATA ProcScr_PoisonDamageDisplay[];
extern struct ProcScr CONST_DATA ProcScr_StatusDecayDisplay[];
extern struct ProcScr CONST_DATA ProcScr_TrapDamageDisplay[];
