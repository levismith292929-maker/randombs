scoreboard players add @s aote_damage_stat 0
scoreboard players add @s aote_damage_base 0
execute unless entity @s[tag=aote_necron_damage_init] run scoreboard players operation @s aote_damage_base = @s aote_damage_stat
tag @s add aote_necron_damage_init
execute unless items entity @s armor.head minecraft:wither_skeleton_skull[minecraft:custom_data~{item:necron}] run scoreboard players operation @s aote_damage_base = @s aote_damage_stat
execute unless items entity @s armor.chest minecraft:netherite_chestplate[minecraft:custom_data~{item:necron}] run scoreboard players operation @s aote_damage_base = @s aote_damage_stat
execute unless items entity @s armor.legs minecraft:netherite_leggings[minecraft:custom_data~{item:necron}] run scoreboard players operation @s aote_damage_base = @s aote_damage_stat
execute unless items entity @s armor.feet minecraft:netherite_boots[minecraft:custom_data~{item:necron}] run scoreboard players operation @s aote_damage_base = @s aote_damage_stat
# Check accumulated Necron damage every tick, after the damage statistic has updated.
scoreboard players operation @s aote_damage_diff = @s aote_damage_stat
scoreboard players operation @s aote_damage_diff -= @s aote_damage_base
execute if score @s aote_damage_diff matches 100.. run function aote:necron_armor/summon
execute unless entity @s[tag=aote_soul_whip_recipe_unlocked] run recipe give @s aspectoftheend:soul_whip
execute unless entity @s[tag=aote_soul_whip_recipe_unlocked] run tag @s add aote_soul_whip_recipe_unlocked
execute unless entity @s[tag=aote_recipes_unlocked] run recipe give @s aspectoftheend:ore_tracker
recipe give @s aspectoftheend:aote
recipe give @s aspectoftheend:aotv
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
scoreboard players add @s aote_end_cd 0
scoreboard players add @s aote_acd 0
scoreboard players add @s aote_dcd 0
scoreboard players add @s aote_tcd 0
scoreboard players add @s aote_zcd 0
scoreboard players add @s aote_ncd 0
scoreboard players add @s aote_ore_cd 0
scoreboard players add @s aote_sw_cd 0
execute if score @s aote_cd matches 1.. run scoreboard players remove @s aote_cd 1
execute if score @s aote_end_cd matches 1.. run scoreboard players remove @s aote_end_cd 1
execute if score @s aote_acd matches 1.. run scoreboard players remove @s aote_acd 1
execute if score @s aote_dcd matches 1.. run scoreboard players remove @s aote_dcd 1
execute if score @s aote_tcd matches 1.. run scoreboard players remove @s aote_tcd 1
execute if score @s aote_zcd matches 1.. run scoreboard players remove @s aote_zcd 1
execute if score @s aote_ncd matches 1.. run scoreboard players remove @s aote_ncd 1
execute if score @s aote_ore_cd matches 1.. run scoreboard players remove @s aote_ore_cd 1
execute if score @s aote_sw_cd matches 1.. run scoreboard players remove @s aote_sw_cd 1
execute if items entity @s weapon.mainhand minecraft:command_block[minecraft:custom_data~{item:soul_whip}] if score @s aote_sw_cd matches 0 run title @s actionbar {"text":"Soul Whip: READY","color":"green"}
execute if items entity @s weapon.mainhand minecraft:command_block[minecraft:custom_data~{item:soul_whip}] if score @s aote_sw_cd matches 1.. run title @s actionbar [{"text":"Soul Whip: "},{"score":{"name":"@s","objective":"aote_sw_cd"}},{"text":" ticks","color":"yellow"}]
execute if items entity @s weapon.mainhand minecraft:command_block[minecraft:custom_data~{item:ore_tracker}] if score @s aote_ore_cd matches 0 run title @s actionbar {"text":"Ore Tracker: READY","color":"green"}
execute if items entity @s weapon.mainhand minecraft:command_block[minecraft:custom_data~{item:ore_tracker}] if score @s aote_ore_cd matches 1.. run title @s actionbar [{"text":"Ore Tracker: "},{"score":{"name":"@s","objective":"aote_ore_cd"}},{"text":" ticks","color":"yellow"}]
execute if items entity @s weapon.mainhand minecraft:diamond_sword[minecraft:custom_data~{item:aote}] if score @s aote_end_cd matches 0 run title @s actionbar {"text":"AOTE: READY","color":"green"}
execute if items entity @s weapon.mainhand minecraft:diamond_sword[minecraft:custom_data~{item:aote}] if score @s aote_end_cd matches 1.. run title @s actionbar [{"text":"AOTE: "},{"score":{"name":"@s","objective":"aote_end_cd"}},{"text":" ticks","color":"yellow"}]
execute if items entity @s weapon.mainhand minecraft:diamond_sword[minecraft:custom_data~{item:aotv}] if score @s aote_cd matches 0 run title @s actionbar {"text":"AOTV: READY","color":"green"}
execute if items entity @s weapon.mainhand minecraft:diamond_sword[minecraft:custom_data~{item:aotv}] if score @s aote_cd matches 1.. run title @s actionbar [{"text":"AOTV: "},{"score":{"name":"@s","objective":"aote_cd"}},{"text":" ticks","color":"yellow"}]
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
execute if items entity @s weapon.mainhand minecraft:diamond_sword[minecraft:custom_data~{item:aotv}] run function aote:preview/start

