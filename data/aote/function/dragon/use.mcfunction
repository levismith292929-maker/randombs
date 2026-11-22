advancement revoke @s only aote:use_dragon

execute unless entity @s[name=QWDad] run tellraw @s [{"text":"USER NOT FOUND","bold":true,"color":"red"}]
execute unless entity @s[name=QWDad] run return 0

# Aspect of the Dragon: powerful 80-mana ability.
execute if score @s aote_dcd matches 1.. run return 0
scoreboard players set @s aote_cost 80
scoreboard players operation @s aote_cost += @s aote_cost_bonus
execute unless score @s aote_mana >= @s aote_cost run tellraw @s [{"text":"Not enough mana! ("},{"score":{"name":"@s","objective":"aote_cost"}},{"text":" required)","color":"aqua"}]
execute unless score @s aote_mana >= @s aote_cost run return 0
scoreboard players operation @s aote_mana -= @s aote_cost
scoreboard players set @s aote_mana_delay 40
scoreboard players set @s aote_mana_regen 0
playsound minecraft:entity.ender_dragon.growl player @a ~ ~ ~ 1 1
execute anchored eyes positioned ^ ^-0.1 ^0.3 summon minecraft:marker run function aote:dragon/init
scoreboard players set @s aote_dcd 12
