# Revoke immediately so the next right-click can trigger the advancement again.
advancement revoke @s only aote:use_astraea

execute unless entity @s[name=QWDad] run tellraw @s [{"text":"USER NOT FOUND","bold":true,"color":"red"}]
execute unless entity @s[name=QWDad] run return 0

# Wither Shield: 40 mana, 10-second cooldown.
execute if score @s aote_acd matches 1.. run return 0
execute unless score @s aote_mana matches 40.. run tellraw @s {"text":"Not enough mana! (40 required)","color":"aqua"}
execute unless score @s aote_mana matches 40.. run return 0
scoreboard players remove @s aote_mana 40
scoreboard players set @s aote_mana_delay 40
scoreboard players set @s aote_mana_regen 0
function aote:astraea/shield
scoreboard players set @s aote_acd 200
