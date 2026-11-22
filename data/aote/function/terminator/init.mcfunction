# Runs as the new arrow, at its start position, facing the shot direction.
tag @s add aote_home
tag @s add aote_checked
data modify entity @s NoGravity set value 1b
data modify entity @s Glowing set value 1b
data modify entity @s crit set value 1b
data modify entity @s damage set value 5.5d
data modify entity @s Fire set value 100s
data modify entity @s pickup set value 0b
# No piercing: the arrow is removed as soon as it hits something.
data modify entity @s PierceLevel set value 0b
data modify entity @s Owner set from entity @a[name=QWDad,limit=1] UUID

# Launch speed: 3 blocks per tick in the facing direction (same as a fully drawn bow).
execute store result score #ax aote_t run data get entity @s Pos[0] 1000
execute store result score #ay aote_t run data get entity @s Pos[1] 1000
execute store result score #az aote_t run data get entity @s Pos[2] 1000
execute positioned ^ ^ ^3 summon minecraft:marker run function aote:terminator/read
execute store result entity @s Motion[0] double 0.001 run scoreboard players get #mx aote_t
execute store result entity @s Motion[1] double 0.001 run scoreboard players get #my aote_t
execute store result entity @s Motion[2] double 0.001 run scoreboard players get #mz aote_t
