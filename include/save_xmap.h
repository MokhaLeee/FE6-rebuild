#pragma once

#include "prelude.h"
#include "save.h"

#include "gbasram.h"

bool ReadExtraMapSaveHead(void);
void const * GetExtraMapMapReadAddr(void);
u32 GetExtraMapMapSize(void);
void const * GetExtraMapInfoReadAddr(void);
u32 GetExtraMapInfoSize(void);
u16 ExtraMapChecksum(void const * data, int size);
bool IsExtraMapAvailable(void);
void ReadExtraMapInfo(void);
bool ListAvailableTrialChapters(i8 * list_out);
char const * func_fe6_080867F0(int chapter);
char const * DecodeExtraMapGoalMsg(int chapter);
char const * DecodeExtraMapInfoMsg(int chapter);
void CreateTrialChapterBonusUnits(void);
