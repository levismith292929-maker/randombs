advancement revoke @s only aote:use_zombie_sword
execute if score @s aote_zcd matches 1.. run return 0
execute unless score @s aote_mana matches 50.. run tellraw @s {"text":"Not enough mana! (50 required)","color":"aqua"}
execute unless score @s aote_mana matches 50.. run return 0
scoreboard players remove @s aote_mana 50
scoreboard players set @s aote_mana_delay 40
scoreboard players set @s aote_mana_regen 0
# Restore exactly 1 heart (2 custom Health points). The custom Health pool uses tenths internally.
scoreboard players add @s aote_stat_health 20
execute if score @s aote_stat_health > @s aote_stat_max_health run scoreboard players operation @s aote_stat_health = @s aote_stat_max_health
scoreboard players set @s aote_zcd 20
playsound minecraft:entity.zombie_villager.cure player @s ~ ~ ~ 0.7 1.4

