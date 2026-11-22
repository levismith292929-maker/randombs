# Revoke immediately so another right-click can trigger after the cooldown.
advancement revoke @s only aote:use_necrons_scythe

# Only QWDad can use this weapon.
execute unless entity @s[name=QWDad] run tellraw @s [{"text":"USER NOT FOUND","bold":true,"color":"red"}]
execute unless entity @s[name=QWDad] run return 0

# Five-second cooldown (100 ticks).
execute if score @s aote_tcd matches 1.. run return 0
scoreboard players set @s aote_tcd 100

# Start a curved end-rod slash three blocks ahead.
kill @e[type=marker,tag=necron_scythe_slash]
execute anchored eyes positioned ^ ^ ^3 run summon minecraft:marker ~ ~ ~ {Tags:["necron_scythe_slash"]}
scoreboard players set @e[type=marker,tag=necron_scythe_slash,limit=1,sort=nearest] aote_slash_t 0

# Scan from the player's body height, not eye height.
# Entity distance is measured from its feet, so scanning at eye height missed zombies.
execute anchored eyes positioned ^ ^-0.8 ^0.25 as @e[distance=..1.5,name=!QWDad,tag=!necron_scythe_hit] run function aote:necrons_scythe/hit
execute anchored eyes positioned ^ ^-0.8 ^0.75 as @e[distance=..1.5,name=!QWDad,tag=!necron_scythe_hit] run function aote:necrons_scythe/hit
execute anchored eyes positioned ^ ^-0.8 ^1.25 as @e[distance=..1.5,name=!QWDad,tag=!necron_scythe_hit] run function aote:necrons_scythe/hit
execute anchored eyes positioned ^ ^-0.8 ^1.75 as @e[distance=..1.5,name=!QWDad,tag=!necron_scythe_hit] run function aote:necrons_scythe/hit
execute anchored eyes positioned ^ ^-0.8 ^2.25 as @e[distance=..1.5,name=!QWDad,tag=!necron_scythe_hit] run function aote:necrons_scythe/hit
execute anchored eyes positioned ^ ^-0.8 ^2.75 as @e[distance=..1.5,name=!QWDad,tag=!necron_scythe_hit] run function aote:necrons_scythe/hit
execute anchored eyes positioned ^ ^-0.8 ^3 as @e[distance=..1.5,name=!QWDad,tag=!necron_scythe_hit] run function aote:necrons_scythe/hit

# Remove temporary tags after the slash finishes.
tag @e[tag=necron_scythe_hit] remove necron_scythe_hit

playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 1 0.8
