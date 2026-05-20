	.include "macro.inc"
	.text

	thumb_func_start ClearOam_thm
ClearOam_thm: @ 0x0809FA90
	bx pc
	.align
	.arm
	b ClearOam

	thumb_func_start TmApplyTsa_thm
TmApplyTsa_thm: @ 0x0809FA98
	bx pc
	.align
	.arm
	b TmApplyTsa

	thumb_func_start TmFillRect_thm
TmFillRect_thm: @ 0x0809FAA0
	bx pc
	.align
	.arm
	b TmFillRect

	thumb_func_start ColorFadeTick_thm
ColorFadeTick_thm: @ 0x0809FAA8
	bx pc
	.align
	.arm
	b ColorFadeTick

	thumb_func_start TmCopyRect_thm
TmCopyRect_thm: @ 0x0809FAB0
	bx pc
	.align
	.arm
	b TmCopyRect

	thumb_func_start Checksum32_thm
Checksum32_thm: @ 0x0809FAB8
	bx pc
	.align
	.arm
	b Checksum32

	thumb_func_start DrawGlyph_thm
DrawGlyph_thm:
	bx pc
	.align
	.arm
	b DrawGlyph

	thumb_func_start DecodeString_thm
DecodeString_thm:
	bx pc
	.align
	.arm
	b DecodeString

	thumb_func_start PutOamHi_thm
PutOamHi_thm:
	bx pc
	.align
	.arm
	b PutOamHi

	thumb_func_start PutOamLo_thm
PutOamLo_thm:
	bx pc
	.align
	.arm
	b PutOamLo

	thumb_func_start MapFloodCoreStep_thm
MapFloodCoreStep_thm:
	bx pc
	.align
	.arm
	b MapFloodCoreStep

	thumb_func_start MapFloodCore_thm
MapFloodCore_thm:
	bx pc
	.align
	.arm
	b MapFloodCore
