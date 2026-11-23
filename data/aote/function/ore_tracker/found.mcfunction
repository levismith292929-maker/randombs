tag @s add aote_ore_found
summon marker ~ ~ ~ {Tags:["aote_ore_result"]}
execute store result score @s aote_ore_x run data get entity @e[type=marker,tag=aote_ore_result,sort=nearest,limit=1] Pos[0] 1
execute store result score @s aote_ore_y run data get entity @e[type=marker,tag=aote_ore_result,sort=nearest,limit=1] Pos[1] 1
execute store result score @s aote_ore_z run data get entity @e[type=marker,tag=aote_ore_result,sort=nearest,limit=1] Pos[2] 1
kill @e[type=marker,tag=aote_ore_result,sort=nearest,limit=1,distance=..1]