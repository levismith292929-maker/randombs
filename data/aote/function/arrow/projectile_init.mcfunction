data modify entity @s Rotation set from entity @e[type=minecraft:marker,tag=aote_arrow_volley,distance=..1,sort=nearest,limit=1] Rotation
tag @s add aote_arrow
data modify entity @s NoGravity set value 1b
data modify entity @s Glowing set value 1b
data modify entity @s crit set value 1b
execute if score QWDad aote_damage_bonus matches 15 run data modify entity @s damage set value 6.325d
execute unless score QWDad aote_damage_bonus matches 15 run data modify entity @s damage set value 5.5d
data modify entity @s Fire set value 100s
data modify entity @s pickup set value 0b
data modify entity @s PierceLevel set value 0b
data modify entity @s Owner set from entity @p[distance=..2,sort=nearest,limit=1] UUID
execute store result score #ax aote_t run data get entity @s Pos[0] 1000
execute store result score #ay aote_t run data get entity @s Pos[1] 1000
execute store result score #az aote_t run data get entity @s Pos[2] 1000
execute rotated as @e[type=minecraft:marker,tag=aote_arrow_volley,distance=..1,sort=nearest,limit=1] positioned ^ ^ ^3 summon minecraft:marker run function aote:arrow/read
execute store result entity @s Motion[0] double 0.001 run scoreboard players get #mx aote_t
execute store result entity @s Motion[1] double 0.001 run scoreboard players get #my aote_t
execute store result entity @s Motion[2] double 0.001 run scoreboard players get #mz aote_t
