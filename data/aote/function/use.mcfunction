# Revoke immediately so the next right-click can trigger the advancement again.
advancement revoke @s only aote:use


# Aspect of the End costs 10 mana and has a short cooldown.
execute if score @s aote_cd matches 1.. run return 0
scoreboard players set @s aote_cost 10
scoreboard players operation @s aote_cost += @s aote_cost_bonus
execute unless score @s aote_mana >= @s aote_cost run tellraw @s [{"text":"Not enough mana! ("},{"score":{"name":"@s","objective":"aote_cost"}},{"text":" required)","color":"aqua"}]
execute unless score @s aote_mana >= @s aote_cost run return 0
scoreboard players operation @s aote_mana -= @s aote_cost
scoreboard players set @s aote_mana_delay 40
scoreboard players set @s aote_mana_regen 0
scoreboard players set @s aote_steps 640
execute anchored eyes positioned ^ ^ ^ run function aote:raycast/teleport_step
scoreboard players set @s aote_cd 3

