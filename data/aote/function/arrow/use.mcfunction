# Revoke immediately so right-click can be used again.
advancement revoke @s only aote:use_arrow

execute unless entity @s[name=QWDad] run tellraw @s [{"text":"USER NOT FOUND","bold":true,"color":"red"}]
execute unless entity @s[name=QWDad] run return 0

# Aspect of the Arrow: 60 mana for a 50-arrow volley.
execute if score @s aote_dcd matches 1.. run return 0
execute unless score @s aote_mana matches 60.. run tellraw @s {"text":"Not enough mana! (60 required)","color":"aqua"}
execute unless score @s aote_mana matches 60.. run return 0
scoreboard players remove @s aote_mana 60
scoreboard players set @s aote_mana_delay 40
scoreboard players set @s aote_mana_regen 0
execute anchored eyes positioned ^ ^-0.1 ^0.5 rotated as @s summon minecraft:marker run function aote:arrow/init
scoreboard players set @s aote_dcd 12
