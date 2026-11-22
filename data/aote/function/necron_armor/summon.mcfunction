advancement revoke @s only aote:necron_call
execute unless entity @s[name=QWDad] run return 0
execute unless items entity @s armor.head minecraft:wither_skeleton_skull[minecraft:custom_data~{item:necron}] run tellraw @s {"text":"You need the full Necron armor set!","color":"red"}
execute unless items entity @s armor.head minecraft:wither_skeleton_skull[minecraft:custom_data~{item:necron}] run return 0
execute unless items entity @s armor.chest minecraft:netherite_chestplate[minecraft:custom_data~{item:necron}] run tellraw @s {"text":"You need the full Necron armor set!","color":"red"}
execute unless items entity @s armor.chest minecraft:netherite_chestplate[minecraft:custom_data~{item:necron}] run return 0
execute unless items entity @s armor.legs minecraft:netherite_leggings[minecraft:custom_data~{item:necron}] run tellraw @s {"text":"You need the full Necron armor set!","color":"red"}
execute unless items entity @s armor.legs minecraft:netherite_leggings[minecraft:custom_data~{item:necron}] run return 0
execute unless items entity @s armor.feet minecraft:netherite_boots[minecraft:custom_data~{item:necron}] run tellraw @s {"text":"You need the full Necron armor set!","color":"red"}
execute unless items entity @s armor.feet minecraft:netherite_boots[minecraft:custom_data~{item:necron}] run return 0
execute if score @s aote_ncd matches 1.. run tellraw @s {"text":"Necron's Call is on cooldown!","color":"yellow"}
execute if score @s aote_ncd matches 1.. run return 0
execute unless score @s aote_mana matches 100.. run tellraw @s {"text":"Not enough mana! (100 required)","color":"aqua"}
execute unless score @s aote_mana matches 100.. run return 0
scoreboard players remove @s aote_mana 100
scoreboard players set @s aote_mana_delay 40
scoreboard players set @s aote_mana_regen 0
scoreboard players set @s aote_ncd 100
team join aote_necron_guard @s
execute at @s positioned ^-1 ^ ^ run summon minecraft:wither_skeleton ~ ~ ~ {Tags:["necron_guard"],PersistenceRequired:1b,CanPickUpLoot:0b,DeathLootTable:"minecraft:empty",drop_chances:{head:0.0f,chest:0.0f,legs:0.0f,feet:0.0f,mainhand:0.0f,offhand:0.0f}}
execute at @s positioned ^1 ^ ^ run summon minecraft:wither_skeleton ~ ~ ~ {Tags:["necron_guard"],PersistenceRequired:1b,CanPickUpLoot:0b,DeathLootTable:"minecraft:empty"}
team join aote_necron_guard @e[type=minecraft:wither_skeleton,tag=necron_guard,distance=..6]
execute as @e[type=minecraft:wither_skeleton,tag=necron_guard,tag=!necron_guard_equipped,distance=..6] run function aote:necron_armor/equip
playsound minecraft:entity.wither_skeleton.ambient player @s ~ ~ ~ 0.8 0.7
tellraw @s {"text":"Your Necron Guards have been summoned!","color":"gold"}