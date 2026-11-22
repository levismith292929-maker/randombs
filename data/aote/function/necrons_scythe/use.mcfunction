# Revoke immediately so another right-click can trigger after the cooldown.
advancement revoke @s only aote:use_necrons_scythe

# Only QWDad can use this weapon.
execute unless entity @s[name=QWDad] run tellraw @s [{"text":"USER NOT FOUND","bold":true,"color":"red"}]
execute unless entity @s[name=QWDad] run return 0

# Five-second cooldown (100 ticks).
execute if score @s aote_tcd matches 1.. run return 0
scoreboard players set @s aote_tcd 100

# Clear the temporary hit tag in case any entity was left tagged previously.
tag @e[tag=necron_scythe_hit] remove necron_scythe_hit

# Draw a straight horizontal slash three blocks ahead.
execute anchored eyes run particle minecraft:sweep_attack ^-0.9 ^0 ^3 0 0 0 0 1 normal
execute anchored eyes run particle minecraft:sweep_attack ^-0.6 ^0 ^3 0 0 0 0 1 normal
execute anchored eyes run particle minecraft:sweep_attack ^-0.3 ^0 ^3 0 0 0 0 1 normal
execute anchored eyes run particle minecraft:sweep_attack ^0 ^0 ^3 0 0 0 0 1 normal
execute anchored eyes run particle minecraft:sweep_attack ^0.3 ^0 ^3 0 0 0 0 1 normal
execute anchored eyes run particle minecraft:sweep_attack ^0.6 ^0 ^3 0 0 0 0 1 normal
execute anchored eyes run particle minecraft:sweep_attack ^0.9 ^0 ^3 0 0 0 0 1 normal

# Check several points from the player's eyes to three blocks ahead.
# Each target is processed immediately and tagged, so it can only be hit once.
execute anchored eyes positioned ^ ^ ^0.25 as @e[distance=..1,name=!QWDad,tag=!necron_scythe_hit] run function aote:necrons_scythe/hit
execute anchored eyes positioned ^ ^ ^0.75 as @e[distance=..1,name=!QWDad,tag=!necron_scythe_hit] run function aote:necrons_scythe/hit
execute anchored eyes positioned ^ ^ ^1.25 as @e[distance=..1,name=!QWDad,tag=!necron_scythe_hit] run function aote:necrons_scythe/hit
execute anchored eyes positioned ^ ^ ^1.75 as @e[distance=..1,name=!QWDad,tag=!necron_scythe_hit] run function aote:necrons_scythe/hit
execute anchored eyes positioned ^ ^ ^2.25 as @e[distance=..1,name=!QWDad,tag=!necron_scythe_hit] run function aote:necrons_scythe/hit
execute anchored eyes positioned ^ ^ ^2.75 as @e[distance=..1,name=!QWDad,tag=!necron_scythe_hit] run function aote:necrons_scythe/hit
execute anchored eyes positioned ^ ^ ^3 as @e[distance=..1,name=!QWDad,tag=!necron_scythe_hit] run function aote:necrons_scythe/hit

# Remove temporary tags after the slash finishes.
tag @e[tag=necron_scythe_hit] remove necron_scythe_hit

playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 1 0.8
