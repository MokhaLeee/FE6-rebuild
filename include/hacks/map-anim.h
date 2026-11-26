#pragma once

#include "prelude.h"
#include "proc.h"

/*
 * Self-contained map animations.
 *
 * These are played on the map without the battle animation (manim) machinery:
 * no gManimSt, no gBattleUnitA, no gAction item slot, no
 * BeginBattleAnimations().  That makes them usable from a skill action and
 * from a post-action hook alike.
 *
 * The animation runs as a child of the given proc and locks it until the
 * animation is over; pass NULL to run detached in PROC_TREE_3.
 *
 * Hook users: a post-action hook is re-entered every frame, so guard it with
 * XxxExists() instead of starting a second animation:
 *
 *	if (MapHealAnimExists())
 *		return true;
 *
 *	StartMapHealAnim(proc, unit, amount);
 *	return true;
 */

void StartMapHealAnim(ProcPtr parent, struct Unit * unit, int amount);
bool MapHealAnimExists(void);
