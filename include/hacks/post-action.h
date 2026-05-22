#pragma once

#include "prelude.h"
#include "klib.h"

extern const HookProcFunc_t gPostActionFuncs[];

void CallPostActionHook(ProcPtr proc);
