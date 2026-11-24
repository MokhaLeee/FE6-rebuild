#!/usr/bin/env python3
"""Render a review-only Chapter 1 proposal using actual FE6 metatiles.

The output is not linked into the ROM. Existing files are never overwritten.
"""
import csv
import heapq
import re
from collections import Counter
from pathlib import Path

from PIL import Image

ROOT = Path(__file__).resolve().parents[3]
HERE = Path(__file__).resolve().parent
MAP = HERE / 'MapTsa_Ch1.c'
TSA = ROOT / 'contents/tileset/MapAsset01/TsaConf.c'
ASSET = ROOT / 'contents/tileset/MapAsset01/ConfImg.png'
MOVE = ROOT / 'gameinfo/misc/terrain_info.c'
CSV = HERE / 'ch1-map-proposal.csv'
PNG = HERE / 'ch1-map-proposal.png'

assert not CSV.exists() and not PNG.exists(), 'Refusing to overwrite existing files'
source = MAP.read_text(encoding='utf-8')
rows = re.findall(r'/\* y =\s*\d+.*?\*/\s*((?:0x[0-9A-Fa-f]+\s*,?\s*)+)', source)
base = [[int(v, 16) // 4 for v in re.findall(r'0x[0-9A-Fa-f]+', row)] for row in rows]
assert len(base) == 21 and all(len(row) == 18 for row in base)
cells = [row[:] for row in base]

# Western extension: a crooked grass/forest margin, not vertical alternating strips.
west = [
    [720,782,6,38], [720,6,38,6], [782,6,6,45],
    [38,6,38,14], [720,6,6,6], [782,6,38,38],
    [38,6,6,6], [6,38,6,38], [6,6,38,6],
    [720,6,38,6], [782,6,6,38], [6,38,6,38],
    [6,6,38,6], [720,6,38,6], [782,6,6,38],
    [6,38,6,6], [6,6,38,98], [720,6,38,82],
    [782,6,38,103], [6,38,6,332], [6,38,6,782],
]
for y, row in enumerate(west):
    cells[y][:4] = row

# A closed contour using MapAsset01's sea and cliff-edge tiles. The shore is
# impassable; the west route is on the adjacent plains, not the cliff itself.
# Keep village x=6..8,y=7..9 and RedA's loading point (6,10) intact.
patch = {
    10: {2: 6, 3: 57, 4: 56, 5: 38},
    11: {2: 55, 3: 190, 4: 189, 5: 54},
    12: {2: 123, 3: 213, 4: 245, 5: 122},
    13: {2: 91, 3: 213, 4: 245, 5: 90},
    14: {2: 27, 3: 84, 4: 86, 5: 26},
    15: {2: 6, 3: 38, 4: 70, 5: 71},
}
for y, items in patch.items():
    for x, tile in items.items():
        cells[y][x] = tile
# Recover the plain on the eastern side of the old water, using nearby vanilla
# ground motifs; this is an artistic transition to review, not an autotile.
for y, replacements in {
    11: {7: 6, 8: 70, 9: 71, 10: 82},
    12: {6: 103, 7: 102, 8: 6, 9: 38, 10: 70, 11: 71},
    13: {6: 70, 7: 71, 8: 82, 9: 6, 10: 38, 11: 76},
    14: {6: 103, 7: 102, 8: 6, 9: 38},
}.items():
    for x, tile in replacements.items():
        cells[y][x] = tile
# Remove the chest in the proposal only. Its event still exists in the ROM.
cells[16][16] = 6

text = TSA.read_text(encoding='utf-8')
terrain_block = text.split('.terrain = {', 1)[1].split('}', 1)[0]
terrain = [int(n) for n in re.findall(r'\b\d+\b', terrain_block)]
assert len(terrain) == 1024
raw_tsa = (ROOT / 'gamedata/maps/assets/MapAsset01_TsaConf.tsa').read_bytes()
assert bytes(terrain) == raw_tsa[8192:9216], 'Source and preview terrain LUT disagree'
assert terrain[cells[16][16]] == 1
for x0, y0 in [(7,2), (6,7), (14,17)]:
    for y in range(y0, y0 + 3):
        for x in range(x0, x0 + 3):
            assert cells[y][x] == base[y][x], ('building changed', x, y)
for x, y in [(15,15),(12,16),(12,19)]:
    assert cells[y][x] == base[y][x] and terrain[cells[y][x]] == 5
assert terrain[cells[9][7]] == 3 and terrain[cells[19][15]] == 3
assert terrain[cells[4][8]] == 11
assert terrain[cells[10][6]] == 12

names = {}
header = (ROOT / 'include/constants/terrains.h').read_text(encoding='utf-8')
for name, number in re.findall(r'^\s*(TERRAIN_\w+)\s*=\s*(0x[0-9A-Fa-f]+|\d+)', header, re.M):
    names[name] = int(number, 0)
movetext = MOVE.read_text(encoding='utf-8')
def move_table(name):
    match = re.search(r'MoveTable_' + name + r'\[TERRAIN_COUNT\]\s*=\s*\{(.*?)\};', movetext, re.S)
    assert match
    return {names[k]: int(v) for k,v in re.findall(r'\[(TERRAIN_\w+)\]\s*=\s*(-?\d+)', match.group(1))}

def travel(start, target, table, mov):
    # Dijkstra over per-turn budgets: ending a turn is allowed at any position.
    startstate = (start[0], start[1], mov)
    todo = [(1, startstate)]
    best = {startstate: 1}
    while todo:
        turn, state = heapq.heappop(todo)
        if best[state] != turn:
            continue
        x, y, remaining = state
        if (x, y) == target:
            return turn
        nexts = [(turn + 1, (x, y, mov))]
        for nx, ny in [(x-1,y),(x+1,y),(x,y-1),(x,y+1)]:
            if 0 <= nx < 18 and 0 <= ny < 21:
                cost = table.get(terrain[cells[ny][nx]], -1)
                if 0 < cost <= remaining:
                    nexts.append((turn, (nx, ny, remaining-cost)))
        for when, state2 in nexts:
            if when < best.get(state2, 10000):
                best[state2] = when
                heapq.heappush(todo, (when, state2))
    return None

classes = [('Roy','BigFootie',6,(5,18)), ('Wolt','Footie',5,(5,16)), ('Bors','Armor',4,(6,19)), ('Alen','Horsie',7,(6,17)), ('Marcus','BigHorsie',8,(4,17))]
for title, table, mov, start in classes:
    result = [travel(start, goal, move_table(table), mov) for goal in [(7,9),(15,19),(8,4)]]
    assert all(result), (title, result)
    print(title, 'north village/south village/gate minimum turn:', *result)

# Existing event start/end locations are explicitly reported, not silently fixed.
units = [('Roy','BigFootie',(4,20),(5,18)),('Marcus','BigHorsie',(5,20),(4,17)),('Alen','Horsie',(3,20),(6,17)),('Bors','Armor',(4,20),(6,19)),('Wolt','Footie',(5,20),(5,16)),('Lance','Horsie',(13,9),(5,17)),('Archer','Footie',(4,0),(4,2)),('Boss','Fighter',(8,0),(8,6)),('RedA1','Fighter',(5,6),(4,3)),('RedA2','Fighter',(6,10),(7,5)),('RedA3','Fighter',(15,10),(9,5)),('Pillager','Brigand',(10,4),(10,7)),('RedB1','Fighter',(11,4),(11,9)),('RedB2','Fighter',(12,4),(12,9)),('RedB3','Fighter',(10,2),(14,7)),('RedB4','Footie',(10,3),(13,10)),('RedC1','Fighter',(15,7),(10,15)),('RedC2','Fighter',(15,8),(11,14)),('RedC3','Fighter',(6,8),(15,13)),('RedC4','Fighter',(7,8),(11,18))]
for title, table, start, end in units:
    lookup = move_table(table)
    for label, (x,y) in [('load',start),('destination',end)]:
        t = terrain[cells[y][x]]
        if lookup.get(t, -1) < 0:
            print('EVENT REVIEW:', title, label, (x,y), 'metatile', cells[y][x], 'terrain', t)

im = Image.open(ASSET).convert('RGB')
assert im.size == (512,512)
canvas = Image.new('RGB', (18*16,21*16))
for y, row in enumerate(cells):
    for x, tile in enumerate(row):
        tx, ty = (tile % 32)*16, (tile // 32)*16
        canvas.paste(im.crop((tx,ty,tx+16,ty+16)), (x*16,y*16))
canvas = canvas.resize((18*16*3,21*16*3), Image.Resampling.NEAREST)
with CSV.open('x', encoding='utf-8', newline='') as output:
    writer = csv.writer(output)
    writer.writerows(cells)
with PNG.open('xb') as output:
    canvas.save(output, 'PNG')
print('created:', CSV, PNG)
print('changed cells:', sum(a != b for r1,r2 in zip(base,cells) for a,b in zip(r1,r2)))
print('terrain counts:', sorted(Counter(terrain[v] for row in cells for v in row).items()))
