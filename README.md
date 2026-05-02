# FE6-rebuild

This is a **rebuild** of Fire Emblem: Fūin no Tsurugi (a.k.a. Fire Emblem: The Binding Blade).

## Quick setup

- get a copy of the original rom (still required for every build for now), put it in this folder and name it `fe6-base.gba`.

```bash
# install dependencies
sudo apt update
sudo apt install -y build-essential gcc-arm-none-eabi binutils-arm-none-eabi libpng-dev
python -m pip install requests argparse numpy pillow
./tools/install_agbcc.sh
./build_tools.sh

# make
make all
```

## See also

* [**fe6**](https://github.com/MokhaLeee/fe6/), decomp on fe6.
