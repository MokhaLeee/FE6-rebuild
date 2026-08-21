#include "prelude.h"
#include "skill-sys.h"
#include "constants/skills.h"
#include "constants/msg.h"
#include "skillicons.h"

struct SkillInfo const gSkillInfo[0x400] = {
	[0] = {
		.icon = Gfx_SkillIcon_WIP
	},

	[SID_PowBonus] = {
		.msg_desc = MSG_SKILL_StrBonus,
		.icon = Gfx_SkillIcon_BonusPow,
	},
};
