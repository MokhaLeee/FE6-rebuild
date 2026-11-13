#---------------------------------------------------------------------------------
# FE6 -> NDS 移植构建（平行构建，不影响现有 GBA 的 make all）
#
#   export DEVKITPRO=/opt/devkitpro DEVKITARM=/opt/devkitpro/devkitARM
#   make -f nds/Makefile -j8
#
# 产物: fe6ds.nds
#---------------------------------------------------------------------------------

.SUFFIXES:

TARGET   := fe6ds
BUILD    := nds/build
LIBNDS   := $(DEVKITPRO)/libnds

PREFIX   := arm-none-eabi-
export CC := $(DEVKITARM)/bin/$(PREFIX)gcc

ARCH     := -mthumb -mthumb-interwork

CFLAGS   := -g -O2 \
            -march=armv5te -mtune=arm946e-s -fomit-frame-pointer \
            -std=gnu99 -fno-builtin -fno-jump-tables \
            -Wall -Wno-unused-parameter -Wno-unused-variable -Wno-unused-function \
            -DARM9 -DNDS_BUILD=1

# nds/include 必须排在 include 之前，用来覆盖 GBA 专用的 defines.h / attributes.h
INCLUDES := -I nds/include -I include -I include/hacks -I . \
            -I $(LIBNDS)/include

CFLAGS   += $(INCLUDES)
ASFLAGS  := -g $(ARCH) $(INCLUDES) -Wa,-Iinclude -Wa,-Iinclude/hacks -Wa,-I.
LDFLAGS  := -specs=ds_arm9.specs -g $(ARCH) -T nds/lds/ds_arm9.mem \
            -Wl,-Map,$(BUILD)/$(TARGET).map
LIBS     := -lnds9

# --- 源码收集 ---------------------------------------------------------------
# 排除 GBA 启动链、GBA 中断、声音引擎、存档硬件驱动
EXCLUDE_C := \
  src/Common/crt0/main.c \
  src/Common/crt0/irq.c \
  src/Common/sound/m4a.c \
  gamedata/sounds/songtable.c \
  src/Core/SaveData/hw-ops/gbaflash.c \
  src/Core/SaveData/hw-ops/gbasram.c \
  src/Core/SaveData/hw-ops/hw.c

SRC_DIRS := src vanilla gamedata gameinfo
# 字体的生成物不在 SRC_DIRS 下
ASM_EXTRA_DIRS := fonts/build

FE6_C := $(shell find $(SRC_DIRS) -name '*.c' -not -path '*/ref/*' 2>/dev/null | sort)
FE6_C := $(filter-out $(EXCLUDE_C),$(FE6_C))

# 生成的文本表（gMsgTable）不在 SRC_DIRS 下，显式加入
FE6_C += texts/msg_generated.c

# 排除 GBA 专用的代码汇编；数据汇编保留
EXCLUDE_S := \
  src/Common/crt0/crt0.S \
  src/Common/crt0/irq-handle.S \
  src/Common/crt0/svc.S \
  src/Common/sound/m4a_1.S \
  src/Common/sound/m4a_hq_mixer.iwram.S \
  gamedata/sounds/AllInstruments/AllInstruments.s \
  gamedata/sounds/vanilla_songs.s

FE6_S_ALL := $(shell find $(SRC_DIRS) $(ASM_EXTRA_DIRS) \( -name '*.s' -o -name '*.S' \) -not -path '*/ref/*' 2>/dev/null | sort)
# demo 音乐不进 ROM（约 3MB，且开场/标题都用不到）
FE6_S_ALL := $(filter-out gamedata/sounds/DemoSounds/%,$(FE6_S_ALL))
FE6_S := $(filter-out $(EXCLUDE_S),$(FE6_S_ALL))

NDS_C := nds/source/nds_main.c nds/source/nds_hw.c nds/source/nds_bios.c \
         nds/source/nds_stub.c nds/source/nds_save_stub.c

OBJ_C := $(patsubst %.c,$(BUILD)/%.o,$(FE6_C) $(NDS_C))
OBJ_S := $(patsubst %.s,$(BUILD)/%.o,$(filter %.s,$(FE6_S))) \
         $(patsubst %.S,$(BUILD)/%.o,$(filter %.S,$(FE6_S)))
OBJS  := $(OBJ_C) $(OBJ_S)

.PHONY: all clean

all: $(TARGET).nds

$(TARGET).nds: $(TARGET).elf
	@echo "[NDS] $@"
	@ndstool -c $@ -9 $< -7 $(LIBNDS)/default.elf -b $(LIBNDS)/icon.bmp "FE6 NDS" "fe6rebuild" >/dev/null

$(TARGET).elf: $(OBJS)
	@echo "[LD ] $@ ($(words $(OBJS)) objects)"
	@$(CC) $(LDFLAGS) -o $@ $(OBJS) -L$(LIBNDS)/lib $(LIBS) > $(BUILD)/link.log 2>&1 || \
	  { echo "--- link errors ---"; head -40 $(BUILD)/link.log; exit 1; }

$(BUILD)/%.o: %.c
	@mkdir -p $(dir $@)
	@$(CC) $(CFLAGS) -c $< -o $@

$(BUILD)/%.o: %.s
	@mkdir -p $(dir $@)
	@$(CC) -x assembler-with-cpp $(ASFLAGS) -c $< -o $@

$(BUILD)/%.o: %.S
	@mkdir -p $(dir $@)
	@$(CC) -x assembler-with-cpp $(ASFLAGS) -c $< -o $@

clean:
	rm -rf $(BUILD) $(TARGET).nds $(TARGET).elf
