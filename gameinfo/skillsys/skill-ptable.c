#include "prelude.h"
#include "constants/pids.h"
#include "constants/skills.h"

#include "skill-sys.h"

GAMEINFO_DATA
struct SkillTable const gSkillPTable[0x100] = {
	[PID_ROY] = {{ SID_PowBonus, 0 }},
};
