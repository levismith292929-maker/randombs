advancement revoke @s only aote:use_zombie_sword
execute unless entity @s[name=QWDad] run return 0
execute if score @s aote_zcd matches 1.. run return 0
execute unless score @s aote_mana matches 50.. run tellraw @s {"text":"Not enough mana! (50 required)","color":"aqua"}
execute unless score @s aote_mana matches 50.. run return 0
scoreboard players remove @s aote_mana 50
scoreboard players set @s aote_mana_delay 40
scoreboard players set @s aote_mana_regen 0
execute store result score @s aote_zhealth run data get entity @s Health 10
execute store result score @s aote_zmax run attribute @s minecraft:max_health get 10
scoreboard players add @s aote_zhealth 20
execute if score @s aote_zhealth > @s aote_zmax run scoreboard players operation @s aote_zhealth = @s aote_zmax
execute store result entity @s Health float 0.1 run scoreboard players get @s aote_zhealth
scoreboard players set @s aote_zcd 20
playsound minecraft:entity.zombie_villager.cure player @s ~ ~ ~ 0.7 1.4
