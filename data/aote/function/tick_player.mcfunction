execute unless entity @s[name=QWDad] run return 0
execute unless entity @s[tag=aote_mana_init] run scoreboard players set @s aote_mana 500
execute unless entity @s[tag=aote_mana_init] run scoreboard players set @s aote_mana_max 500
execute unless entity @s[tag=aote_mana_init] run scoreboard players set @s aote_mana_regen_rate 40
execute unless entity @s[tag=aote_mana_init] run scoreboard players set @s aote_cost_bonus 0
execute unless entity @s[tag=aote_mana_init] run scoreboard players set @s aote_damage_bonus 0
execute unless entity @s[tag=aote_mana_init] run scoreboard players set @s aote_pet_type 0
execute unless entity @s[tag=aote_mana_init] run scoreboard players set @s aote_mana_delay 0
execute unless entity @s[tag=aote_mana_init] run scoreboard players set @s aote_mana_regen 0
tag @s add aote_mana_init
scoreboard players add @s aote_mana 0
scoreboard players add @s aote_mana_max 0
scoreboard players add @s aote_mana_regen_rate 0
scoreboard players add @s aote_cost_bonus 0
scoreboard players add @s aote_damage_bonus 0
scoreboard players add @s aote_pet_type 0
scoreboard players add @s aote_mana_delay 0
scoreboard players add @s aote_mana_regen 0
execute unless score @s aote_mana_max matches 1.. run scoreboard players set @s aote_mana_max 500
execute unless score @s aote_mana_regen_rate matches 1.. run scoreboard players set @s aote_mana_regen_rate 40
execute if score @s aote_pet_type matches 0 if score @s aote_mana_regen_rate matches 25 run scoreboard players set @s aote_mana_regen_rate 40
execute if score @s aote_mana_delay matches 1.. run scoreboard players remove @s aote_mana_delay 1
execute if score @s aote_mana_delay matches 0 run scoreboard players add @s aote_mana_regen 1
execute if score @s aote_mana_regen matches 20.. if score @s aote_mana < @s aote_mana_max run scoreboard players operation @s aote_mana += @s aote_mana_regen_rate
execute if score @s aote_mana > @s aote_mana_max run scoreboard players operation @s aote_mana = @s aote_mana_max
execute if score @s aote_mana_regen matches 20.. run scoreboard players set @s aote_mana_regen 0
execute if score @s aote_mana >= @s aote_mana_max run scoreboard players set @s aote_mana_regen 0
bossbar set aote:mana players @s
execute store result bossbar aote:mana max run scoreboard players get @s aote_mana_max
execute store result bossbar aote:mana value run scoreboard players get @s aote_mana
bossbar set aote:mana name {"text":"Mana: ","color":"aqua","extra":[{"score":{"name":"QWDad","objective":"aote_mana"}},{"text":"/"},{"score":{"name":"QWDad","objective":"aote_mana_max"}}]}
scoreboard players add @s aote_cd 0
scoreboard players add @s aote_acd 0
scoreboard players add @s aote_dcd 0
scoreboard players add @s aote_tcd 0
scoreboard players add @s aote_zcd 0
scoreboard players add @s aote_ncd 0
execute if score @s aote_cd matches 1.. run scoreboard players remove @s aote_cd 1
execute if score @s aote_acd matches 1.. run scoreboard players remove @s aote_acd 1
execute if score @s aote_dcd matches 1.. run scoreboard players remove @s aote_dcd 1
execute if score @s aote_tcd matches 1.. run scoreboard players remove @s aote_tcd 1
execute if score @s aote_zcd matches 1.. run scoreboard players remove @s aote_zcd 1
execute if score @s aote_ncd matches 1.. run scoreboard players remove @s aote_ncd 1
execute if items entity @s weapon.mainhand minecraft:diamond_sword[minecraft:custom_data~{item:aote}] if score @s aote_cd matches 0 run title @s actionbar {"text":"AOTE: READY","color":"green"}
execute if items entity @s weapon.mainhand minecraft:diamond_sword[minecraft:custom_data~{item:aote}] if score @s aote_cd matches 1.. run title @s actionbar [{"text":"AOTE: "},{"score":{"name":"@s","objective":"aote_cd"}},{"text":" ticks","color":"yellow"}]
execute if items entity @s weapon.mainhand minecraft:repeating_command_block[minecraft:custom_data~{item:hyperion}] if score @s aote_cd matches 0 run title @s actionbar {"text":"Hyperion: READY","color":"green"}
execute if items entity @s weapon.mainhand minecraft:repeating_command_block[minecraft:custom_data~{item:hyperion}] if score @s aote_cd matches 1.. run title @s actionbar [{"text":"Hyperion: "},{"score":{"name":"@s","objective":"aote_cd"}},{"text":" ticks","color":"yellow"}]
execute if items entity @s weapon.mainhand minecraft:command_block[minecraft:custom_data~{item:astraea}] if score @s aote_acd matches 0 run title @s actionbar {"text":"Astraea: READY","color":"green"}
execute if items entity @s weapon.mainhand minecraft:command_block[minecraft:custom_data~{item:astraea}] if score @s aote_acd matches 1.. run title @s actionbar [{"text":"Astraea: "},{"score":{"name":"@s","objective":"aote_acd"}},{"text":" ticks","color":"yellow"}]
execute if items entity @s weapon.mainhand minecraft:netherite_sword[minecraft:custom_data~{item:dragon}] if score @s aote_dcd matches 0 run title @s actionbar {"text":"AOTD: READY","color":"green"}
execute if items entity @s weapon.mainhand minecraft:netherite_sword[minecraft:custom_data~{item:dragon}] if score @s aote_dcd matches 1.. run title @s actionbar [{"text":"AOTD: "},{"score":{"name":"@s","objective":"aote_dcd"}},{"text":" ticks","color":"yellow"}]
execute if items entity @s weapon.mainhand minecraft:netherite_sword[minecraft:custom_data~{item:arrow}] if score @s aote_dcd matches 0 run title @s actionbar {"text":"AOTA: READY","color":"green"}
execute if items entity @s weapon.mainhand minecraft:netherite_sword[minecraft:custom_data~{item:arrow}] if score @s aote_dcd matches 1.. run title @s actionbar [{"text":"AOTA: "},{"score":{"name":"@s","objective":"aote_dcd"}},{"text":" ticks","color":"yellow"}]
execute if items entity @s weapon.mainhand minecraft:chain_command_block[minecraft:custom_data~{item:necrons_scythe}] if score @s aote_tcd matches 0 run title @s actionbar {"text":"Necron's Scythe: READY","color":"green"}
execute if items entity @s weapon.mainhand minecraft:chain_command_block[minecraft:custom_data~{item:necrons_scythe}] if score @s aote_tcd matches 1.. run title @s actionbar [{"text":"Necron's Scythe: "},{"score":{"name":"@s","objective":"aote_tcd"}},{"text":" ticks","color":"yellow"}]
execute if items entity @s weapon.mainhand minecraft:diamond_sword[minecraft:custom_data~{item:aote}] run function aote:preview/start

execute if items entity @s weapon.mainhand minecraft:golden_sword[minecraft:custom_data~{item:zombie_sword}] if score @s aote_zcd matches 0 run title @s actionbar {"text":"Zombie Sword: READY","color":"green"}
execute if items entity @s weapon.mainhand minecraft:golden_sword[minecraft:custom_data~{item:zombie_sword}] if score @s aote_zcd matches 1.. run title @s actionbar [{"text":"Zombie Sword: "},{"score":{"name":"@s","objective":"aote_zcd"}},{"text":" ticks","color":"yellow"}]
