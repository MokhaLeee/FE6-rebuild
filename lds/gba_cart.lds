MEMORY
{
	rom   : ORIGIN = 0x08000000, LENGTH = 32M
	iwram : ORIGIN = 0x03000000, LENGTH = 32K
	ewram : ORIGIN = 0x02000000, LENGTH = 256K
}

ENTRY(_start)

__rom_start             =       ORIGIN(rom);
__ewram_start           =       ORIGIN(ewram);
__iwram_start           =       ORIGIN(iwram);
__iwram_top             =       ORIGIN(iwram) + LENGTH(iwram);;
__sp_irq                =       __iwram_top - 0x060;
__sp_usr                =       __sp_irq - 0x1A0;
__irq_flags             =       0x03007ff8;

SECTIONS
{
	. = __rom_start;

	.crt0 :
	{
		KEEP (*(.crt0))
		*(.text.irq)
		. = ALIGN(4);
	} >rom =0xff

	.text  :
	{
		vanilla/armfunc.o(.text)

		*(.text)
		*(.text*)
		. = ALIGN(4);
	} >rom = 0xff
	__text_end = .;

	/* max: 0x400000 */
	__reloc_map_start = __rom_start + 0x100000;
	. = __reloc_map_start;

	.reloc ALIGN(4) : AT (__reloc_map_start)
	{
		*(.rodata.reloc_list)
		. = ALIGN(4);
	} >rom = 0xff

	__reloc_map_end = .;

	__krodata_start = __rom_start + 0x120000;
	. = __krodata_start;

	.rodata ALIGN(4) : AT (__krodata_start)
	{
		*(.data)
		*(.data*)
		*(.rodata)
		*(.rodata*)
	} >rom = 0xff

	__krodata_end = .;

	__rodata_start = .;
	. = __rodata_start;

	.rodata ALIGN(4) : AT (__rodata_start)
	{
		*(.gameinfo_data)
		*(.gameinfo_data*)
		*(.content_data)
		*(.content_data*)
		. = ALIGN(4);
		__rodata_end = .;
	} >rom = 0xff

	/**
	 * EWRAM
	 */
	. = __ewram_start;

	/**
	 * EWRAM overlays
	 */
	__ewram_overlay_start = __ewram_start;
	__ewram_overlay_end   = __ewram_overlay_start;

	. = __ewram_overlay_start;
	.ov0 ALIGN(4) (NOLOAD) : AT (__ewram_overlay_start)
	{
		INCLUDE "./lds/section_ewram_ov0.lds"
		. = ALIGN(4);
		*(.ewram_overlay_0)
		*(ewram_overlay_0)
		. = ALIGN(4);
		__ewram_ov0_end = .;
	} >ewram
	__ewram_overlay_end = MAX(__ewram_ov0_end, __ewram_overlay_end);

	. = __ewram_overlay_start;
	.ov1 ALIGN(4) (NOLOAD) : AT (__ewram_overlay_start)
	{
		. = ALIGN(4); INCLUDE "./lds/section_ewram_ov1.lds"
		*(ewram_overlay_banim)
		. = ALIGN(4);
		__ewram_ov1_end = .;
	} >ewram
	__ewram_overlay_end = MAX(__ewram_ov1_end, __ewram_overlay_end);

	. = __ewram_overlay_start;
	.ov2 ALIGN(4) (NOLOAD) : AT (__ewram_overlay_start)
	{
		*(ewram_overlay_savemenu)
		. = ALIGN(4);
		__ewram_ov2_end = .;
	} >ewram
	__ewram_overlay_end = MAX(__ewram_ov2_end, __ewram_overlay_end);

	. = __ewram_overlay_start;
	.ov3 ALIGN(4) (NOLOAD) : AT (__ewram_overlay_start)
	{
		*(.ewram_overlay_3)
		. = ALIGN(4);
		__ewram_ov3_end = .;
	} >ewram
	__ewram_overlay_end = MAX(__ewram_ov3_end, __ewram_overlay_end);

	. = __ewram_overlay_end;
	__ewram_lma = __ewram_overlay_end;
	.ewdata ALIGN(0x100) (NOLOAD) : AT (__ewram_lma)
	{
		vanilla/hardware.o(ewram_data);
		*(ewram_data)
		*(.ewram_data)
		*(.ewram*)

		. = ALIGN(4);
		__ewram_end = ABSOLUTE(.);
	} >ewram

	/* IWRAM */
	. = __iwram_start;

	.iwram_code ALIGN(4) :
	{
		. = ALIGN(4);
		*(.iwram_code)
		. = ALIGN(4);
	} >iwram AT>rom

	__iwram_code_lma     = LOADADDR(.iwram_code);
	__iwram_code_lma_end = LOADADDR(.iwram_code) + SIZEOF(.iwram_code);
	__iwram_code_vma     = ADDR(.iwram_code);

	.bss ALIGN(4) (NOLOAD) :
	{
		__bss_start = ABSOLUTE(.);
		__bss_start__ = ABSOLUTE(.);

		*(.bss)
		*(.bss*)
		*(iwram_data)
		*(.iwram_data*)
		*(.iwram*)
		*(COMMON)
		. = ALIGN(4);
		__bss_end__ = ABSOLUTE(.);
		__end__ = ABSOLUTE(.);
	} >iwram
}
