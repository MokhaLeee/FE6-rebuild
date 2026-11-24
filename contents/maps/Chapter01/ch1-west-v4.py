#!/usr/bin/env python3
"""Preview a reworked west bank; independent from the linked ROM map."""
import csv
import heapq
import re
import subprocess
from collections import deque
from pathlib import Path

from PIL import Image, ImageChops, ImageDraw, ImageFont

ROOT = Path(__file__).resolve().parents[3]
HERE = Path(__file__).resolve().parent
outputs = [HERE / name for name in ('ch1-west-v5.csv', 'ch1-west-v5.png', 'ch1-west-v5-comparison.png')]
for path in outputs:
    if path.exists():
        raise FileExistsError(path)

def read_cells(text):
    rows = re.findall(r'/\* y =\s*\d+.*?\*/\s*((?:0x[0-9A-Fa-f]+\s*,?\s*)+)', text)
    return [[int(n,16)//4 for n in re.findall(r'0x[0-9A-Fa-f]+',row)] for row in rows]

vanilla = read_cells(subprocess.check_output(['git','show','abab2af:contents/maps/Chapter01/MapTsa_Ch1.c'],cwd=ROOT,text=True))
assert len(vanilla)==21 and all(len(row)==15 for row in vanilla)
# West extension varies by grove and open ground instead of repeating strips.
west = [
    [720,782,720], [782,783,14], [783,70,71], [814,103,102],
    [720,782,70], [782,70,71], [103,102,6], [198,199,6],
    [144,176,55], [144,176,27], [296,434,199], [70,144,176],
    [102,144,176], [782,144,176], [783,144,176], [720,144,176],
    [103,144,176], [70,230,177], [102,103,70], [782,70,71], [783,720,782],
]
cells = [west[y]+vanilla[y] for y in range(21)]
# Preserve the high-value original features, but move the west shoreline in
# one cell where needed for the road to bend rather than hugging the boundary.
patch = {
    7: {3:6,4:6}, 8: {3:54,4:100},
    11: {3:55,4:52,5:118,6:55,7:52,8:118},
    12: {3:123,4:213,5:245,6:244,7:245},
    13: {3:91}, 14: {3:27}, 15: {3:70},
    17: {3:337,4:275}, 18: {4:393},
}
for y,row in patch.items():
    for x,tile in row.items():
        cells[y][x]=tile
assert all(len(row)==18 and all(0<=n<1024 for n in row) for row in cells)
asset=Image.open(ROOT/'contents/tileset/MapAsset01/ConfImg.png').convert('RGB')
def tile(n):
    x,y=n%32*16,n//32*16
    return asset.crop((x,y,x+16,y+16))
def render(matrix):
    image=Image.new('RGB',(len(matrix[0])*16,len(matrix)*16))
    for y,row in enumerate(matrix):
        for x,n in enumerate(row): image.paste(tile(n),(x*16,y*16))
    return image
vanilla_image=Image.open(HERE/'MapTsa_Ch1.png').convert('RGB')
assert ImageChops.difference(render(vanilla),vanilla_image).getbbox() is None

conf=(ROOT/'contents/tileset/MapAsset01/TsaConf.c').read_text()
terrain=[int(v) for v in re.findall(r'\b\d+\b',conf.split('.terrain = {',1)[1].split('}',1)[0])]
assert len(terrain)==1024 and bytes(terrain)==(ROOT/'gamedata/maps/assets/MapAsset01_TsaConf.tsa').read_bytes()[8192:9216]
for x0,y0 in [(7,2),(6,7),(14,17)]:
    for y in range(y0,y0+3):
        for x in range(x0,x0+3): assert cells[y][x]==vanilla[y][x-3]
for x,y in [(15,15),(12,16),(12,19)]: assert terrain[cells[y][x]]==5
assert terrain[cells[4][8]]==11 and terrain[cells[9][7]]==terrain[cells[19][15]]==3
assert all(terrain[n]!=33 for row in cells for n in row)
changes=[(x+3,y,n,cells[y][x+3]) for y,row in enumerate(vanilla) for x,n in enumerate(row) if n!=cells[y][x+3]]
print('Original 315 cells retained:',315-len(changes),'changed:',changes)

# Verify the road centreline is connected in the road-colour masks of the
# actual graphics. This is stronger than terrain reachability but does not
# judge the visual quality of texture transitions.
def road_mask(n):
    return [[r>=240 and g>=232 and b in (8,128,192,216) for r,g,b in [tile(n).getpixel((x,y))]][0] for y in range(16) for x in range(16)]
road_img=[[False]*288 for _ in range(336)]
for y,row in enumerate(cells):
    for x,n in enumerate(row):
        mask=road_mask(n)
        for iy in range(16):
            for ix in range(16): road_img[y*16+iy][x*16+ix]=mask[iy*16+ix]
start=[(x,y) for y in range(7*16,8*16) for x in range(0,2*16) if road_img[y][x]]
target={(x,y) for y in range(18*16,19*16) for x in range(5*16,6*16) if road_img[y][x]}
seen=set(start);q=deque(start)
while q:
    x,y=q.popleft()
    for xx,yy in ((x-1,y),(x+1,y),(x,y-1),(x,y+1)):
        if 0<=xx<288 and 0<=yy<336 and road_img[yy][xx] and (xx,yy) not in seen:
            seen.add((xx,yy));q.append((xx,yy))
assert seen & target, 'Road-colour path is disconnected'
print('Yellow pixel connectivity: west road to original (5,18) road PASS')

names={k:int(v,0) for k,v in re.findall(r'^\s*(TERRAIN_\w+)\s*=\s*(0x[\da-fA-F]+|\d+)',(ROOT/'include/constants/terrains.h').read_text(),re.M)}
move=(ROOT/'gameinfo/misc/terrain_info.c').read_text()
def table(name):
    match=re.search(r'MoveTable_'+name+r'\[TERRAIN_COUNT\]\s*=\s*\{(.*?)\};',move,re.S)
    return {names[k]:int(v) for k,v in re.findall(r'\[(TERRAIN_\w+)\]\s*=\s*(-?\d+)',match.group(1))}
def turns(start,target,cost,mov):
    state=(*start,mov);queue=[(1,state)];best={state:1}
    while queue:
        turn,state=heapq.heappop(queue)
        if best[state]!=turn: continue
        x,y,left=state
        if (x,y)==target:return turn
        nxt=[(turn+1,(x,y,mov))]
        for xx,yy in [(x-1,y),(x+1,y),(x,y-1),(x,y+1)]:
            if 0<=xx<18 and 0<=yy<21:
                d=cost.get(terrain[cells[yy][xx]],-1)
                if 0<d<=left:nxt.append((turn,(xx,yy,left-d)))
        for t,s in nxt:
            if t<best.get(s,9999):best[s]=t;heapq.heappush(queue,(t,s))
    return None
for name,typ,mov,start in [('Roy','BigFootie',6,(5,18)),('Wolt','Footie',5,(5,16)),('Bors','Armor',4,(6,19)),('Alen','Horsie',7,(6,17)),('Marcus','BigHorsie',8,(4,17))]:
    result=[turns(start,target,table(typ),mov) for target in [(7,9),(15,19),(8,4),(1,8)]]
    assert all(result),(name,result)
    print(name,'north village/south village/gate/west route:',*result)
units=[('Roy','BigFootie',(4,20),(5,18)),('Marcus','BigHorsie',(5,20),(4,17)),('Alen','Horsie',(3,20),(6,17)),('Bors','Armor',(4,20),(6,19)),('Wolt','Footie',(5,20),(5,16)),('Lance','Horsie',(13,9),(5,17)),('Archer','Footie',(4,0),(4,2)),('Boss','Fighter',(8,0),(8,6)),('RedA1','Fighter',(5,6),(4,3)),('RedA2','Fighter',(6,10),(7,5)),('RedA3','Fighter',(15,10),(9,5)),('Pillager','Brigand',(10,4),(10,7)),('RedB1','Fighter',(11,4),(11,9)),('RedB2','Fighter',(12,4),(12,9)),('RedB3','Fighter',(10,2),(14,7)),('RedB4','Footie',(10,3),(13,10)),('RedC1','Fighter',(15,7),(10,15)),('RedC2','Fighter',(15,8),(11,14)),('RedC3','Fighter',(6,8),(15,13)),('RedC4','Fighter',(7,8),(11,18))]
for name,typ,start,end in units:
    costs=table(typ)
    for label,(x,y) in [('load',start),('destination',end)]:
        if costs.get(terrain[cells[y][x]],-1)<0: print('EVENT REVIEW:',name,label,(x,y),'terrain',terrain[cells[y][x]])

# Road and shoreline edge diagnostics in the affected west region. Thresholds
# are heuristic and warnings are deliberately not hidden or treated as proofs.
def water_side(n,side):
    pts={'N':[(i,0) for i in range(16)],'E':[(15,i) for i in range(16)],'S':[(i,15) for i in range(16)],'W':[(0,i) for i in range(16)]}[side]
    return [b>180 and b>=g and r<140 for r,g,b in [tile(n).getpixel(p) for p in pts]]
for y in range(7,16):
    for x in range(0,11):
        for dx,dy,sa,sb in [(1,0,'E','W'),(0,1,'S','N')]:
            if x+dx>=18 or y+dy>=21:continue
            a,b=cells[y][x],cells[y+dy][x+dx]
            if terrain[a] not in (21,38) and terrain[b] not in (21,38):continue
            mismatch=sum(p!=q for p,q in zip(water_side(a,sa),water_side(b,sb)))
            if mismatch>3: print('WATER EDGE REVIEW:',(x,y,a),(x+dx,y+dy,b),mismatch)

old=[[int(v) for v in row] for row in csv.reader((HERE/'ch1-map-refined-v3.csv').open())]
canvas=render(cells)
compare=Image.new('RGB',(1180,750),'#edf0e7');draw=ImageDraw.Draw(compare)
font=ImageFont.truetype('/usr/share/fonts/opentype/noto/NotoSansCJK-Regular.ttc',18)
draw.text((10,12),'上一版：直线西路',font=font,fill='#263e32')
draw.text((594,12),'新版：偏折西路与南侧连接',font=font,fill='#263e32')
compare.paste(render(old).resize((576,672),Image.Resampling.NEAREST),(10,55))
compare.paste(canvas.resize((576,672),Image.Resampling.NEAREST),(594,55))
with outputs[0].open('x',encoding='utf-8',newline='') as out:csv.writer(out).writerows(cells)
with outputs[1].open('xb') as out:canvas.resize((864,1008),Image.Resampling.NEAREST).save(out,'PNG')
with outputs[2].open('xb') as out:compare.save(out,'PNG')
print('Created:',*[str(p) for p in outputs])
