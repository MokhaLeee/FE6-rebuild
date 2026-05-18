OUTPUT_ARCH(arm)

MEMORY
{
	rom   : ORIGIN = 0x08000000, LENGTH = 32M
	iwram : ORIGIN = 0x03000000, LENGTH = 32K
	ewram : ORIGIN = 0x02000000, LENGTH = 256K
}

__text_start            =       ORIGIN(rom);
__ewram_start           =       ORIGIN(ewram);
__iwram_start           =       ORIGIN(iwram);
__iwram_top             =       ORIGIN(iwram) + LENGTH(iwram);;
__sp_irq                =       __iwram_top - 0x060;
__sp_usr                =       __sp_irq - 0x1A0;
__irq_flags             =       0x03007ff8;

gNumMusicPlayers = 9;
gMaxLines = 0;

SECTIONS
{
	__ewram_overlay_beg = 0x02000000;
	__ewram_overlay_end = __ewram_overlay_beg;

	/* I wonder if there's not two distinct overlays here */
	/* or one with one instance split in two? */

	. = __ewram_overlay_beg;
	ewram_overlay_0 (NOLOAD) : ALIGN(4)
	{
		. = ALIGN(4); INCLUDE "./lds/section_ewram_ov0.lds"
		. = ALIGN(4); src-hacks/*.o(.ewram_overlay_0)
	}
	__ewram_overlay_end = MAX(., __ewram_overlay_end);

	. = __ewram_overlay_beg;
	ewram_overlay_banim (NOLOAD) : ALIGN(4)
	{
		. = ALIGN(4); INCLUDE "./lds/section_ewram_ov1.lds"
		. = ALIGN(4); src-hacks/*.o(.ewram_overlay_banim)
	}
	__ewram_overlay_end = MAX(., __ewram_overlay_end);

	. = __ewram_overlay_beg;
	ewram_overlay_savemenu (NOLOAD) : ALIGN(4)
	{
		. = ALIGN(4); src/savemenu.o(ewram_overlay_savemenu);
		. = ALIGN(4); src/savemenu_2.o(ewram_overlay_savemenu);
	}
	__ewram_overlay_end = MAX(., __ewram_overlay_end);

	. = __ewram_overlay_beg;
	ewram_overlay_opanim (NOLOAD) : ALIGN(4)
	{
	}
	__ewram_overlay_end = MAX(., __ewram_overlay_end);

	. = __ewram_overlay_end;
	ewram_data (NOLOAD) : ALIGN(4)
	{
		. = ALIGN(4); INCLUDE "./lds/section_ewram.lds"

		/* bss for CHAX is put in ewram */
		. = ALIGN(4); src-hacks/*.o(.bss)

		. = ALIGN(4); src-hacks/*.o(.ewram_data)
		. = 0x02040000 - __ewram_overlay_end; /* end */
	}

	. = 0x03000000;
	IWRAM (NOLOAD) : ALIGN(4)
	{
		/* .bss */
		. = ALIGN(4); INCLUDE "./lds/section_iwram.lds"
		. = ALIGN(4); src-hacks/*.o(.iwram_data)
		. = 0x008000; /* end */
	}

	. = 0x08000000;
	ROM : ALIGN(4)
	{
		asm/crt0.o(.text);
		. = ALIGN(4); INCLUDE "./lds/section_text.lds"
		. = ALIGN(4); src-hacks/*.o(.text)
		. = ALIGN(4); asm/code_linker_stubs.o(.text);

		. = 0x000A0000;
		INCLUDE "./lds/prlist.lds"

		/* here could expand to 0x400000 */
		. = 0x000E0000;
		banims/banimdata_gen.o(.data);

		/* .rodata */
		. = ALIGN(4); INCLUDE "./lds/section_rodata.lds"

		/* .data */
		. = ALIGN(4); INCLUDE "./lds/section_data.lds"

		/* CHAX */
		. = ALIGN(4); src-hacks/*.o(.data)
		. = ALIGN(4); src-hacks/*.o(.rodata)
	} = 0

	/* DWARF 2 sections */
	.debug_aranges  0 : { *(.debug_aranges) }
	.debug_pubnames 0 : { *(.debug_pubnames) }
	.debug_info     0 : { *(.debug_info) }
	.debug_abbrev   0 : { *(.debug_abbrev) }
	.debug_line     0 : { *(.debug_line) }
	.debug_frame    0 : { *(.debug_frame) }
	.debug_str      0 : { *(.debug_str) }
	.debug_loc      0 : { *(.debug_loc) }
	.debug_macinfo  0 : { *(.debug_macinfo) }

	/* Discard everything not specifically mentioned above. */
	/DISCARD/ :
	{
		*(*);
	}
}
