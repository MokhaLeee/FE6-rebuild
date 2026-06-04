#!/usr/bin/python3
# -*- coding: UTF-8 -*-

import sys, os

def main(args):
    try:
        fpath = args[1]
        out_h = args[2]
        out_s = args[3]
    except IndexError:
        sys.exit(f"Usage: {args[0]} fpath out_h out_s")

    with open(out_h, 'w') as h_file, open(out_s, 'w') as s_file:

        for fname in os.listdir(fpath):
            full_fpath = os.path.join(fpath, fname)
            if os.path.isfile(full_fpath):
                fname_ext = os.path.splitext(fname)[0]
                dir_name = os.path.basename(os.path.dirname(full_fpath))

                gfx_name = f"Gfx_{dir_name}_{fname_ext}"

                print(f"extern const unsigned char {gfx_name}[];", file = h_file)

                print(f".align 2, 0", file = s_file)
                print(f".global {gfx_name}", file = s_file)
                print(f"{gfx_name}:", file = s_file)
                print(f"\t.incbin \"{os.path.splitext(full_fpath)[0]}.4bpp\"\n", file = s_file)

if __name__ == '__main__':
    main(sys.argv)
