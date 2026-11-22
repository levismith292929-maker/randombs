particle minecraft:soul_fire_flame ~ ~0.5 ~ 0.18 0.45 0.18 0.01 4
particle minecraft:flame ~ ~1.5 ~ 0.18 0.45 0.18 0.01 3
execute positioned ~ ~ ~ run damage @e[dx=0,dy=3,dz=0,type=!marker,type=!item,type=!experience_orb,name=!QWDad] 2 minecraft:magic
scoreboard players remove @s aote_pillar_life 1
execute if score @s aote_pillar_life matches ..0 run kill @s
