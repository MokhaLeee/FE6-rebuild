# FE6-rebuild

This is a **rebuild** of Fire Emblem: Fūin no Tsurugi (a.k.a. Fire Emblem: The Binding Blade).

## Quick setup

- get a copy of the original rom (still required for every build for now), put it in this folder and name it `fe6-base.gba`.

```bash
# install dependencies
sudo apt update
sudo apt install -y build-essential gcc-arm-none-eabi binutils-arm-none-eabi libpng-dev \
    python3-pyelftools python3-requests python3-numpy python3-pil
./tools/install_agbcc.sh
./build_tools.sh

# make
make all
```

## Features
- Banim
    1. Update banim data struct, not to compress banim script, who holds banim image pointer. Banim script EWRAM buffer is also removed.
    2. Auto generate left OAM to save spaces.
    3. Introduce character unique banim.
- Save
    1. Expanded modular save introduced.
    2. Read/Save operation has been set as 4K aligned.
- Unit struct
    1. Unit support has been moved to BWL table, and Unit::support has been removed.
