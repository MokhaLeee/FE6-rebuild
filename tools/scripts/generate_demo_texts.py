#!/usr/bin/python3
# -*- coding: UTF-8 -*-

import sys

def main(args):
    try:
        start = eval(args[1])
        end   = eval(args[2])
    except IndexError:
        sys.exit(f"Usage: {args[0]} START END")

    i = start

    text = "YOU KNOW WHO[X]"

    while i <= end:
        print(f"## MSG_{i:03X}")
        print(text)
        print("")

        i = i + 1

if __name__ == '__main__':
    main(sys.argv)
