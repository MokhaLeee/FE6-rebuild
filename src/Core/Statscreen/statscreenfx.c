#include "prelude.h"
#include "statscreen.h"

extern const u16 Tsa_StatScreenBg1PageShort[];
extern const u16 Tsa_StatScreenBg1PageNormal[];
extern const u16 Tsa_StatScreenBg1PageLong[];

u16 const *const TsaLut_StatScreenBgPlayer[5] = {
	Tsa_StatScreenBg1PageNormal,
	Tsa_StatScreenBg1PageLong,
	Tsa_StatScreenBg1PageLong,
	Tsa_StatScreenBg1PageNormal,
	Tsa_StatScreenBg1PageShort
};

u16 const *const TsaLut_StatScreenBgNonePlayer[5] = {
	Tsa_StatScreenBg1PageNormal,
	Tsa_StatScreenBg1PageLong,
	Tsa_StatScreenBg1PageLong,
	Tsa_StatScreenBg1PageNormal,
	Tsa_StatScreenBg1PageShort
};
