#!/usr/bin/env python3
"""Render and check the chapter 1 *concept* layout, not game metatiles."""
from collections import deque
from pathlib import Path
from PIL import Image, ImageDraw, ImageFont

W, H, S = 18, 21, 36
OUT = Path(__file__).with_name('ch1-map-redesign.png')
grid = [['.' for _ in range(W)] for _ in range(H)]


def fill(kind, points):
    for x, y in points:
        assert 0 <= x < W and 0 <= y < H
        grid[y][x] = kind


def row_points(rows):
    return [(x, y) for y, xs in rows.items() for x in xs]


water = row_points({10: [5, 6], 11: [4, 5, 6, 7], 12: [3, 4, 5, 6, 7], 13: [4, 5, 6, 7], 14: [5, 6]})
mountain = row_points({0: [16, 17], 1: [16, 17], 2: [17], 3: [16, 17], 4: [16, 17], 5: [17], 6: [16, 17], 7: [17], 8: [16, 17], 9: [17], 10: [16, 17], 11: [17], 12: [17], 13: [16, 17], 14: [17]})
forest = [(0,0),(1,0),(0,1),(1,1),(0,2),(2,2),(0,3),(1,3),(0,4),(0,5),(0,7),(0,8),(0,9),(0,11),(0,13),(0,15),(0,17),(1,19),(0,20),(1,20),(2,20),(3,20),(4,3),(4,4),(5,3),(6,4),(3,7),(4,7),(4,8),(5,7),(3,9),(10,10),(11,10),(11,11),(12,11),(11,12),(12,12),(13,12),(12,13),(13,13),(13,4),(14,4),(14,5),(15,5),(14,6),(15,6),(14,8),(15,8),(8,15),(8,16),(9,16),(10,16),(8,17),(10,17)]
fill('~', water)
fill('M', mountain)
fill('F', forest)
west = [(6,18),(5,18),(4,18),(3,18),(3,17),(2,17),(2,16),(2,15),(1,15),(1,14),(1,13),(1,12),(1,11),(2,11),(2,10),(2,9),(2,8),(2,7),(2,6),(3,6),(4,6),(5,6),(6,6),(7,6),(8,6),(8,5),(8,4)]
main = [(6,18),(7,18),(8,18),(9,18),(9,17),(10,17),(10,16),(10,15),(10,14),(10,13),(10,12),(10,11),(9,11),(9,10),(9,9),(9,8),(9,7),(9,6),(9,5),(8,5),(8,4)]
east = [(9,18),(10,18),(11,18),(12,18),(13,18),(14,18),(15,18),(15,19)]
branch = [(9,9),(8,9),(7,9)]
routes = [west, main, east, branch]
for route in routes:
    assert all(abs(a[0]-b[0]) + abs(a[1]-b[1]) == 1 for a, b in zip(route, route[1:]))
    assert not set(route) & set(water + mountain)
    fill('r', route)
markers = [('城',(8,4),'#785b83'),('村',(7,9),'#ac754b'),('村',(15,19),'#ac754b'),('始',(6,18),'#477ca1'),('宝',(16,16),'#8a718a'),('屋',(15,15),'#7c8b75'),('屋',(12,16),'#7c8b75'),('屋',(12,19),'#7c8b75')]
points = [p for _, p, _ in markers]
for c, p, _ in markers:
    fill(c, [p])

# Schematic-only connectivity, assuming everything except water/mountain is walkable.
seen = {(6,18)}
q = deque(seen)
while q:
    x, y = q.popleft()
    for xx, yy in [(x-1,y),(x+1,y),(x,y-1),(x,y+1)]:
        if 0 <= xx < W and 0 <= yy < H and grid[yy][xx] not in '~M' and (xx,yy) not in seen:
            seen.add((xx,yy))
            q.append((xx,yy))
assert all(p in seen for p in points)
positions = [(5,18),(4,17),(6,17),(6,19),(5,16),(7,18),(4,2),(8,6),(4,3),(7,5),(9,5),(11,9),(12,9),(14,7),(13,10),(10,15),(11,14),(15,13),(11,18),(10,7)]
assert all(grid[y][x] not in '~M' for x, y in positions)

