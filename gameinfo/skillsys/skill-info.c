#include "prelude.h"
#include "skill-sys.h"
#include "constants/skills.h"
#include "skillicons.h"

struct SkillInfo const gSkillInfo[0x400] = {
	[0] = {
		.icon = Gfx_SkillIcon_WIP
	},

	[SID_PowBonus] = {
		.msg_desc = 0,
		.msg_name = 0,
		.icon = Gfx_SkillIcon_BonusPow,
	},
};
