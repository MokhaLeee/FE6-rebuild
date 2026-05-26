#include "save_multiarena.h"

#include "save_core.h"
#include "save_game.h"

#include "gbasram.h"

bool IsMultiArenaSaveValid(int save_id)
{
    return false;
}

void WriteNewMultiArenaSave(void)
{
}

bool ReadMultiArenaSaveTeamRaw(int team, struct MultiArenaSaveTeam *dst)
{
    return false;
}

bool ReadMultiArenaSaveTeamName(int team, char *dst)
{
    return false;
}

void WipeMultiArenaSaveTeam(int team)
{
}

void CopyMultiArenaSaveTeam(int team_src, int team_dst)
{
}

void SwapMultiArenaSaveTeams(int team_a, int team_b)
{
}

void WriteMultiArenaSaveTeam(int team, struct Unit *units_src, char const *name_src)
{
}

bool ReadMultiArenaSaveTeam(int team, struct Unit *units_dst, char *name_dst)
{
	return false;
}

void WriteMultiArenaSaveRankings(struct MultiArenaRankingEnt const *src)
{
}

void ReadMultiArenaSaveRankings(struct MultiArenaRankingEnt *dst)
{
}

void WriteMultiArenaSaveConfig(u16 const *config_src)
{
}

void ReadMultiArenaSaveConfig(u16 *config_dst)
{
}

bool IsMultiArenaSaveReady(void)
{
    return false;
}
