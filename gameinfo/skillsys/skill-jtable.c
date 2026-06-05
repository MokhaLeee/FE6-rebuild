#include "prelude.h"
#include "constants/jids.h"
#include "constants/skills.h"

#include "skill-sys.h"

GAMEINFO_DATA
struct SkillTable const gSkillJTable[0x100] = {
	[JID_CAVALIER] = {{ SID_BlowDeath, 0 }},
	[JID_PALADIN] = {{ SID_AlertStance, 0 }},
	[JID_ARCHER] = {{ SID_RangeBonusBow1, 0 }},
	[JID_ROY] = {{ SID_RangeBonusBow1, 0 }},
	[JID_SNIPER] = {{ SID_RangeBonusBow2, 0 }},
	[JID_SNIPER_F] = {{ SID_RangeBonusBow2, 0 }},
};
