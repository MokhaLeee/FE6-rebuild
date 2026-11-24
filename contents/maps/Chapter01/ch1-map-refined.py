#!/usr/bin/env python3
"""Generate a review-only proposal with the original Chapter 1 as baseline."""
import csv
import heapq
import re
import subprocess
from pathlib import Path

from PIL import Image, ImageChops, ImageDraw, ImageFont

ROOT = Path(__file__).resolve().parents[3]
HERE = Path(__file__).resolve().parent
CSV = HERE / 'ch1-map-refined-v3.csv'
PNG = HERE / 'ch1-map-refined-v3.png'
COMPARE = HERE / 'ch1-map-refined-v3-compare.png'
for path in (CSV, PNG, COMPARE):
    if path.exists():
        raise FileExistsError('Refusing to overwrite: %s' % path)

# The commit is the original ROM-derived 15x21 map, not the widened version.
source = subprocess.check_output(['git', 'show', 'abab2af:contents/maps/Chapter01/MapTsa_Ch1.c'], cwd=ROOT, text=True)
rows = re.findall(r'/\* y =\s*\d+.*?\*/\s*((?:0x[0-9A-Fa-f]+\s*,?\s*)+)', source)
vanilla = [[int(v, 16) // 4 for v in re.findall(r'0x[0-9A-Fa-f]+', row)] for row in rows]
assert len(vanilla) == 21 and all(len(row) == 15 for row in vanilla)

# First three columns extend the map west. Original 15 columns stay in place
# at x+3 except five cells at the old clipped lake edge (see the patches).
west = [
    [720, 782, 38], [782, 70, 71], [720, 103, 102],
    [782, 70, 71], [720, 103, 102], [782, 70, 71],
    [720, 102, 103], [198, 199, 6], [144, 176, 55],
    [144, 176, 27], [144, 176, 70], [144, 176, 55],
    [144, 176, 123], [144, 176, 123], [230, 231, 91],
    [70, 14, 27], [102, 103, 98], [70, 71, 82],
    [103, 102, 103], [70, 71, 332], [102, 103, 782],
]
cells = [west[y] + vanilla[y] for y in range(21)]
# Close the old cut-off at the left edge of each separate water body.
# The upper shore corner is placed one row lower to preserve its curved texture.
cells[7][3] = 6
cells[7][4] = 6
cells[8][3] = 54
cells[8][4] = 100
# At the lower pond, 55 pairs with 54; the latter replaces a clipped corner.
cells[11][3] = 54
# At y=15 the old water edge and its new west corner meet unchanged.

asset = Image.open(ROOT / 'contents/tileset/MapAsset01/ConfImg.png').convert('RGB')
def render(matrix):
    result = Image.new('RGB', (len(matrix[0])*16, len(matrix)*16))
    for y,row in enumerate(matrix):
        for x,metatile in enumerate(row):
            tx,ty = (metatile%32)*16,(metatile//32)*16
            result.paste(asset.crop((tx,ty,tx+16,ty+16)),(x*16,y*16))
    return result

# Confirm that our exact original metatile/palette rendering is the supplied image.
vanilla_image = Image.open(HERE / 'MapTsa_Ch1.png').convert('RGB')
assert ImageChops.difference(render(vanilla),vanilla_image).getbbox() is None

conf = (ROOT / 'contents/tileset/MapAsset01/TsaConf.c').read_text(encoding='utf-8')
terrain = [int(n) for n in re.findall(r'\b\d+\b', conf.split('.terrain = {',1)[1].split('}',1)[0])]
assert len(terrain)==1024
assert bytes(terrain)==(ROOT/'gamedata/maps/assets/MapAsset01_TsaConf.tsa').read_bytes()[8192:9216]
for x0,y0 in [(7,2),(6,7),(14,17)]:
    for y in range(y0,y0+3):
        for x in range(x0,x0+3):
            assert cells[y][x] == vanilla[y][x-3]
assert terrain[cells[4][8]]==11
assert terrain[cells[9][7]]==3 and terrain[cells[19][15]]==3
for x,y in [(15,15),(12,16),(12,19)]:
    assert terrain[cells[y][x]]==5
assert terrain[cells[16][16]]==1
assert all(terrain[t] != 33 for row in cells for t in row)
changes = [(x+3,y,old,cells[y][x+3]) for y,row in enumerate(vanilla) for x,old in enumerate(row) if old != cells[y][x+3]]
assert changes == [(3,7,57,6),(4,7,54,6),(3,8,213,54),(4,8,22,100),(3,11,56,54)], changes

# Validate the new straight road strip: no adjacent seam mismatch on its
# two-column body or the upper/lower caps; this says nothing about its margins.
def edge(a,b,horizontal):
    pa=render([[a]]); pb=render([[b]])
    sidea=pa.crop((15,0,16,16)) if horizontal else pa.crop((0,15,16,16))
    sideb=pb.crop((0,0,1,16)) if horizontal else pb.crop((0,0,16,1))
    return ImageChops.difference(sidea,sideb).getbbox() is None
for y in range(7,15):
    assert edge(cells[y][0],cells[y][1],True), y
    if y<14:
        assert edge(cells[y][0],cells[y+1][0],False), y
        assert edge(cells[y][1],cells[y+1][1],False), y

names = {k:int(v,0) for k,v in re.findall(r'^\s*(TERRAIN_\w+)\s*=\s*(0x[\da-fA-F]+|\d+)',(ROOT/'include/constants/terrains.h').read_text(),re.M)}
move = (ROOT/'gameinfo/misc/terrain_info.c').read_text()
def table(name):
    m=re.search(r'MoveTable_'+name+r'\[TERRAIN_COUNT\]\s*=\s*\{(.*?)\};',move,re.S)
    return {names[k]:int(v) for k,v in re.findall(r'\[(TERRAIN_\w+)\]\s*=\s*(-?\d+)',m.group(1))}
def turns(start,target,cost,mov):
    s=(*start,mov); queue=[(1,s)]; best={s:1}
    while queue:
        turn,state=heapq.heappop(queue)
        if best[state]!=turn: continue
        x,y,left=state
        if (x,y)==target: return turn
        nxt=[(turn+1,(x,y,mov))]
        for xx,yy in [(x-1,y),(x+1,y),(x,y-1),(x,y+1)]:
            if 0<=xx<18 and 0<=yy<21:
                d=cost.get(terrain[cells[yy][xx]],-1)
                if 0<d<=left: nxt.append((turn,(xx,yy,left-d)))
        for tt,ss in nxt:
            if tt<best.get(ss,9999): best[ss]=tt; heapq.heappush(queue,(tt,ss))
    return None
for name,typ,mov,start in [('Roy','BigFootie',6,(5,18)),('Wolt','Footie',5,(5,16)),('Bors','Armor',4,(6,19)),('Alen','Horsie',7,(6,17)),('Marcus','BigHorsie',8,(4,17))]:
    results=[turns(start,goal,table(typ),mov) for goal in [(7,9),(15,19),(8,4)]]
    assert all(results), (name,results)
    print(name, 'north village/south village/gate:', *results)

units=[('Roy','BigFootie',(4,20),(5,18)),('Marcus','BigHorsie',(5,20),(4,17)),('Alen','Horsie',(3,20),(6,17)),('Bors','Armor',(4,20),(6,19)),('Wolt','Footie',(5,20),(5,16)),('Lance','Horsie',(13,9),(5,17)),('Archer','Footie',(4,0),(4,2)),('Boss','Fighter',(8,0),(8,6)),('RedA1','Fighter',(5,6),(4,3)),('RedA2','Fighter',(6,10),(7,5)),('RedA3','Fighter',(15,10),(9,5)),('Pillager','Brigand',(10,4),(10,7)),('RedB1','Fighter',(11,4),(11,9)),('RedB2','Fighter',(12,4),(12,9)),('RedB3','Fighter',(10,2),(14,7)),('RedB4','Footie',(10,3),(13,10)),('RedC1','Fighter',(15,7),(10,15)),('RedC2','Fighter',(15,8),(11,14)),('RedC3','Fighter',(6,8),(15,13)),('RedC4','Fighter',(7,8),(11,18))]
for name,typ,start,end in units:
    costs=table(typ)
    for label,(x,y) in [('load',start),('destination',end)]:
        if costs.get(terrain[cells[y][x]],-1)<0:
            print('EVENT REVIEW:',name,label,(x,y),'terrain',terrain[cells[y][x]])

current_source=(HERE/'MapTsa_Ch1.c').read_text()
current_rows=re.findall(r'/\* y =\s*\d+.*?\*/\s*((?:0x[0-9A-Fa-f]+\s*,?\s*)+)',current_source)
current=[[int(v,16)//4 for v in re.findall(r'0x[0-9A-Fa-f]+',row)] for row in current_rows]
assert len(current)==21 and all(len(row)==18 for row in current)
canvas=render(cells)
compare=Image.new('RGB',(1396,750),'#edf0e7')
d=ImageDraw.Draw(compare)
f=ImageFont.truetype('/usr/share/fonts/opentype/noto/NotoSansCJK-Regular.ttc',18)
for x,title in [(16,'FE6 原版 15×21'),(506,'当前游戏 18×21'),(1090-4,'新方案 18×21')]: d.text((x,12),title,font=f,fill='#263e32')
compare.paste(vanilla_image.resize((480,672),Image.Resampling.NEAREST),(16,55))
compare.paste(render(current).resize((576,672),Image.Resampling.NEAREST),(506,55))
# Expand the comparison canvas to hold full third panel rather than clipping.
wide=Image.new('RGB',(1678,750),'#edf0e7'); wide.paste(compare,(0,0))
wide.paste(canvas.resize((576,672),Image.Resampling.NEAREST),(1086,55))
with CSV.open('x',encoding='utf-8',newline='') as out: csv.writer(out).writerows(cells)
with PNG.open('xb') as out: canvas.resize((864,1008),Image.Resampling.NEAREST).save(out,'PNG')
with COMPARE.open('xb') as out: wide.save(out,'PNG')
print('Original 315 cells retained:',315-len(changes),'/315; modified:',changes)
print('Road body horizontal/vertical seam equality: pass; output',CSV,PNG,COMPARE)
