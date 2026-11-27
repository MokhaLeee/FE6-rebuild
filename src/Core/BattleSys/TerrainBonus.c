#include "prelude.h"
#include "unit.h"
#include "map.h"
#include "battle.h"

/*
 * Battle terrain bonuses, split out of battle.c after the fe8u cskillsys
 * TerrainBonus.c.  The per-terrain tables live in the class info, so this is
 * only the lookup plus the "read the tile the unit stands on" shortcut.
 */

void SetBattleUnitTerrainBonuses(struct BattleUnit *bu, int terrain)
{
	bu->terrain = terrain;

	bu->terrain_avoid = bu->unit.jinfo->avo_terrain_table[bu->terrain];
	bu->terrain_defense = bu->unit.jinfo->def_terrain_table[bu->terrain];
	bu->terrain_resistance = bu->unit.jinfo->res_terrain_table[bu->terrain];
}

void SetBattleUnitTerrainBonusesAuto(struct BattleUnit *bu)
{
	bu->terrain = gMapTerrain[bu->unit.y][bu->unit.x];

	bu->terrain_avoid = bu->unit.jinfo->avo_terrain_table[bu->terrain];
	bu->terrain_defense = bu->unit.jinfo->def_terrain_table[bu->terrain];
	bu->terrain_resistance = bu->unit.jinfo->res_terrain_table[bu->terrain];
}
