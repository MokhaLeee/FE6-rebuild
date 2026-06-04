#ifndef CHAX_SKILLS_H
#define CHAX_SKILLS_H

enum skills {
	SID_NONE = 0,

	// Status-getter skills
	SID_PowBonus,

	// Blow skills
	SID_BlowDarting,
	SID_BlowDeath,
	SID_BlowArmored,
	SID_BlowFiendish,
	SID_BlowWarding,
	SID_BlowDuelist,
	SID_BlowUncanny,
	SID_BlowKilling,

	// range skills
	SID_RangeBonusBow1,
	SID_RangeBonusBow2,

	// Misc battle skills
	SID_Nihil,

	// Post-action skills
	SID_AlertStance,
}; 

#endif
