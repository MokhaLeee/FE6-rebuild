FE6-Rebuild address-mapping:

0x08000000 - crt0 / .text sections
0x08010000 - .rodata.reloc_list: src/Reloc.S
0x08012000 - .data / .rodata: data/rodata in directory: vanilla/src (kernel rodata)
0x08050000 - banimdata / gameinfo data / content data

Note:
1. gamedata should be declared as 