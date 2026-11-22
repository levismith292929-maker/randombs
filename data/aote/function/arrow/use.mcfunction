# Revoke immediately so right-click can be used again.
advancement revoke @s only aote:use_arrow


# Aspect of the Arrow: 60 mana for a 50-arrow volley.
execute if score @s aote_dcd matches 1.. run return 0
scoreboard players set @s aote_cost 60
scoreboard players operation @s aote_cost += @s aote_cost_bonus
execute unless score @s aote_mana >= @s aote_cost run tellraw @s [{"text":"Not enough mana! ("},{"score":{"name":"@s","objective":"aote_cost"}},{"text":" required)","color":"aqua"}]
execute unless score @s aote_mana >= @s aote_cost run return 0
scoreboard players operation @s aote_mana -= @s aote_cost
scoreboard players set @s aote_mana_delay 40
scoreboard players set @s aote_mana_regen 0
execute anchored eyes positioned ^ ^-0.1 ^0.5 rotated as @s summon minecraft:marker run function aote:arrow/init
scoreboard players set @s aote_dcd 12

