#include "save_xmap.h"

#include "hardware.h"
#include "msg.h"
#include "util.h"
#include "unit.h"
#include "map.h"
#include "battle.h"
#include "chapterinfo.h"
#include "gbasram.h"
#include "chapterunits.h"
#include "save_core.h"
#include "savelayout.h"

#include "constants/msg.h"
#include "constants/chapters.h"

char const *DecodeExtraMapTitleMsg(int chapter)
{
	return GetChapterTitleMsg(chapter);
}

char const *DecodeExtraMapGoalMsg(int chapter)
{
	return DecodeMsg(MSG_EXTRAMAP_1_GOAL);
}

char const *DecodeExtraMapInfoMsg(int chapter)
{
	return DecodeMsg(MSG_EXTRAMAP_1_INFO);
}