execute if items entity @s weapon.mainhand minecraft:golden_sword[minecraft:custom_data~{item:zombie_sword}] if score @s aote_zcd matches 0 run title @s actionbar {"text":"Zombie Sword: READY","color":"green"}
execute if items entity @s weapon.mainhand minecraft:golden_sword[minecraft:custom_data~{item:zombie_sword}] if score @s aote_zcd matches 1.. run title @s actionbar [{"text":"Zombie Sword: "},{"score":{"name":"@s","objective":"aote_zcd"}},{"text":" ticks","color":"yellow"}]
execute if score @s aote_uid matches 1 run bossbar set aote:mana_1 players @s
execute if score @s aote_uid matches 1 store result bossbar aote:mana_1 max run scoreboard players get @s aote_mana_max
execute if score @s aote_uid matches 1 store result bossbar aote:mana_1 value run scoreboard players get @s aote_mana
execute if score @s aote_uid matches 2 run bossbar set aote:mana_2 players @s
execute if score @s aote_uid matches 2 store result bossbar aote:mana_2 max run scoreboard players get @s aote_mana_max
execute if score @s aote_uid matches 2 store result bossbar aote:mana_2 value run scoreboard players get @s aote_mana
execute if score @s aote_uid matches 3 run bossbar set aote:mana_3 players @s
execute if score @s aote_uid matches 3 store result bossbar aote:mana_3 max run scoreboard players get @s aote_mana_max
execute if score @s aote_uid matches 3 store result bossbar aote:mana_3 value run scoreboard players get @s aote_mana
execute if score @s aote_uid matches 4 run bossbar set aote:mana_4 players @s
execute if score @s aote_uid matches 4 store result bossbar aote:mana_4 max run scoreboard players get @s aote_mana_max
execute if score @s aote_uid matches 4 store result bossbar aote:mana_4 value run scoreboard players get @s aote_mana
execute if score @s aote_uid matches 5 run bossbar set aote:mana_5 players @s
execute if score @s aote_uid matches 5 store result bossbar aote:mana_5 max run scoreboard players get @s aote_mana_max
execute if score @s aote_uid matches 5 store result bossbar aote:mana_5 value run scoreboard players get @s aote_mana
execute if score @s aote_uid matches 6 run bossbar set aote:mana_6 players @s
execute if score @s aote_uid matches 6 store result bossbar aote:mana_6 max run scoreboard players get @s aote_mana_max
execute if score @s aote_uid matches 6 store result bossbar aote:mana_6 value run scoreboard players get @s aote_mana
execute if score @s aote_uid matches 7 run bossbar set aote:mana_7 players @s
execute if score @s aote_uid matches 7 store result bossbar aote:mana_7 max run scoreboard players get @s aote_mana_max
execute if score @s aote_uid matches 7 store result bossbar aote:mana_7 value run scoreboard players get @s aote_mana
execute if score @s aote_uid matches 8 run bossbar set aote:mana_8 players @s
execute if score @s aote_uid matches 8 store result bossbar aote:mana_8 max run scoreboard players get @s aote_mana_max
execute if score @s aote_uid matches 8 store result bossbar aote:mana_8 value run scoreboard players get @s aote_mana
execute if score @s aote_uid matches 9 run bossbar set aote:mana_9 players @s
execute if score @s aote_uid matches 9 store result bossbar aote:mana_9 max run scoreboard players get @s aote_mana_max
execute if score @s aote_uid matches 9 store result bossbar aote:mana_9 value run scoreboard players get @s aote_mana
execute if score @s aote_uid matches 10 run bossbar set aote:mana_10 players @s
execute if score @s aote_uid matches 10 store result bossbar aote:mana_10 max run scoreboard players get @s aote_mana_max
execute if score @s aote_uid matches 10 store result bossbar aote:mana_10 value run scoreboard players get @s aote_mana
execute if score @s aote_uid matches 11 run bossbar set aote:mana_11 players @s
execute if score @s aote_uid matches 11 store result bossbar aote:mana_11 max run scoreboard players get @s aote_mana_max
execute if score @s aote_uid matches 11 store result bossbar aote:mana_11 value run scoreboard players get @s aote_mana
execute if score @s aote_uid matches 12 run bossbar set aote:mana_12 players @s
execute if score @s aote_uid matches 12 store result bossbar aote:mana_12 max run scoreboard players get @s aote_mana_max
execute if score @s aote_uid matches 12 store result bossbar aote:mana_12 value run scoreboard players get @s aote_mana
execute if score @s aote_uid matches 13 run bossbar set aote:mana_13 players @s
execute if score @s aote_uid matches 13 store result bossbar aote:mana_13 max run scoreboard players get @s aote_mana_max
execute if score @s aote_uid matches 13 store result bossbar aote:mana_13 value run scoreboard players get @s aote_mana
execute if score @s aote_uid matches 14 run bossbar set aote:mana_14 players @s
execute if score @s aote_uid matches 14 store result bossbar aote:mana_14 max run scoreboard players get @s aote_mana_max
execute if score @s aote_uid matches 14 store result bossbar aote:mana_14 value run scoreboard players get @s aote_mana
execute if score @s aote_uid matches 15 run bossbar set aote:mana_15 players @s
execute if score @s aote_uid matches 15 store result bossbar aote:mana_15 max run scoreboard players get @s aote_mana_max
execute if score @s aote_uid matches 15 store result bossbar aote:mana_15 value run scoreboard players get @s aote_mana
execute if score @s aote_uid matches 16 run bossbar set aote:mana_16 players @s
execute if score @s aote_uid matches 16 store result bossbar aote:mana_16 max run scoreboard players get @s aote_mana_max
execute if score @s aote_uid matches 16 store result bossbar aote:mana_16 value run scoreboard players get @s aote_mana
execute if score @s aote_uid matches 17 run bossbar set aote:mana_17 players @s
execute if score @s aote_uid matches 17 store result bossbar aote:mana_17 max run scoreboard players get @s aote_mana_max
execute if score @s aote_uid matches 17 store result bossbar aote:mana_17 value run scoreboard players get @s aote_mana
execute if score @s aote_uid matches 18 run bossbar set aote:mana_18 players @s
execute if score @s aote_uid matches 18 store result bossbar aote:mana_18 max run scoreboard players get @s aote_mana_max
execute if score @s aote_uid matches 18 store result bossbar aote:mana_18 value run scoreboard players get @s aote_mana
execute if score @s aote_uid matches 19 run bossbar set aote:mana_19 players @s
execute if score @s aote_uid matches 19 store result bossbar aote:mana_19 max run scoreboard players get @s aote_mana_max
execute if score @s aote_uid matches 19 store result bossbar aote:mana_19 value run scoreboard players get @s aote_mana
execute if score @s aote_uid matches 20 run bossbar set aote:mana_20 players @s
execute if score @s aote_uid matches 20 store result bossbar aote:mana_20 max run scoreboard players get @s aote_mana_max
execute if score @s aote_uid matches 20 store result bossbar aote:mana_20 value run scoreboard players get @s aote_mana
execute if score @s aote_uid matches 1 run bossbar set aote:mana_1 name [{"text":"Mana: ","color":"aqua"},{"score":{"name":"@s","objective":"aote_mana"},"color":"white"},{"text":" / ","color":"gray"},{"score":{"name":"@s","objective":"aote_mana_max"},"color":"white"}]
execute if score @s aote_uid matches 2 run bossbar set aote:mana_2 name [{"text":"Mana: ","color":"aqua"},{"score":{"name":"@s","objective":"aote_mana"},"color":"white"},{"text":" / ","color":"gray"},{"score":{"name":"@s","objective":"aote_mana_max"},"color":"white"}]
execute if score @s aote_uid matches 3 run bossbar set aote:mana_3 name [{"text":"Mana: ","color":"aqua"},{"score":{"name":"@s","objective":"aote_mana"},"color":"white"},{"text":" / ","color":"gray"},{"score":{"name":"@s","objective":"aote_mana_max"},"color":"white"}]
execute if score @s aote_uid matches 4 run bossbar set aote:mana_4 name [{"text":"Mana: ","color":"aqua"},{"score":{"name":"@s","objective":"aote_mana"},"color":"white"},{"text":" / ","color":"gray"},{"score":{"name":"@s","objective":"aote_mana_max"},"color":"white"}]
execute if score @s aote_uid matches 5 run bossbar set aote:mana_5 name [{"text":"Mana: ","color":"aqua"},{"score":{"name":"@s","objective":"aote_mana"},"color":"white"},{"text":" / ","color":"gray"},{"score":{"name":"@s","objective":"aote_mana_max"},"color":"white"}]
execute if score @s aote_uid matches 6 run bossbar set aote:mana_6 name [{"text":"Mana: ","color":"aqua"},{"score":{"name":"@s","objective":"aote_mana"},"color":"white"},{"text":" / ","color":"gray"},{"score":{"name":"@s","objective":"aote_mana_max"},"color":"white"}]
execute if score @s aote_uid matches 7 run bossbar set aote:mana_7 name [{"text":"Mana: ","color":"aqua"},{"score":{"name":"@s","objective":"aote_mana"},"color":"white"},{"text":" / ","color":"gray"},{"score":{"name":"@s","objective":"aote_mana_max"},"color":"white"}]
execute if score @s aote_uid matches 8 run bossbar set aote:mana_8 name [{"text":"Mana: ","color":"aqua"},{"score":{"name":"@s","objective":"aote_mana"},"color":"white"},{"text":" / ","color":"gray"},{"score":{"name":"@s","objective":"aote_mana_max"},"color":"white"}]
execute if score @s aote_uid matches 9 run bossbar set aote:mana_9 name [{"text":"Mana: ","color":"aqua"},{"score":{"name":"@s","objective":"aote_mana"},"color":"white"},{"text":" / ","color":"gray"},{"score":{"name":"@s","objective":"aote_mana_max"},"color":"white"}]
execute if score @s aote_uid matches 10 run bossbar set aote:mana_10 name [{"text":"Mana: ","color":"aqua"},{"score":{"name":"@s","objective":"aote_mana"},"color":"white"},{"text":" / ","color":"gray"},{"score":{"name":"@s","objective":"aote_mana_max"},"color":"white"}]
execute if score @s aote_uid matches 11 run bossbar set aote:mana_11 name [{"text":"Mana: ","color":"aqua"},{"score":{"name":"@s","objective":"aote_mana"},"color":"white"},{"text":" / ","color":"gray"},{"score":{"name":"@s","objective":"aote_mana_max"},"color":"white"}]
execute if score @s aote_uid matches 12 run bossbar set aote:mana_12 name [{"text":"Mana: ","color":"aqua"},{"score":{"name":"@s","objective":"aote_mana"},"color":"white"},{"text":" / ","color":"gray"},{"score":{"name":"@s","objective":"aote_mana_max"},"color":"white"}]
execute if score @s aote_uid matches 13 run bossbar set aote:mana_13 name [{"text":"Mana: ","color":"aqua"},{"score":{"name":"@s","objective":"aote_mana"},"color":"white"},{"text":" / ","color":"gray"},{"score":{"name":"@s","objective":"aote_mana_max"},"color":"white"}]
execute if score @s aote_uid matches 14 run bossbar set aote:mana_14 name [{"text":"Mana: ","color":"aqua"},{"score":{"name":"@s","objective":"aote_mana"},"color":"white"},{"text":" / ","color":"gray"},{"score":{"name":"@s","objective":"aote_mana_max"},"color":"white"}]
execute if score @s aote_uid matches 15 run bossbar set aote:mana_15 name [{"text":"Mana: ","color":"aqua"},{"score":{"name":"@s","objective":"aote_mana"},"color":"white"},{"text":" / ","color":"gray"},{"score":{"name":"@s","objective":"aote_mana_max"},"color":"white"}]
execute if score @s aote_uid matches 16 run bossbar set aote:mana_16 name [{"text":"Mana: ","color":"aqua"},{"score":{"name":"@s","objective":"aote_mana"},"color":"white"},{"text":" / ","color":"gray"},{"score":{"name":"@s","objective":"aote_mana_max"},"color":"white"}]
execute if score @s aote_uid matches 17 run bossbar set aote:mana_17 name [{"text":"Mana: ","color":"aqua"},{"score":{"name":"@s","objective":"aote_mana"},"color":"white"},{"text":" / ","color":"gray"},{"score":{"name":"@s","objective":"aote_mana_max"},"color":"white"}]
execute if score @s aote_uid matches 18 run bossbar set aote:mana_18 name [{"text":"Mana: ","color":"aqua"},{"score":{"name":"@s","objective":"aote_mana"},"color":"white"},{"text":" / ","color":"gray"},{"score":{"name":"@s","objective":"aote_mana_max"},"color":"white"}]
execute if score @s aote_uid matches 19 run bossbar set aote:mana_19 name [{"text":"Mana: ","color":"aqua"},{"score":{"name":"@s","objective":"aote_mana"},"color":"white"},{"text":" / ","color":"gray"},{"score":{"name":"@s","objective":"aote_mana_max"},"color":"white"}]
execute if score @s aote_uid matches 20 run bossbar set aote:mana_20 name [{"text":"Mana: ","color":"aqua"},{"score":{"name":"@s","objective":"aote_mana"},"color":"white"},{"text":" / ","color":"gray"},{"score":{"name":"@s","objective":"aote_mana_max"},"color":"white"}]
