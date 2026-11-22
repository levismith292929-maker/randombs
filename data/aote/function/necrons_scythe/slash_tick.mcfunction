# Advance the slash one point per tick, sweeping from left to right in a shallow arc.
scoreboard players add @s aote_slash_t 1
execute if score @s aote_slash_t matches 1 run particle minecraft:end_rod ^-0.9 ^-0.25 ^ 0 0 0 0 1 normal
execute if score @s aote_slash_t matches 2 run particle minecraft:end_rod ^-0.6 ^-0.12 ^ 0 0 0 0 1 normal
execute if score @s aote_slash_t matches 3 run particle minecraft:end_rod ^-0.3 ^0.04 ^ 0 0 0 0 1 normal
execute if score @s aote_slash_t matches 4 run particle minecraft:end_rod ^0 ^0.18 ^ 0 0 0 0 1 normal
execute if score @s aote_slash_t matches 5 run particle minecraft:end_rod ^0.3 ^0.24 ^ 0 0 0 0 1 normal
execute if score @s aote_slash_t matches 6 run particle minecraft:end_rod ^0.6 ^0.16 ^ 0 0 0 0 1 normal
execute if score @s aote_slash_t matches 7 run particle minecraft:end_rod ^0.9 ^-0.02 ^ 0 0 0 0 1 normal
execute if score @s aote_slash_t matches 8.. run kill @s
