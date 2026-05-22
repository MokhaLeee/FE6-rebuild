#pragma once

#include "prelude.h"

void SaveHwInit(void);
void WipeSave(void);
void WriteSave(void const *src, void *dest, int size);
void ReadSave(void const *src, void *dest, int size);
bool IsSaveWorking(void);
