# Revoke immediately so another right-click can trigger after the cooldown.
advancement revoke @s only aote:use_necrons_scythe


# Necron's Scythe: 35 mana and a 2.5-second cooldown.
execute if score @s aote_tcd matches 1.. run return 0
scoreboard players set @s aote_cost 35
scoreboard players operation @s aote_cost += @s aote_cost_bonus
execute unless score @s aote_mana >= @s aote_cost run tellraw @s [{"text":"Not enough mana! ("},{"score":{"name":"@s","objective":"aote_cost"}},{"text":" required)","color":"aqua"}]
execute unless score @s aote_mana >= @s aote_cost run return 0
scoreboard players operation @s aote_mana -= @s aote_cost
scoreboard players set @s aote_mana_delay 40
scoreboard players set @s aote_mana_regen 0
scoreboard players set @s aote_tcd 50

# Start a straight end-rod slash three blocks ahead.
kill @e[type=marker,tag=necron_scythe_slash]
execute anchored eyes positioned ^ ^ ^3 rotated as @s run summon minecraft:marker ~ ~ ~ {Tags:["necron_scythe_slash"]}
scoreboard players set @e[type=marker,tag=necron_scythe_slash,limit=1,sort=nearest] aote_slash_t 0

# Scan from the player's body height, not eye height.
execute anchored eyes positioned ^ ^-0.8 ^0.25 as @e[distance=..1.5,type=!minecraft:player,tag=!necron_scythe_hit] run function aote:necrons_scythe/hit
execute anchored eyes positioned ^ ^-0.8 ^0.75 as @e[distance=..1.5,type=!minecraft:player,tag=!necron_scythe_hit] run function aote:necrons_scythe/hit
execute anchored eyes positioned ^ ^-0.8 ^1.25 as @e[distance=..1.5,type=!minecraft:player,tag=!necron_scythe_hit] run function aote:necrons_scythe/hit
execute anchored eyes positioned ^ ^-0.8 ^1.75 as @e[distance=..1.5,type=!minecraft:player,tag=!necron_scythe_hit] run function aote:necrons_scythe/hit
execute anchored eyes positioned ^ ^-0.8 ^2.25 as @e[distance=..1.5,type=!minecraft:player,tag=!necron_scythe_hit] run function aote:necrons_scythe/hit
execute anchored eyes positioned ^ ^-0.8 ^2.75 as @e[distance=..1.5,type=!minecraft:player,tag=!necron_scythe_hit] run function aote:necrons_scythe/hit
execute anchored eyes positioned ^ ^-0.8 ^3 as @e[distance=..1.5,type=!minecraft:player,tag=!necron_scythe_hit] run function aote:necrons_scythe/hit
tag @e[tag=necron_scythe_hit] remove necron_scythe_hit
playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 1 0.8