OX, OY = 62, 104
img = Image.new('RGB', (1120, 920), '#f3f1e8')
d = ImageDraw.Draw(img)
regular = '/usr/share/fonts/opentype/noto/NotoSansCJK-Regular.ttc'
bold = '/usr/share/fonts/opentype/noto/NotoSansCJK-Bold.ttc'
def f(size): return ImageFont.truetype(regular, size)
def fb(size): return ImageFont.truetype(bold, size)
d.text((46,22),'第 1 章 · 地形重设计',font=fb(28),fill='#233c35')
d.text((48,64),'18 × 21 ｜ 概念布局，不是游戏内地块渲染',font=f(15),fill='#617268')
colors = {'.':'#b9d49a','r':'#b9d49a','~':'#67aab0','F':'#93ba86','M':'#a5a592'}
for y in range(H):
    for x in range(W):
        c = grid[y][x]
        a, b = OX+x*S, OY+y*S
        d.rectangle((a,b,a+S,b+S), fill=colors.get(c,'#b9d49a'), outline='#a8c198')
        if c == '~':
            d.line((a+6,b+13,a+12,b+11,a+19,b+13,a+25,b+11,a+30,b+12), fill='#a8d2ce', width=2)
            d.line((a+4,b+23,a+10,b+21,a+17,b+23,a+24,b+21,a+30,b+22), fill='#84babe')
        if c == 'F':
            d.ellipse((a+4,b+9,a+19,b+25),fill='#477e5e')
            d.ellipse((a+14,b+6,a+30,b+23),fill='#568d66')
            d.ellipse((a+10,b+16,a+25,b+30),fill='#3f7656')
        if c == 'M':
            d.polygon([(a+2,b+30),(a+15,b+7),(a+24,b+24),(a+27,b+17),(a+35,b+30)],fill='#777f6d')
            d.line([(a+2,b+30),(a+15,b+7),(a+23,b+22)],fill='#d5d3bd',width=2)
for x in range(W): d.text((OX+x*S+11,OY-23),str(x),font=f(12),fill='#566b60')
for y in range(H): d.text((OX-31,OY+y*S+9),str(y),font=f(12),fill='#566b60')
def draw_route(route, color, width):
    pts = [(OX+x*S+S//2,OY+y*S+S//2) for x,y in route]
    d.line(pts,fill='#f3f1dc',width=width+4,joint='curve')
    d.line(pts,fill=color,width=width,joint='curve')
for route, color, width in [(west,'#d69654',5),(main,'#d4b059',6),(east,'#d4b059',5),(branch,'#d4b059',5)]:
    draw_route(route, color, width)
for label, (x,y), color in markers:
    a, b = OX+x*S+S//2, OY+y*S+S//2
    d.rounded_rectangle((a-14,b-14,a+14,b+14),radius=6,fill=color,outline='white',width=2)
    d.text((a-8,b-12),label,font=fb(14),fill='white')
r = 770
d.text((r,105),'地形结构',font=fb(22),fill='#233c35')
for i,(c,title,desc) in enumerate([('#67aab0','湖面','缓坡岸线，不再围成直墙'),('#93ba86','林地','零散林团，留出可读的通路'),('#a5a592','山脊','集中东侧，避免全图撒点'),('#b9d49a','平原','留足交战与转向空间')]):
    y=154+i*72
    d.rounded_rectangle((r,y,r+25,y+25),radius=4,fill=c)
    d.text((r+38,y-2),title,font=fb(17),fill='#304a3d')
    d.text((r+38,y+23),desc,font=f(13),fill='#617268')
d.line((r,463,r+290,463),fill='#cbd6c8',width=2)
d.text((r,486),'两条可读的推进方向',font=fb(19),fill='#233c35')
d.line((r,532,r+34,532),fill='#d4b059',width=6)
d.text((r+48,519),'中路：城堡方向的主轴',font=f(15),fill='#304a3d')
d.line((r,572,r+34,572),fill='#d69654',width=6)
d.text((r+48,559),'西路：绕湖侧道',font=f(15),fill='#304a3d')
d.text((r,635),'标记',font=fb(19),fill='#233c35')
for i,txt in enumerate(['始  我方集结区     城  制压点','村  村庄                  屋  房屋','宝  宝箱                  数字为格坐标']):
    d.text((r,672+i*30),txt,font=f(14),fill='#42584a')
d.text((r,801),'图示为地形意向；细节拼接、',font=f(13),fill='#6b7b70')
d.text((r,824),'单位站位和事件须实现时验证。',font=f(13),fill='#6b7b70')
with OUT.open('xb') as output:
    img.save(output, format='PNG')
print('created:', OUT)
print('concept grid: %d x %d; reachable: %d cells' % (W, H, len(seen)))
print('west/main route lengths:', len(west)-1, len(main)-1)
for y, row in enumerate(grid):
    print('%02d %s' % (y, ''.join(row)))
