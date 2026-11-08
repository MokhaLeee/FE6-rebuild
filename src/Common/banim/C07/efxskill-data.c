#include "prelude.h"
#include "efx-skill.h"

/**
 * FE8 vanilla efxskill assets, ported from:
 *   fireemblem8u/data/banim-ekrskill.s
 *   fireemblem8u/graphics/efxskill/efxskill_*.png
 *
 * gamedata/skill-sys/EfxSkill.S defines the actual data blobs.
 */
extern u16 Img_EfxSkill1[];
extern u16 Img_EfxSkill2[];
extern u16 Img_EfxSkill3[];
extern u16 Img_EfxSkill4[];
extern u16 Img_EfxSkill5[];
extern u16 Img_EfxSkill6[];
extern u16 Img_EfxSkill7[];
extern u16 Img_EfxSkill8[];
extern u16 Img_EfxSkill9[];
extern u16 Img_EfxSkillA[];
extern u16 Img_EfxSkillB[];
extern u16 Img_EfxSkillC[];
extern u16 Img_EfxSkillD[];
extern u16 Img_EfxSkillE[];
extern u16 Img_EfxSkillF[];
extern u16 Img_EfxSkill10[];

extern u16 Tsa_EfxSkill1[];
extern u16 Tsa_EfxSkill2[];
extern u16 Tsa_EfxSkill3[];
extern u16 Tsa_EfxSkill4[];
extern u16 Tsa_EfxSkill5[];
extern u16 Tsa_EfxSkill6[];
extern u16 Tsa_EfxSkill7[];
extern u16 Tsa_EfxSkill8[];
extern u16 Tsa_EfxSkill9[];
extern u16 Tsa_EfxSkillA[];
extern u16 Tsa_EfxSkillB[];
extern u16 Tsa_EfxSkillC[];
extern u16 Tsa_EfxSkillD[];
extern u16 Tsa_EfxSkillE[];
extern u16 Tsa_EfxSkillF[];
extern u16 Tsa_EfxSkill10[];

extern u16 Pal_EfxSkill1[];
extern u16 Pal_EfxSkill2[];
extern u16 Pal_EfxSkill3[];
extern u16 Pal_EfxSkill4[];
extern u16 Pal_EfxSkill5[];
extern u16 Pal_EfxSkill6[];
extern u16 Pal_EfxSkill7[];
extern u16 Pal_EfxSkill8[];
extern u16 Pal_EfxSkill9[];
extern u16 Pal_EfxSkillA[];
extern u16 Pal_EfxSkillB[];
extern u16 Pal_EfxSkillC[];
extern u16 Pal_EfxSkillD[];
extern u16 Pal_EfxSkillE[];
extern u16 Pal_EfxSkillF[];
extern u16 Pal_EfxSkill10[];

/* FE8 vanilla FrameLut_EfxSkill: 16 frames x 2 ticks */
static const s16 EfxSkillFrameLut[] = {
	0, 2,
	1, 2,
	2, 2,
	3, 2,
	4, 2,
	5, 2,
	6, 2,
	7, 2,
	8, 2,
	9, 2,
	10, 2,
	11, 2,
	12, 2,
	13, 2,
	14, 2,
	15, 2,
	-1,
};

static u16 const *const EfxSkillTsaLut[] = {
	Tsa_EfxSkill1,
	Tsa_EfxSkill2,
	Tsa_EfxSkill3,
	Tsa_EfxSkill4,
	Tsa_EfxSkill5,
	Tsa_EfxSkill6,
	Tsa_EfxSkill7,
	Tsa_EfxSkill8,
	Tsa_EfxSkill9,
	Tsa_EfxSkillA,
	Tsa_EfxSkillB,
	Tsa_EfxSkillC,
	Tsa_EfxSkillD,
	Tsa_EfxSkillE,
	Tsa_EfxSkillF,
	Tsa_EfxSkill10,
};

static u16 const *const EfxSkillImgLut[] = {
	Img_EfxSkill1,
	Img_EfxSkill2,
	Img_EfxSkill3,
	Img_EfxSkill4,
	Img_EfxSkill5,
	Img_EfxSkill6,
	Img_EfxSkill7,
	Img_EfxSkill8,
	Img_EfxSkill9,
	Img_EfxSkillA,
	Img_EfxSkillB,
	Img_EfxSkillC,
	Img_EfxSkillD,
	Img_EfxSkillE,
	Img_EfxSkillF,
	Img_EfxSkill10,
};

static u16 const *const EfxSkillPalLut[] = {
	Pal_EfxSkill1,
	Pal_EfxSkill2,
	Pal_EfxSkill3,
	Pal_EfxSkill4,
	Pal_EfxSkill5,
	Pal_EfxSkill6,
	Pal_EfxSkill7,
	Pal_EfxSkill8,
	Pal_EfxSkill9,
	Pal_EfxSkillA,
	Pal_EfxSkillB,
	Pal_EfxSkillC,
	Pal_EfxSkillD,
	Pal_EfxSkillE,
	Pal_EfxSkillF,
	Pal_EfxSkill10,
};

const struct EfxAnimConf EfxSkillVanilla = {
	EfxSkillFrameLut,
	EfxSkillTsaLut,
	EfxSkillImgLut,
	EfxSkillPalLut,
	0,
};

struct EfxAnimConf const *const gpEfxSkillAnims[MAX_SKILL_NUM + 1] = {
	[0 ... MAX_SKILL_NUM] = &EfxSkillVanilla,
};
