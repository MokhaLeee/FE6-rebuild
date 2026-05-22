#include "prelude.h"
#include "constants/jids.h"
#include "constants/skills.h"

#include "skill-sys.h"

GAMEINFO_DATA
struct SkillTable const gSkillJTable[0x100] = {
	[JID_ARCHER] = {{ SID_PowBonus, 0 }},
	[JID_CAVALIER] = {{ SID_BlowDeath, 0 }},
	[JID_PALADIN] = {{ SID_AlertStance, 0 }},
};
