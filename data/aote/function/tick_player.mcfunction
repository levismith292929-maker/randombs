execute unless entity @s[tag=aote_recipes_unlocked] run recipe give @s aspectoftheend:aote
execute unless entity @s[tag=aote_recipes_unlocked] run recipe give @s aspectoftheend:aotd
execute unless entity @s[tag=aote_recipes_unlocked] run recipe give @s aspectoftheend:aspect_arrow
execute unless entity @s[tag=aote_recipes_unlocked] run recipe give @s aspectoftheend:necrons_scythe
execute unless entity @s[tag=aote_recipes_unlocked] run recipe give @s aspectoftheend:hyperion
execute unless entity @s[tag=aote_recipes_unlocked] run recipe give @s aspectoftheend:astraea
execute unless entity @s[tag=aote_recipes_unlocked] run recipe give @s aspectoftheend:necronboot
execute unless entity @s[tag=aote_recipes_unlocked] run recipe give @s aspectoftheend:necronhelm
execute unless entity @s[tag=aote_recipes_unlocked] run recipe give @s aspectoftheend:necronchest
execute unless entity @s[tag=aote_recipes_unlocked] run recipe give @s aspectoftheend:necronlegs
execute unless entity @s[tag=aote_recipes_unlocked] run recipe give @s aspectoftheend:test_pet_1
execute unless entity @s[tag=aote_recipes_unlocked] run recipe give @s aspectoftheend:test_pet_2
execute unless entity @s[tag=aote_recipes_unlocked] run recipe give @s aspectoftheend:test_pet_3
execute unless entity @s[tag=aote_recipes_unlocked] run recipe give @s aspectoftheend:iron_golem_pet
execute unless entity @s[tag=aote_recipes_unlocked] run recipe give @s aspectoftheend:pet_remover
execute unless entity @s[tag=aote_recipes_unlocked] run recipe give @s aspectoftheend:zombie_sword
tag @s add aote_recipes_unlocked
scoreboard players add #aote_uid_counter aote_uid 0
execute unless score @s aote_uid matches 1.. run scoreboard players add #aote_uid_counter aote_uid 1
execute unless score @s aote_uid matches 1.. run scoreboard players operation @s aote_uid = #aote_uid_counter aote_uid
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
execute unless items entity @s weapon.mainhand minecraft:diamond_sword[minecraft:custom_data~{item:aote}] unless items entity @s weapon.mainhand minecraft:repeating_command_block[minecraft:custom_data~{item:hyperion}] unless items entity @s weapon.mainhand minecraft:command_block[minecraft:custom_data~{item:astraea}] unless items entity @s weapon.mainhand minecraft:netherite_sword[minecraft:custom_data~{item:dragon}] unless items entity @s weapon.mainhand minecraft:netherite_sword[minecraft:custom_data~{item:arrow}] unless items entity @s weapon.mainhand minecraft:chain_command_block[minecraft:custom_data~{item:necrons_scythe}] unless items entity @s weapon.mainhand minecraft:golden_sword[minecraft:custom_data~{item:zombie_sword}] run title @s actionbar [{"text":"Mana: ","color":"aqua"},{"score":{"name":"@s","objective":"aote_mana"}},{"text":"/"},{"score":{"name":"@s","objective":"aote_mana_max"}}]
