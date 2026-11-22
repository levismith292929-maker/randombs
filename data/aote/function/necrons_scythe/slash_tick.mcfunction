# Draw a straight slash from left to right, with a two-tick pause between particles.
scoreboard players add @s aote_slash_t 1
execute if score @s aote_slash_t matches 1 run particle minecraft:end_rod ^-0.9 ^ ^ 0 0 0 0 1 normal
execute if score @s aote_slash_t matches 3 run particle minecraft:end_rod ^-0.6 ^ ^ 0 0 0 0 1 normal
execute if score @s aote_slash_t matches 5 run particle minecraft:end_rod ^-0.3 ^ ^ 0 0 0 0 1 normal
execute if score @s aote_slash_t matches 7 run particle minecraft:end_rod ^ ^ ^ 0 0 0 0 1 normal
execute if score @s aote_slash_t matches 9 run particle minecraft:end_rod ^0.3 ^ ^ 0 0 0 0 1 normal
execute if score @s aote_slash_t matches 11 run particle minecraft:end_rod ^0.6 ^ ^ 0 0 0 0 1 normal
execute if score @s aote_slash_t matches 13 run particle minecraft:end_rod ^0.9 ^ ^ 0 0 0 0 1 normal
execute if score @s aote_slash_t matches 14.. run kill @s
