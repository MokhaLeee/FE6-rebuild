#include "prelude.h"
#include "banim.h"

static void c01_handle_attack(struct Anim *anim)
{
	if (gAnimC01LoopCtrl == 1)
		anim->scrCur = anim->script;
	else if (!(anim->flags3 & ANIM_BIT3_C01_BLOCK_END_PREBATTLE))
		anim->scrCur++;
	else if (anim->flags3 & ANIM_BIT3_C01_BLOCK_END_INBATTLE) {
		if (CheckEkrHitDone() == true) {
			anim->flags3 &= ~(ANIM_BIT3_C02_BLOCK_END | ANIM_BIT3_C01_BLOCK_END_PREBATTLE | ANIM_BIT3_C01_BLOCK_END_INBATTLE);
			anim->scrCur++;
		}
	}
}

static void c01_handle_stand(struct Anim *anim)
{
	if (gAnimC01LoopCtrl == 1)
		anim->scrCur = anim->script;
	else if (!(anim->flags3 & ANIM_BIT3_C01_BLOCK_END_PREBATTLE))
		anim->scrCur++;
	else if (anim->flags3 & ANIM_BIT3_C01_BLOCK_END_INBATTLE) {
		if (CheckEkrHitDone() == true) {
			anim->flags3 &= ~(ANIM_BIT3_C02_BLOCK_END | ANIM_BIT3_C01_BLOCK_END_PREBATTLE | ANIM_BIT3_C01_BLOCK_END_INBATTLE);
			anim->scrCur++;
		}
	}
}

bool Banim_C01_DemoBlock(struct Anim *anim)
{
	switch (anim->currentRoundType) {
	case ANIM_ROUND_HIT_CLOSE:
	case ANIM_ROUND_CRIT_CLOSE:
	case ANIM_ROUND_NONCRIT_FAR:
	case ANIM_ROUND_CRIT_FAR:
	case ANIM_ROUND_MISS_CLOSE:
		c01_handle_attack(anim);
		break;

	case ANIM_ROUND_TAKING_MISS_CLOSE:
	case ANIM_ROUND_TAKING_MISS_FAR:
	case ANIM_ROUND_TAKING_HIT_CLOSE:
	case ANIM_ROUND_STANDING:
	case ANIM_ROUND_TAKING_HIT_FAR:
	default:
		c01_handle_stand(anim);
		break;
	}

	return false;
}
