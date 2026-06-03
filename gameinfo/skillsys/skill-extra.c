#include "prelude.h"
#include "skill-sys.h"
#include "constants/skills.h"

GAMEINFO_DATA
struct SkillExtraInfo const gSkillExtraInfo[MAX_SKILL_NUM] = {
	[SID_BlowDarting] = {{ 6 }},
	[SID_BlowDeath] = {{ 6 }},
	[SID_BlowArmored] = {{ 6 }},
	[SID_BlowFiendish] = {{ 6 }},
	[SID_BlowWarding] = {{ 6 }},
	[SID_BlowDuelist] = {{ 20 }},
	[SID_BlowUncanny] = {{ 30 }},
	[SID_BlowKilling] = {{ 20 }},
	[SID_RANGEBONUS1] = {{ 1 }},
	[SID_RANGEBONUS2] = {{ 2 }},
};
