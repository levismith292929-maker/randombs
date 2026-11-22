# Revoke immediately so the next right-click can trigger the advancement again.
advancement revoke @s only aote:use_hyperion

execute unless entity @s[name=QWDad] run tellraw @s [{"text":"USER NOT FOUND","bold":true,"color":"red"}]
execute unless entity @s[name=QWDad] run return 0

# Implosion: 50 mana and a short shared cooldown.
execute if score @s aote_cd matches 1.. run return 0
scoreboard players set @s aote_cost 50
scoreboard players operation @s aote_cost += @s aote_cost_bonus
execute unless score @s aote_mana >= @s aote_cost run tellraw @s [{"text":"Not enough mana! ("},{"score":{"name":"@s","objective":"aote_cost"}},{"text":" required)","color":"aqua"}]
execute unless score @s aote_mana >= @s aote_cost run return 0
scoreboard players operation @s aote_mana -= @s aote_cost
scoreboard players set @s aote_mana_delay 40
scoreboard players set @s aote_mana_regen 0
function aote:hyperion/implode
scoreboard players set @s aote_cd 3
