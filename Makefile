.SUFFIXES:
.SECONDARY:

MAKEFLAGS += --no-print-directory

ifeq ($(OS),Windows_NT)
	$(error "need linux environment, abort)
endif

ifeq ($(strip $(DEVKITPRO)),)
	$(error "Please set DEVKITPRO in your environment. export DEVKITPRO=<path to>devkitpro)
endif

ifeq ($(strip $(DEVKITARM)),)
	$(error "Please set DEVKITARM in your environment. export DEVKITARM=<path to>devkitARM)
endif

BANIM_LINK_ADDR:=0x08800000

# ==================
# = PROJECT CONFIG =
# ==================

BUILD_NAME := fe6re

ROM := $(BUILD_NAME).gba
ELF := $(ROM:%.gba=%.elf)
MAP := $(ROM:%.gba=%.map)
SYM := $(ROM:%.gba=%.sym)

DEPENDS :=

all: $(ROM) $(SYM)

CACHE_DIR := .cache_dir
$(shell mkdir -p $(CACHE_DIR) > /dev/null)

CLEAN_FILES :=
CLEAN_DIRS  := $(CACHE_DIR) .release_dir $(shell find -name __pycache__)

# ====================
# = TOOL DEFINITIONS =
# ====================

ifeq ($(OS),Windows_NT)
  EXE := .exe
else
  EXE :=
  UNAME_S := $(shell uname -s)
endif

PYTHON := python3
TOOLCHAIN ?= $(DEVKITARM)
AGBCC_HOME ?= tools/agbcc

ifneq (,$(TOOLCHAIN))
  export PATH := $(TOOLCHAIN)/bin:$(PATH)
endif

PREFIX := arm-none-eabi-

export OBJCOPY := $(PREFIX)objcopy
export AS := $(PREFIX)as
export CC := $(PREFIX)gcc
export CPP := $(PREFIX)cpp
export LD := $(PREFIX)ld
export STRIP := $(PREFIX)strip

CC1     := $(AGBCC_HOME)/bin/old_agbcc$(EXE)
CC1_NEW := $(AGBCC_HOME)/bin/agbcc$(EXE)

GRIT := $(DEVKITPRO)/tools/bin/grit
LZSS := $(DEVKITPRO)/tools/bin/gbalzss
GRITLZ77ARGS      := -gu 16 -gzl -gB 4 -p! -m! -ft bin -fh!
GRIT4BPPARGS      := -gu 16 -gB 4 -p! -m! -ft bin -fh!
GRIT2BPPARGS      := -gu 16 -gb -gB 2 -p! -m! -ft bin -fh!
GRITPALETTEARGS	  := -g! -m! -p -ft bin -fh!
MAPPALETTEARGS    := -pn 160
BTLPALETTEARGS    := -pn 80

SHASUM ?= sha1sum

# ================
# = BUILD CONFIG =
# ================

C_GENERATED :=

SRC_DIRS := src asm gamedata data
C_SRCS   := $(foreach dir, $(SRC_DIRS),$(shell find $(dir) -name *.c))
ASM_SRCS := $(foreach dir, $(SRC_DIRS),$(shell find $(dir) -name *.s))

HACK_SRC  := src-hacks
HACK_DIRS := $(HACK_SRC)
HACK_C_SRCS := $(foreach dir, $(HACK_DIRS),$(shell find $(dir) -name *.c))
HACK_S_SRCS += $(foreach dir, $(HACK_DIRS),$(shell find $(dir) -name *.s))

LIB_DIRS := $(DEVKITPRO)/libgba $(AGBCC_HOME)

# =========
# = Texts =
# =========
TEXT_DIR := texts
TEXT_TOOLS := tools/texttools

TEXT_DECODER := $(PYTHON)  $(TEXT_TOOLS)/textdecoder.py
TEXT_DPARSER := $(PYTHON) $(TEXT_TOOLS)/textdeparser.py
TEXT_PROCESS := $(PYTHON) $(TEXT_TOOLS)/textprocess-chax.py
TEXT_ENCODE := tools/textencode/textencode

TEXT_MAIN := $(TEXT_DIR)/texts.txt
TEXT_DEFS := $(TEXT_DIR)/textdefs.txt
TEXT_SRC  := $(TEXT_MAIN) $(shell find $(TEXT_DIR) -type f -name "*.txt")

TEXT_HEADER := include/constants/msg.h
MSG_LIST    := src/msg_data.c

# this should just be used for testing
$(TEXT_MAIN):
	@echo "[GEN]	$@"
	@$(TEXT_DECODER) > $@

$(MSG_LIST) $(TEXT_HEADER): $(TEXT_SRC) $(TEXT_DEFS)
	@echo "[GEN]	$@"
	@$(TEXT_PROCESS) $(TEXT_MAIN) $(TEXT_DEFS) $(MSG_LIST) $(TEXT_HEADER) utf8

C_GENERATED += $(MSG_LIST)
CLEAN_FILES += $(MSG_LIST) # $(TEXT_HEADER)

msg : $(MSG_LIST)

# ============
# = Spritans =
# ============

PNG_FILES := $(shell find ./data -type f -name '*.png')
TSA_FILES := $(shell find ./data -type f -name '*.tsa')
GBAGFX := tools/gbagfx/gbagfx$(EXE)

%.1bpp: %.png
	@echo "[GEN]	$@"
	@ $(GBAGFX) $< $@

%.4bpp: %.png
	@echo "[GEN]	$@"
	@ $(GBAGFX) $< $@

%.8bpp: %.png
	@echo "[GEN]	$@"
	@ $(GBAGFX) $< $@

%.gbapal: %.pal
	@echo "[GEN]	$@"
	@ $(GBAGFX) $< $@

%.gbapal: %.png
	@echo "[GEN]	$@"
	@$(GBAGFX) $< $@

%.lz: %
	@echo "[LZ ]	$@"
	@$(GBAGFX) $< $@

%.rl: %
	@echo "[LZ ]	$@"
	@$(GBAGFX) $< $@

CLEAN_FILES += $(PNG_FILES:%.png=%.4bpp) $(PNG_FILES:%.png=%.4bpp.lz) $(PNG_FILES:%.png=%.4bpp.lz.o)
CLEAN_FILES += $(PNG_FILES:%.png=%.gbapal) $(PNG_FILES:%.png=%.gbapal.lz)
CLEAN_FILES += $(TSA_FILES:%.tsa=%.tsa.lz)

# ==============
# = Banim data =
# ==============

BANIM_LDS := lds/linker_script_banim.txt

ALL_BANIM_SCRS := $(shell find ./banims/ -type f -name "*.s")
ALL_BANIM_PALS := $(shell find ./banims/ -type f -name "*.agbpal")
ALL_BANIM_IMGS := $(shell find ./banims/ -type f -name '*.png')

BANIM_TOOLS := tools/banimtools
BANIM_LINKER := $(BANIM_TOOLS)/banim_compressing_linker.py
LZSS_COMPRESS  := $(PYTHON) $(BANIM_TOOLS)/lzss_compress.py
PNG_TO_GBA4BPP := $(PYTHON) $(BANIM_TOOLS)/png_to_4bpp.py
PNG_TO_GBA4BPP := $(PYTHON) $(BANIM_TOOLS)/png_to_4bpp.py
FK_COMPRESSOR  := $(PYTHON) $(BANIM_TOOLS)/compressor.py
STRIPER        := $(BANIM_TOOLS)/strip.sh

BANIM_OBJECT := banims/banimdata_gen.o

$(BANIM_OBJECT): $(BANIM_LDS) $(shell $(BANIM_LINKER) -t $(BANIM_LDS) -m)
	@echo "[LYN]	$@"
	@$(BANIM_LINKER) -o $@ -t $(BANIM_LDS) -b $(BANIM_LINK_ADDR) -l $(LD) --objcopy $(OBJCOPY) -c ./tools/banimtools/compressor.py > /dev/null

%.stripped: %
	@echo "[STP]	$@"
	@$(STRIPER) $< $@

%.oamr.elf: %.o
	@echo "[LD ]	$@"
	@$(LD) -T $(BANIM_TOOLS)/link_oamr.ld -o $@ $<

%.oaml.elf: %.o
	@echo "[LD ]	$@"
	@$(LD) -T $(BANIM_TOOLS)/link_oaml.ld -o $@ $<

%.mode.elf: %.o
	@echo "[LD ]	$@"
	@$(LD) -T $(BANIM_TOOLS)/link_mode.ld -o $@ $<

%.oamr.bin: %.oamr.elf
	@echo "[OPY]	$@"
	@$(OBJCOPY) --only-section=.data.oamr -O binary $< $@

%.oaml.bin: %.oaml.elf
	@echo "[OPY]	$@"
	@$(OBJCOPY) --only-section=.data.oaml -O binary $< $@

%.mode.bin: %.mode.elf
	@echo "[OPY]	$@"
	@$(OBJCOPY) --only-section=.data.modes -O binary $< $@

BANIM_SRC_GENERATED := $(BANIM_OBJECT:%.o=%.*)
BANIM_SRC_GENERATED += $(ALL_BANIM_SCRS:%.s=%.o) $(ALL_BANIM_SCRS:%.s=%.o.bin) $(ALL_BANIM_SCRS:%.s=%.o.bin.lz) $(ALL_BANIM_SCRS:%.s=%.o.bin.lz.o)
BANIM_SRC_GENERATED += $(ALL_BANIM_SCRS:%.s=%.oamr.elf) $(ALL_BANIM_SCRS:%.s=%.oamr.bin) $(ALL_BANIM_SCRS:%.s=%.oamr.bin.lz) $(ALL_BANIM_SCRS:%.s=%.oamr.bin.lz.o)
BANIM_SRC_GENERATED += $(ALL_BANIM_SCRS:%.s=%.script.bin) $(ALL_BANIM_SCRS:%.s=%.script.bin.lz) $(ALL_BANIM_SCRS:%.s=%.script.bin.lz.o)
BANIM_SRC_GENERATED += $(ALL_BANIM_SCRS:%.s=%.oaml.elf) $(ALL_BANIM_SCRS:%.s=%.oaml.bin) $(ALL_BANIM_SCRS:%.s=%.oaml.bin.lz) $(ALL_BANIM_SCRS:%.s=%.oaml.bin.lz.o)
BANIM_SRC_GENERATED += $(ALL_BANIM_SCRS:%.s=%.mode.elf) $(ALL_BANIM_SCRS:%.s=%.mode.bin) $(ALL_BANIM_SCRS:%.s=%.mode.bin.o)
BANIM_SRC_GENERATED += $(ALL_BANIM_SCRS:%.s=%.d)

BANIM_PAL_GENERATED += $(ALL_BANIM_PALS:%=%.lz) $(ALL_BANIM_PALS:%=%.lz.o)
BANIM_PAL_GENERATED += $(ALL_BANIM_PALS:%=%.lz.stripped) $(ALL_BANIM_PALS:%=%.lz.stripped.o)

BANIM_IMG_GENERATED += $(ALL_BANIM_IMGS:%.png=%.4bpp) $(ALL_BANIM_IMGS:%.png=%.4bpp.lz) $(ALL_BANIM_IMGS:%.png=%.4bpp.lz.o)

banim: $(BANIM_OBJECT)

# =========
# = Glyph =
# =========
FONT_DIR := fonts
GLYPH_LIST := $(FONT_DIR)/FontList.txt
FONT_BUILD := $(FONT_DIR)/build

GLYPH_GENERATOR := python3 tools/scripts/glyphtools/glyph-installer-generator.py
GLYPH_INSTALLER := $(FONT_BUILD)/glyph_installer.s

$(GLYPH_INSTALLER): $(GLYPH_LIST)
	@echo "[GEN]	$@"
	@mkdir -p $(dir $@)
	@$(GLYPH_GENERATOR) -i $(GLYPH_LIST) > $(GLYPH_INSTALLER)

%_font.2bpp.bin: %_font.png
	@echo "[GEN]	$@"
	@$(GRIT) $< -gB2 -p! -tw16 -th16 -ftb -fh! -o $@
	@mv $(basename $<).img.bin $@

ASM_SRCS += $(GLYPH_INSTALLER)
CLEAN_DIRS += $(FONT_BUILD)

glyph: $(GLYPH_INSTALLER)

# ============
# = Wizardry =
# ============
INC_DIRS := include include/hacks asm/include .
INC_FLAG := $(foreach dir, $(INC_DIRS), -I$(dir)) \
			$(foreach dir, $(LIB_DIRS), -I$(dir)/include)

ARCH := -mcpu=arm7tdmi
CFLAGS := -g $(ARCH) -mtune=arm7tdmi \
		  $(INC_FLAG) \
		  -std=gnu99 -O2 -fno-builtin \
		  -Wall -Wextra -Werror -Wno-unused-parameter

CFLAGS += -fno-jump-tables
# CFLAGS += -fno-inline

ASFLAGS := -g $(ARCH) $(INC_FLAG)
LDFLAGS = -g $(ARCH) -Wl,-Map,$(notdir $*.map)

CDEPFLAGS = -MMD -MQ "$*.o" -MQ "$*.asm" -MF "$(CACHE_DIR)/$*.d" -MP
SDEPFLAGS = --MD "$(CACHE_DIR)/$(notdir $*).d"

%.o:   EXT_FLAGS := -mthumb -mthumb-interwork
%.asm: EXT_FLAGS := -mthumb -mthumb-interwork

%.arm.o   : EXT_FLAGS := -marm
%.arm.asm : EXT_FLAGS := -marm

%iwram.o   : EXT_FLAGS := -marm -mlong-calls
%iwram.asm : EXT_FLAGS := -marm -mlong-calls

$(HACK_SRC)/%.o: $(HACK_SRC)/%.c
	@echo "[CC ]	$@"
	@mkdir -p $(dir $@) $(dir $(CACHE_DIR)/$*.d)
	@$(CC) $(CFLAGS) $(EXT_FLAGS) $(CDEPFLAGS) -g -c $< -o $@

$(HACK_SRC)/%.asm: $(HACK_SRC)/%.c
	@echo "[CC ]	$@"
	@mkdir -p $(dir $@) $(dir $(CACHE_DIR)/$*.d)
	@$(CC) $(CFLAGS) $(EXT_FLAGS) $(CDEPFLAGS) -S $< -o $@ -fverbose-asm

ASM_DEP := python3 Tools/asmtools/asmdep.py
$(CACHE_DIR)/%.d: %.s
	@mkdir -p $(dir $@)
	@echo "$*.o: \\" > $@
	@$(ASM_DEP) $(INC_FLAG) $< >> $@

SDEPFLAGS := -MD "$(CACHE_DIR)/$*.d"

$(HACK_SRC)/%.o: $(HACK_SRC)/%.s
	@echo "[AS ]	$@"
#	@$(CC) $(CFLAGS) $(EXT_FLAGS) $(CDEPFLAGS) -g -c $< -o $@
	@$(CC) $(CFLAGS) $(EXT_FLAGS) -g -c $< -o $@
#	@$(AS) $(ASFLAGS) $(SDEPFLAGS) -I $(dir $<) $< -o $@

# ===========
# = Vanilla =
# ===========
CPPFLAGS := $(INC_FLAG) -nostdinc -undef
AGB_CFLAGS := -g -mthumb-interwork -O2 -Wimplicit -Wparentheses -Werror -fhex-asm -ffix-debug-line
ASFLAGS := -mcpu=arm7tdmi $(INC_FLAG)

ASM_DEP := $(PYTHON)  tools/asmtools/asmdep.py

%.d: %.c
	@$(CPP) $(CPPFLAGS) $< -o $@ -MM -MG -MT $@ -MT $*.o

%.d: %.s
	@echo "$*.o: \\" > $@
	@$(ASM_DEP) $(INC_FLAG) $< >> $@

%.o: %.c %.d
	@echo "[CC ]	$<"
	@$(CPP) $(CPPFLAGS) $< | $(CC1) $(AGB_CFLAGS) -o $*.asm
	@echo ".text\n\t.align\t2, 0\n" >> $*.asm
	@$(AS) $(ASFLAGS) $*.asm -o $@
	@$(STRIP) -N .gcc2_compiled. $@

%.d: %.o
	@touch $@

%.o: %.s
	@echo "[AS ]	$<"
	@mkdir -p $(dir $*.d)
	@$(AS) $(ASFLAGS) $< -o $@ --MD $*.d

%.o: %.asm
	@echo "[AS ]	$<"
	@mkdir -p $(dir $*.d)
	@$(AS) $(ASFLAGS) $< -o $@ --MD $*.d

# ===========
# = Targets =
# ===========

ALL_DEPS :=
ALL_OBJS :=

ifeq (,$(findstring $(C_GENERATED),$(C_SRCS)))
C_SRCS += $(C_GENERATED)
endif

C_OBJS := $(C_SRCS:%.c=%.o)
ASM_OBJS := $(ASM_SRCS:%.s=%.o)
DATA_OBJS := $(DATA_SRCS:%.s=%.o)
ALL_OBJS += $(C_OBJS) $(ASM_OBJS) $(DATA_OBJS)
ALL_DEPS += $(ALL_OBJS:%.o=%.d)

HACK_OBJS := $(HACK_C_SRCS:%.c=%.o) $(HACK_S_SRCS:%.s=%.o)
ALL_OBJS += $(HACK_OBJS)
ALL_DEPS += $(HACK_OBJS:%.o=$(CACHE_DIR)/%.d)

ifneq (clean,$(MAKECMDGOALS))
  -include $(ALL_DEPS)
  .PRECIOUS: %.d
endif

CLEAN_FILES += $(ALL_OBJS) $(ALL_DEPS)
CLEAN_FILES += $(C_SRCS:%.c=%.asm)

# ===========
# = RECIPES =
# ===========

LDS := lds/gba_cart.lds
LIBS := $(foreach dir,$(LIB_DIRS),-L$(dir)/lib)
LD_LDFLAGS = -T $(LDS) -Map $(MAP) $(LIBS) -R $(BANIM_OBJECT).sym.o
CC_LDFLAGS = -T $(LDS) -Wl,-Map $(MAP) $(LIBS) -Wl,-R $(BANIM_OBJECT).sym.o

%.gba: %.elf
	@echo "[OPY]	$@"
	@$(OBJCOPY) --strip-debug -O binary $< $@

%.sym: %.elf
	@echo "[SYM]	$@"
	@python3 tools/scripts/elf2sym.py $< | python3 tools/scripts/sym_modify.py > $@

$(ELF): $(ALL_OBJS) $(BANIM_OBJECT) lds/*.lds
	@echo "[LD ]	$@"
	@$(LD) $(LD_LDFLAGS) $(ALL_OBJS) -lmm -lgba -lc -lgcc -o $@
#	@$(CC) $(CC_LDFLAGS) $(ALL_OBJS) -lmm -lgba -lc -lgcc -o $@

CLEAN_FILES += $(ROM) $(ELF) $(MAP) $(SYM)

# ==============
# = Make clean =
# ==============
CLEAN_DIRS += $(shell find . -type d -name "__pycache__")

clean:
	@rm -f $(CLEAN_FILES)
	@rm -f $(BANIM_SRC_GENERATED)
	@rm -f $(BANIM_PAL_GENERATED)
	@rm -f $(BANIM_IMG_GENERATED)
	@rm -rf $(CLEAN_DIRS)
	@echo "all cleaned..."

.PHONY: clean

# ======================
# = AGB_CFLAGS overrides =
# ======================

%/main.o:           AGB_CFLAGS += -mtpcs-frame
