# Draw a straight slash from left to right, emitting two particles per tick (about half a tick apart on average).
scoreboard players add @s aote_slash_t 1
execute if score @s aote_slash_t matches 1 run particle minecraft:end_rod ^-0.9 ^ ^ 0 0 0 0 1 normal
execute if score @s aote_slash_t matches 1 run particle minecraft:end_rod ^-0.6 ^ ^ 0 0 0 0 1 normal
execute if score @s aote_slash_t matches 2 run particle minecraft:end_rod ^-0.3 ^ ^ 0 0 0 0 1 normal
execute if score @s aote_slash_t matches 2 run particle minecraft:end_rod ^ ^ ^ 0 0 0 0 1 normal
execute if score @s aote_slash_t matches 3 run particle minecraft:end_rod ^0.3 ^ ^ 0 0 0 0 1 normal
execute if score @s aote_slash_t matches 3 run particle minecraft:end_rod ^0.6 ^ ^ 0 0 0 0 1 normal
execute if score @s aote_slash_t matches 4 run particle minecraft:end_rod ^0.9 ^ ^ 0 0 0 0 1 normal
execute if score @s aote_slash_t matches 5.. run kill @s
