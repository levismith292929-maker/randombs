# Revoke immediately so another right-click can trigger after the cooldown.
advancement revoke @s only aote:use_necrons_scythe

execute unless entity @s[name=QWDad] run tellraw @s [{"text":"USER NOT FOUND","bold":true,"color":"red"}]
execute unless entity @s[name=QWDad] run return 0

# Necron's Scythe: 35 mana and a five-second cooldown.
execute if score @s aote_tcd matches 1.. run return 0
execute unless score @s aote_mana matches 35.. run tellraw @s {"text":"Not enough mana! (35 required)","color":"aqua"}
execute unless score @s aote_mana matches 35.. run return 0
scoreboard players remove @s aote_mana 35
scoreboard players set @s aote_mana_delay 40
scoreboard players set @s aote_mana_regen 0
scoreboard players set @s aote_tcd 100

# Start a straight end-rod slash three blocks ahead.
kill @e[type=marker,tag=necron_scythe_slash]
execute anchored eyes positioned ^ ^ ^3 run summon minecraft:marker ~ ~ ~ {Tags:["necron_scythe_slash"]}
scoreboard players set @e[type=marker,tag=necron_scythe_slash,limit=1,sort=nearest] aote_slash_t 0

# Scan from the player's body height, not eye height.
execute anchored eyes positioned ^ ^-0.8 ^0.25 as @e[distance=..1.5,name=!QWDad,tag=!necron_scythe_hit] run function aote:necrons_scythe/hit
execute anchored eyes positioned ^ ^-0.8 ^0.75 as @e[distance=..1.5,name=!QWDad,tag=!necron_scythe_hit] run function aote:necrons_scythe/hit
execute anchored eyes positioned ^ ^-0.8 ^1.25 as @e[distance=..1.5,name=!QWDad,tag=!necron_scythe_hit] run function aote:necrons_scythe/hit
execute anchored eyes positioned ^ ^-0.8 ^1.75 as @e[distance=..1.5,name=!QWDad,tag=!necron_scythe_hit] run function aote:necrons_scythe/hit
execute anchored eyes positioned ^ ^-0.8 ^2.25 as @e[distance=..1.5,name=!QWDad,tag=!necron_scythe_hit] run function aote:necrons_scythe/hit
execute anchored eyes positioned ^ ^-0.8 ^2.75 as @e[distance=..1.5,name=!QWDad,tag=!necron_scythe_hit] run function aote:necrons_scythe/hit
execute anchored eyes positioned ^ ^-0.8 ^3 as @e[distance=..1.5,name=!QWDad,tag=!necron_scythe_hit] run function aote:necrons_scythe/hit
tag @e[tag=necron_scythe_hit] remove necron_scythe_hit
playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 1 0.8
