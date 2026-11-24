# External player stats, vanilla armor conversion, and vanilla weapon stats.
scoreboard players add @s aote_stat_health 0
scoreboard players add @s aote_stat_max_health 0
scoreboard players add @s aote_stat_strength 0
scoreboard players add @s aote_stat_armor_strength 0
scoreboard players add @s aote_stat_defense 0
scoreboard players add @s aote_stat_damage_base 0
scoreboard players add @s aote_stat_damage_diff 0
scoreboard players add @s aote_stat_deaths 0
scoreboard players add @s aote_stat_deaths_base 0
scoreboard players add @s aote_stat_reduction 0
scoreboard players add @s aote_stat_remaining 0
scoreboard players add @s aote_stat_effective 0
scoreboard players add @s aote_stat_total_strength 0
scoreboard players add @s aote_stat_health_display 0
scoreboard players add @s aote_stat_max_display 0
scoreboard players add @s aote_stat_damage_display 0
scoreboard players add @s aote_stat_necron_int 0
scoreboard players add @s aote_stat_necron_int_prev 0
scoreboard players add @s aote_stat_necron_int_diff 0
scoreboard players add @s aote_stat_mana_regen_display 0
scoreboard players add @s aote_stat_vanilla_health 0
execute unless entity @s[tag=aote_stats_init] run scoreboard players set @s aote_stat_health 1000
execute unless entity @s[tag=aote_stats_init] run scoreboard players set @s aote_stat_max_health 1000
execute unless entity @s[tag=aote_stats_init] run scoreboard players set @s aote_stat_strength 0
execute unless entity @s[tag=aote_stats_init] run scoreboard players operation @s aote_stat_damage_base = @s aote_damage_stat
execute unless entity @s[tag=aote_stats_init] run scoreboard players operation @s aote_stat_deaths_base = @s aote_stat_deaths
tag @s add aote_stats_init
# Restore custom Health after a death/respawn.
execute if score @s aote_stat_deaths > @s aote_stat_deaths_base run scoreboard players operation @s aote_stat_health = @s aote_stat_max_health
execute if score @s aote_stat_deaths > @s aote_stat_deaths_base run scoreboard players operation @s aote_stat_damage_base = @s aote_damage_stat
scoreboard players operation @s aote_stat_deaths_base = @s aote_stat_deaths
# Apply Dragon armor Health bonuses to the custom Health pool.
scoreboard players add @s aote_stat_armor_health 0
scoreboard players add @s aote_stat_armor_health_prev 0
scoreboard players add @s aote_stat_armor_health_diff 0
scoreboard players set @s aote_stat_armor_health 0
execute if items entity @s armor.head minecraft:player_head[minecraft:custom_data~{item:old_dragon_helmet}] run scoreboard players add @s aote_stat_armor_health 390
execute if items entity @s armor.chest minecraft:leather_chestplate[minecraft:custom_data~{item:old_dragon_chestplate}] run scoreboard players add @s aote_stat_armor_health 640
execute if items entity @s armor.legs minecraft:leather_leggings[minecraft:custom_data~{item:old_dragon_leggings}] run scoreboard players add @s aote_stat_armor_health 560
execute if items entity @s armor.feet minecraft:leather_boots[minecraft:custom_data~{item:old_dragon_boots}] run scoreboard players add @s aote_stat_armor_health 340
execute if items entity @s armor.head minecraft:player_head[minecraft:custom_data~{item:protector_dragon_helmet}] run scoreboard players add @s aote_stat_armor_health 300
execute if items entity @s armor.chest minecraft:leather_chestplate[minecraft:custom_data~{item:protector_dragon_chestplate}] run scoreboard players add @s aote_stat_armor_health 510
execute if items entity @s armor.legs minecraft:leather_leggings[minecraft:custom_data~{item:protector_dragon_leggings}] run scoreboard players add @s aote_stat_armor_health 430
execute if items entity @s armor.feet minecraft:leather_boots[minecraft:custom_data~{item:protector_dragon_boots}] run scoreboard players add @s aote_stat_armor_health 260
execute if items entity @s armor.head minecraft:player_head[minecraft:custom_data~{item:wise_dragon_helmet}] run scoreboard players add @s aote_stat_armor_health 300
execute if items entity @s armor.chest minecraft:leather_chestplate[minecraft:custom_data~{item:wise_dragon_chestplate}] run scoreboard players add @s aote_stat_armor_health 510
execute if items entity @s armor.legs minecraft:leather_leggings[minecraft:custom_data~{item:wise_dragon_leggings}] run scoreboard players add @s aote_stat_armor_health 430
execute if items entity @s armor.feet minecraft:leather_boots[minecraft:custom_data~{item:wise_dragon_boots}] run scoreboard players add @s aote_stat_armor_health 260
execute if items entity @s armor.head minecraft:player_head[minecraft:custom_data~{item:young_dragon_helmet}] run scoreboard players add @s aote_stat_armor_health 300
execute if items entity @s armor.chest minecraft:leather_chestplate[minecraft:custom_data~{item:young_dragon_chestplate}] run scoreboard players add @s aote_stat_armor_health 510
execute if items entity @s armor.legs minecraft:leather_leggings[minecraft:custom_data~{item:young_dragon_leggings}] run scoreboard players add @s aote_stat_armor_health 430
execute if items entity @s armor.feet minecraft:leather_boots[minecraft:custom_data~{item:young_dragon_boots}] run scoreboard players add @s aote_stat_armor_health 260
execute if items entity @s armor.head minecraft:player_head[minecraft:custom_data~{item:strong_dragon_helmet}] run scoreboard players add @s aote_stat_armor_health 300
execute if items entity @s armor.chest minecraft:leather_chestplate[minecraft:custom_data~{item:strong_dragon_chestplate}] run scoreboard players add @s aote_stat_armor_health 510
execute if items entity @s armor.legs minecraft:leather_leggings[minecraft:custom_data~{item:strong_dragon_leggings}] run scoreboard players add @s aote_stat_armor_health 430
execute if items entity @s armor.feet minecraft:leather_boots[minecraft:custom_data~{item:strong_dragon_boots}] run scoreboard players add @s aote_stat_armor_health 260
execute if items entity @s armor.head minecraft:player_head[minecraft:custom_data~{item:unstable_dragon_helmet}] run scoreboard players add @s aote_stat_armor_health 300
execute if items entity @s armor.chest minecraft:leather_chestplate[minecraft:custom_data~{item:unstable_dragon_chestplate}] run scoreboard players add @s aote_stat_armor_health 510
execute if items entity @s armor.legs minecraft:leather_leggings[minecraft:custom_data~{item:unstable_dragon_leggings}] run scoreboard players add @s aote_stat_armor_health 430
execute if items entity @s armor.feet minecraft:leather_boots[minecraft:custom_data~{item:unstable_dragon_boots}] run scoreboard players add @s aote_stat_armor_health 260
execute if items entity @s armor.head minecraft:player_head[minecraft:custom_data~{item:superior_dragon_helmet}] run scoreboard players add @s aote_stat_armor_health 390
execute if items entity @s armor.chest minecraft:leather_chestplate[minecraft:custom_data~{item:superior_dragon_chestplate}] run scoreboard players add @s aote_stat_armor_health 640
execute if items entity @s armor.legs minecraft:leather_leggings[minecraft:custom_data~{item:superior_dragon_leggings}] run scoreboard players add @s aote_stat_armor_health 560
execute if items entity @s armor.feet minecraft:leather_boots[minecraft:custom_data~{item:superior_dragon_boots}] run scoreboard players add @s aote_stat_armor_health 340
scoreboard players operation @s aote_stat_armor_health_diff = @s aote_stat_armor_health
scoreboard players operation @s aote_stat_armor_health_diff -= @s aote_stat_armor_health_prev
scoreboard players operation @s aote_stat_max_health += @s aote_stat_armor_health_diff
scoreboard players operation @s aote_stat_health += @s aote_stat_armor_health_diff
scoreboard players operation @s aote_stat_armor_health_prev = @s aote_stat_armor_health
execute if score @s aote_stat_health > @s aote_stat_max_health run scoreboard players operation @s aote_stat_health = @s aote_stat_max_health
execute if score @s aote_stat_health matches ..0 run scoreboard players set @s aote_stat_health 1
# Recalculate Defense and armor Strength from equipped armor.
execute if items entity @s armor.head minecraft:leather_helmet unless items entity @s armor.head minecraft:leather_helmet[minecraft:custom_data~{aote_armor_lore:"1b"}] run item modify entity @s armor.head aote:armor/leather_helmet
execute if items entity @s armor.head minecraft:copper_helmet unless items entity @s armor.head minecraft:copper_helmet[minecraft:custom_data~{aote_armor_lore:"1b"}] run item modify entity @s armor.head aote:armor/copper_helmet
execute if items entity @s armor.head minecraft:golden_helmet unless items entity @s armor.head minecraft:golden_helmet[minecraft:custom_data~{aote_armor_lore:"1b"}] run item modify entity @s armor.head aote:armor/golden_helmet
execute if items entity @s armor.head minecraft:chainmail_helmet unless items entity @s armor.head minecraft:chainmail_helmet[minecraft:custom_data~{aote_armor_lore:"1b"}] run item modify entity @s armor.head aote:armor/chainmail_helmet
execute if items entity @s armor.head minecraft:iron_helmet unless items entity @s armor.head minecraft:iron_helmet[minecraft:custom_data~{aote_armor_lore:"1b"}] run item modify entity @s armor.head aote:armor/iron_helmet
execute if items entity @s armor.head minecraft:diamond_helmet unless items entity @s armor.head minecraft:diamond_helmet[minecraft:custom_data~{aote_armor_lore:"1b"}] run item modify entity @s armor.head aote:armor/diamond_helmet
execute if items entity @s armor.head minecraft:netherite_helmet unless items entity @s armor.head minecraft:netherite_helmet[minecraft:custom_data~{aote_armor_lore:"1b"}] run item modify entity @s armor.head aote:armor/netherite_helmet
execute if items entity @s armor.chest minecraft:leather_chestplate unless items entity @s armor.chest minecraft:leather_chestplate[minecraft:custom_data~{aote_armor_lore:"1b"}] run item modify entity @s armor.chest aote:armor/leather_chestplate
execute if items entity @s armor.chest minecraft:copper_chestplate unless items entity @s armor.chest minecraft:copper_chestplate[minecraft:custom_data~{aote_armor_lore:"1b"}] run item modify entity @s armor.chest aote:armor/copper_chestplate
execute if items entity @s armor.chest minecraft:golden_chestplate unless items entity @s armor.chest minecraft:golden_chestplate[minecraft:custom_data~{aote_armor_lore:"1b"}] run item modify entity @s armor.chest aote:armor/golden_chestplate
execute if items entity @s armor.chest minecraft:chainmail_chestplate unless items entity @s armor.chest minecraft:chainmail_chestplate[minecraft:custom_data~{aote_armor_lore:"1b"}] run item modify entity @s armor.chest aote:armor/chainmail_chestplate
execute if items entity @s armor.chest minecraft:iron_chestplate unless items entity @s armor.chest minecraft:iron_chestplate[minecraft:custom_data~{aote_armor_lore:"1b"}] run item modify entity @s armor.chest aote:armor/iron_chestplate
execute if items entity @s armor.chest minecraft:diamond_chestplate unless items entity @s armor.chest minecraft:diamond_chestplate[minecraft:custom_data~{aote_armor_lore:"1b"}] run item modify entity @s armor.chest aote:armor/diamond_chestplate
execute if items entity @s armor.chest minecraft:netherite_chestplate unless items entity @s armor.chest minecraft:netherite_chestplate[minecraft:custom_data~{aote_armor_lore:"1b"}] run item modify entity @s armor.chest aote:armor/netherite_chestplate
execute if items entity @s armor.legs minecraft:leather_leggings unless items entity @s armor.legs minecraft:leather_leggings[minecraft:custom_data~{aote_armor_lore:"1b"}] run item modify entity @s armor.legs aote:armor/leather_leggings
execute if items entity @s armor.legs minecraft:copper_leggings unless items entity @s armor.legs minecraft:copper_leggings[minecraft:custom_data~{aote_armor_lore:"1b"}] run item modify entity @s armor.legs aote:armor/copper_leggings
execute if items entity @s armor.legs minecraft:golden_leggings unless items entity @s armor.legs minecraft:golden_leggings[minecraft:custom_data~{aote_armor_lore:"1b"}] run item modify entity @s armor.legs aote:armor/golden_leggings
execute if items entity @s armor.legs minecraft:chainmail_leggings unless items entity @s armor.legs minecraft:chainmail_leggings[minecraft:custom_data~{aote_armor_lore:"1b"}] run item modify entity @s armor.legs aote:armor/chainmail_leggings
execute if items entity @s armor.legs minecraft:iron_leggings unless items entity @s armor.legs minecraft:iron_leggings[minecraft:custom_data~{aote_armor_lore:"1b"}] run item modify entity @s armor.legs aote:armor/iron_leggings
execute if items entity @s armor.legs minecraft:diamond_leggings unless items entity @s armor.legs minecraft:diamond_leggings[minecraft:custom_data~{aote_armor_lore:"1b"}] run item modify entity @s armor.legs aote:armor/diamond_leggings
execute if items entity @s armor.legs minecraft:netherite_leggings unless items entity @s armor.legs minecraft:netherite_leggings[minecraft:custom_data~{aote_armor_lore:"1b"}] run item modify entity @s armor.legs aote:armor/netherite_leggings
execute if items entity @s armor.feet minecraft:leather_boots unless items entity @s armor.feet minecraft:leather_boots[minecraft:custom_data~{aote_armor_lore:"1b"}] run item modify entity @s armor.feet aote:armor/leather_boots
execute if items entity @s armor.feet minecraft:copper_boots unless items entity @s armor.feet minecraft:copper_boots[minecraft:custom_data~{aote_armor_lore:"1b"}] run item modify entity @s armor.feet aote:armor/copper_boots
execute if items entity @s armor.feet minecraft:golden_boots unless items entity @s armor.feet minecraft:golden_boots[minecraft:custom_data~{aote_armor_lore:"1b"}] run item modify entity @s armor.feet aote:armor/golden_boots
execute if items entity @s armor.feet minecraft:chainmail_boots unless items entity @s armor.feet minecraft:chainmail_boots[minecraft:custom_data~{aote_armor_lore:"1b"}] run item modify entity @s armor.feet aote:armor/chainmail_boots
execute if items entity @s armor.feet minecraft:iron_boots unless items entity @s armor.feet minecraft:iron_boots[minecraft:custom_data~{aote_armor_lore:"1b"}] run item modify entity @s armor.feet aote:armor/iron_boots
execute if items entity @s armor.feet minecraft:diamond_boots unless items entity @s armor.feet minecraft:diamond_boots[minecraft:custom_data~{aote_armor_lore:"1b"}] run item modify entity @s armor.feet aote:armor/diamond_boots
execute if items entity @s armor.feet minecraft:netherite_boots unless items entity @s armor.feet minecraft:netherite_boots[minecraft:custom_data~{aote_armor_lore:"1b"}] run item modify entity @s armor.feet aote:armor/netherite_boots
scoreboard players set @s aote_stat_defense 0
scoreboard players set @s aote_stat_armor_strength 0
scoreboard players set @s aote_stat_necron_int 0
execute if items entity @s armor.head #aote:armor_head unless items entity @s armor.head #aote:armor_head[minecraft:custom_data~{aote_armor_stripped:"1b"}] unless items entity @s armor.head minecraft:wither_skeleton_skull[minecraft:custom_data~{item:necron}] run item modify entity @s armor.head aote:strip_armor_attributes
execute if items entity @s armor.chest #aote:armor_chest unless items entity @s armor.chest #aote:armor_chest[minecraft:custom_data~{aote_armor_stripped:"1b"}] unless items entity @s armor.chest minecraft:netherite_chestplate[minecraft:custom_data~{item:necron}] run item modify entity @s armor.chest aote:strip_armor_attributes
execute if items entity @s armor.legs #aote:armor_legs unless items entity @s armor.legs #aote:armor_legs[minecraft:custom_data~{aote_armor_stripped:"1b"}] unless items entity @s armor.legs minecraft:netherite_leggings[minecraft:custom_data~{item:necron}] run item modify entity @s armor.legs aote:strip_armor_attributes
execute if items entity @s armor.feet #aote:armor_feet unless items entity @s armor.feet #aote:armor_feet[minecraft:custom_data~{aote_armor_stripped:"1b"}] unless items entity @s armor.feet minecraft:netherite_boots[minecraft:custom_data~{item:necron}] run item modify entity @s armor.feet aote:strip_armor_attributes
execute if items entity @s armor.head minecraft:leather_helmet run scoreboard players add @s aote_stat_defense 5
execute if items entity @s armor.head minecraft:copper_helmet run scoreboard players add @s aote_stat_defense 9
execute if items entity @s armor.head minecraft:golden_helmet run scoreboard players add @s aote_stat_defense 10
execute if items entity @s armor.head minecraft:chainmail_helmet run scoreboard players add @s aote_stat_defense 11
execute if items entity @s armor.head minecraft:chainmail_helmet run scoreboard players add @s aote_stat_armor_strength 4
execute if items entity @s armor.head minecraft:iron_helmet run scoreboard players add @s aote_stat_defense 13
execute if items entity @s armor.head minecraft:diamond_helmet unless items entity @s armor.head minecraft:diamond_helmet[minecraft:custom_data~{dragon_armor:"1b"}] run scoreboard players add @s aote_stat_defense 17
execute if items entity @s armor.head minecraft:netherite_helmet unless items entity @s armor.head minecraft:wither_skeleton_skull[minecraft:custom_data~{item:necron}] run scoreboard players add @s aote_stat_defense 23
execute if items entity @s armor.chest minecraft:leather_chestplate unless items entity @s armor.chest minecraft:leather_chestplate[minecraft:custom_data~{dragon_armor:"1b"}] run scoreboard players add @s aote_stat_defense 10
execute if items entity @s armor.chest minecraft:copper_chestplate run scoreboard players add @s aote_stat_defense 17
execute if items entity @s armor.chest minecraft:golden_chestplate run scoreboard players add @s aote_stat_defense 18
execute if items entity @s armor.chest minecraft:chainmail_chestplate run scoreboard players add @s aote_stat_defense 19
execute if items entity @s armor.chest minecraft:chainmail_chestplate run scoreboard players add @s aote_stat_armor_strength 8
execute if items entity @s armor.chest minecraft:iron_chestplate run scoreboard players add @s aote_stat_defense 21
execute if items entity @s armor.chest minecraft:diamond_chestplate unless items entity @s armor.chest minecraft:diamond_chestplate[minecraft:custom_data~{dragon_armor:"1b"}] run scoreboard players add @s aote_stat_defense 30
execute if items entity @s armor.chest minecraft:netherite_chestplate unless items entity @s armor.chest minecraft:netherite_chestplate[minecraft:custom_data~{item:necron}] run scoreboard players add @s aote_stat_defense 36
execute if items entity @s armor.legs minecraft:leather_leggings unless items entity @s armor.legs minecraft:leather_leggings[minecraft:custom_data~{dragon_armor:"1b"}] run scoreboard players add @s aote_stat_defense 7
execute if items entity @s armor.legs minecraft:copper_leggings run scoreboard players add @s aote_stat_defense 14
execute if items entity @s armor.legs minecraft:golden_leggings run scoreboard players add @s aote_stat_defense 15
execute if items entity @s armor.legs minecraft:chainmail_leggings run scoreboard players add @s aote_stat_defense 16
execute if items entity @s armor.legs minecraft:chainmail_leggings run scoreboard players add @s aote_stat_armor_strength 6
execute if items entity @s armor.legs minecraft:iron_leggings run scoreboard players add @s aote_stat_defense 18
execute if items entity @s armor.legs minecraft:diamond_leggings unless items entity @s armor.legs minecraft:diamond_leggings[minecraft:custom_data~{dragon_armor:"1b"}] run scoreboard players add @s aote_stat_defense 24
execute if items entity @s armor.legs minecraft:netherite_leggings unless items entity @s armor.legs minecraft:netherite_leggings[minecraft:custom_data~{item:necron}] run scoreboard players add @s aote_stat_defense 30
execute if items entity @s armor.feet minecraft:leather_boots unless items entity @s armor.feet minecraft:leather_boots[minecraft:custom_data~{dragon_armor:"1b"}] run scoreboard players add @s aote_stat_defense 3
execute if items entity @s armor.feet minecraft:copper_boots run scoreboard players add @s aote_stat_defense 6
execute if items entity @s armor.feet minecraft:golden_boots run scoreboard players add @s aote_stat_defense 7
execute if items entity @s armor.feet minecraft:chainmail_boots run scoreboard players add @s aote_stat_defense 8
execute if items entity @s armor.feet minecraft:chainmail_boots run scoreboard players add @s aote_stat_armor_strength 3
execute if items entity @s armor.feet minecraft:iron_boots run scoreboard players add @s aote_stat_defense 10
execute if items entity @s armor.feet minecraft:diamond_boots unless items entity @s armor.feet minecraft:diamond_boots[minecraft:custom_data~{dragon_armor:"1b"}] run scoreboard players add @s aote_stat_defense 13
execute if items entity @s armor.feet minecraft:netherite_boots unless items entity @s armor.feet minecraft:netherite_boots[minecraft:custom_data~{item:necron}] run scoreboard players add @s aote_stat_defense 19
# Dragon armor stats.
execute if items entity @s armor.head minecraft:player_head[minecraft:custom_data~{item:old_dragon_helmet}] run scoreboard players add @s aote_stat_defense 110
execute if items entity @s armor.chest minecraft:leather_chestplate[minecraft:custom_data~{item:old_dragon_chestplate}] run scoreboard players add @s aote_stat_defense 160
execute if items entity @s armor.legs minecraft:leather_leggings[minecraft:custom_data~{item:old_dragon_leggings}] run scoreboard players add @s aote_stat_defense 140
execute if items entity @s armor.feet minecraft:leather_boots[minecraft:custom_data~{item:old_dragon_boots}] run scoreboard players add @s aote_stat_defense 90
execute if items entity @s armor.head minecraft:player_head[minecraft:custom_data~{item:protector_dragon_helmet}] run scoreboard players add @s aote_stat_defense 135
execute if items entity @s armor.chest minecraft:leather_chestplate[minecraft:custom_data~{item:protector_dragon_chestplate}] run scoreboard players add @s aote_stat_defense 185
execute if items entity @s armor.legs minecraft:leather_leggings[minecraft:custom_data~{item:protector_dragon_leggings}] run scoreboard players add @s aote_stat_defense 165
execute if items entity @s armor.feet minecraft:leather_boots[minecraft:custom_data~{item:protector_dragon_boots}] run scoreboard players add @s aote_stat_defense 115
execute if items entity @s armor.head minecraft:player_head[minecraft:custom_data~{item:wise_dragon_helmet}] run scoreboard players add @s aote_stat_defense 110
execute if items entity @s armor.head minecraft:player_head[minecraft:custom_data~{item:wise_dragon_helmet}] run scoreboard players add @s aote_stat_necron_int 125
execute if items entity @s armor.chest minecraft:leather_chestplate[minecraft:custom_data~{item:wise_dragon_chestplate}] run scoreboard players add @s aote_stat_defense 160
execute if items entity @s armor.chest minecraft:leather_chestplate[minecraft:custom_data~{item:wise_dragon_chestplate}] run scoreboard players add @s aote_stat_necron_int 75
execute if items entity @s armor.legs minecraft:leather_leggings[minecraft:custom_data~{item:wise_dragon_leggings}] run scoreboard players add @s aote_stat_defense 140
execute if items entity @s armor.legs minecraft:leather_leggings[minecraft:custom_data~{item:wise_dragon_leggings}] run scoreboard players add @s aote_stat_necron_int 75
execute if items entity @s armor.feet minecraft:leather_boots[minecraft:custom_data~{item:wise_dragon_boots}] run scoreboard players add @s aote_stat_defense 90
execute if items entity @s armor.feet minecraft:leather_boots[minecraft:custom_data~{item:wise_dragon_boots}] run scoreboard players add @s aote_stat_necron_int 75
execute if items entity @s armor.head minecraft:player_head[minecraft:custom_data~{item:young_dragon_helmet}] run scoreboard players add @s aote_stat_defense 110
execute if items entity @s armor.chest minecraft:leather_chestplate[minecraft:custom_data~{item:young_dragon_chestplate}] run scoreboard players add @s aote_stat_defense 160
execute if items entity @s armor.legs minecraft:leather_leggings[minecraft:custom_data~{item:young_dragon_leggings}] run scoreboard players add @s aote_stat_defense 140
execute if items entity @s armor.feet minecraft:leather_boots[minecraft:custom_data~{item:young_dragon_boots}] run scoreboard players add @s aote_stat_defense 90
execute if items entity @s armor.head minecraft:player_head[minecraft:custom_data~{item:strong_dragon_helmet}] run scoreboard players add @s aote_stat_defense 110
execute if items entity @s armor.head minecraft:player_head[minecraft:custom_data~{item:strong_dragon_helmet}] run scoreboard players add @s aote_stat_armor_strength 25
execute if items entity @s armor.chest minecraft:leather_chestplate[minecraft:custom_data~{item:strong_dragon_chestplate}] run scoreboard players add @s aote_stat_defense 160
execute if items entity @s armor.chest minecraft:leather_chestplate[minecraft:custom_data~{item:strong_dragon_chestplate}] run scoreboard players add @s aote_stat_armor_strength 25
execute if items entity @s armor.legs minecraft:leather_leggings[minecraft:custom_data~{item:strong_dragon_leggings}] run scoreboard players add @s aote_stat_defense 140
execute if items entity @s armor.legs minecraft:leather_leggings[minecraft:custom_data~{item:strong_dragon_leggings}] run scoreboard players add @s aote_stat_armor_strength 25
execute if items entity @s armor.feet minecraft:leather_boots[minecraft:custom_data~{item:strong_dragon_boots}] run scoreboard players add @s aote_stat_defense 90
execute if items entity @s armor.feet minecraft:leather_boots[minecraft:custom_data~{item:strong_dragon_boots}] run scoreboard players add @s aote_stat_armor_strength 25
execute if items entity @s armor.head minecraft:player_head[minecraft:custom_data~{item:unstable_dragon_helmet}] run scoreboard players add @s aote_stat_defense 110
execute if items entity @s armor.head minecraft:player_head[minecraft:custom_data~{item:unstable_dragon_helmet}] run scoreboard players add @s aote_stat_necron_int 25
execute if items entity @s armor.chest minecraft:leather_chestplate[minecraft:custom_data~{item:unstable_dragon_chestplate}] run scoreboard players add @s aote_stat_defense 160
execute if items entity @s armor.legs minecraft:leather_leggings[minecraft:custom_data~{item:unstable_dragon_leggings}] run scoreboard players add @s aote_stat_defense 140
execute if items entity @s armor.feet minecraft:leather_boots[minecraft:custom_data~{item:unstable_dragon_boots}] run scoreboard players add @s aote_stat_defense 90
execute if items entity @s armor.head minecraft:player_head[minecraft:custom_data~{item:superior_dragon_helmet}] run scoreboard players add @s aote_stat_defense 130
execute if items entity @s armor.head minecraft:player_head[minecraft:custom_data~{item:superior_dragon_helmet}] run scoreboard players add @s aote_stat_armor_strength 10
execute if items entity @s armor.head minecraft:player_head[minecraft:custom_data~{item:superior_dragon_helmet}] run scoreboard players add @s aote_stat_necron_int 25
execute if items entity @s armor.chest minecraft:leather_chestplate[minecraft:custom_data~{item:superior_dragon_chestplate}] run scoreboard players add @s aote_stat_defense 190
execute if items entity @s armor.chest minecraft:leather_chestplate[minecraft:custom_data~{item:superior_dragon_chestplate}] run scoreboard players add @s aote_stat_armor_strength 10
execute if items entity @s armor.chest minecraft:leather_chestplate[minecraft:custom_data~{item:superior_dragon_chestplate}] run scoreboard players add @s aote_stat_necron_int 25
execute if items entity @s armor.legs minecraft:leather_leggings[minecraft:custom_data~{item:superior_dragon_leggings}] run scoreboard players add @s aote_stat_defense 170
execute if items entity @s armor.legs minecraft:leather_leggings[minecraft:custom_data~{item:superior_dragon_leggings}] run scoreboard players add @s aote_stat_armor_strength 10
execute if items entity @s armor.legs minecraft:leather_leggings[minecraft:custom_data~{item:superior_dragon_leggings}] run scoreboard players add @s aote_stat_necron_int 25
execute if items entity @s armor.feet minecraft:leather_boots[minecraft:custom_data~{item:superior_dragon_boots}] run scoreboard players add @s aote_stat_defense 110
execute if items entity @s armor.feet minecraft:leather_boots[minecraft:custom_data~{item:superior_dragon_boots}] run scoreboard players add @s aote_stat_armor_strength 10
execute if items entity @s armor.feet minecraft:leather_boots[minecraft:custom_data~{item:superior_dragon_boots}] run scoreboard players add @s aote_stat_necron_int 25
# Necron armor bonuses: half of Hypixel's base piece stats.
execute if items entity @s armor.head minecraft:wither_skeleton_skull[minecraft:custom_data~{item:necron}] run scoreboard players add @s aote_stat_defense 50
execute if items entity @s armor.chest minecraft:netherite_chestplate[minecraft:custom_data~{item:necron}] run scoreboard players add @s aote_stat_defense 70
execute if items entity @s armor.legs minecraft:netherite_leggings[minecraft:custom_data~{item:necron}] run scoreboard players add @s aote_stat_defense 63
execute if items entity @s armor.feet minecraft:netherite_boots[minecraft:custom_data~{item:necron}] run scoreboard players add @s aote_stat_defense 42
execute if items entity @s armor.head minecraft:wither_skeleton_skull[minecraft:custom_data~{item:necron}] run scoreboard players add @s aote_stat_armor_strength 20
execute if items entity @s armor.chest minecraft:netherite_chestplate[minecraft:custom_data~{item:necron}] run scoreboard players add @s aote_stat_armor_strength 20
execute if items entity @s armor.legs minecraft:netherite_leggings[minecraft:custom_data~{item:necron}] run scoreboard players add @s aote_stat_armor_strength 20
execute if items entity @s armor.feet minecraft:netherite_boots[minecraft:custom_data~{item:necron}] run scoreboard players add @s aote_stat_armor_strength 20
execute if items entity @s armor.head minecraft:wither_skeleton_skull[minecraft:custom_data~{item:necron}] run scoreboard players add @s aote_stat_necron_int 15
execute if items entity @s armor.chest minecraft:netherite_chestplate[minecraft:custom_data~{item:necron}] run scoreboard players add @s aote_stat_necron_int 5
execute if items entity @s armor.legs minecraft:netherite_leggings[minecraft:custom_data~{item:necron}] run scoreboard players add @s aote_stat_necron_int 5
execute if items entity @s armor.feet minecraft:netherite_boots[minecraft:custom_data~{item:necron}] run scoreboard players add @s aote_stat_necron_int 5
# Apply the Intelligence bonus to maximum Mana, keeping current Mana unchanged.
scoreboard players operation @s aote_stat_necron_int_diff = @s aote_stat_necron_int
scoreboard players operation @s aote_stat_necron_int_diff -= @s aote_stat_necron_int_prev
scoreboard players operation @s aote_mana_max += @s aote_stat_necron_int_diff
scoreboard players operation @s aote_stat_necron_int_prev = @s aote_stat_necron_int
scoreboard players operation @s aote_stat_mana_regen_display = @s aote_mana_regen_rate
execute if score @s aote_stat_necron_int matches 1.. run scoreboard players add @s aote_stat_mana_regen_display 5
execute if score @s aote_mana_max matches ..0 run scoreboard players set @s aote_mana_max 1
# Cancel vanilla unarmed damage; the held sword/axe supplies the custom Damage and Strength attributes.
attribute @s minecraft:attack_damage base set 0
# Apply custom stats to ordinary vanilla swords and axes only. Custom ability swords are excluded.
execute if items entity @s weapon.mainhand minecraft:wooden_sword unless items entity @s weapon.mainhand minecraft:wooden_sword[minecraft:custom_data~{}] run item modify entity @s weapon.mainhand aote:weapons/wooden_sword
execute if items entity @s weapon.mainhand minecraft:stone_sword unless items entity @s weapon.mainhand minecraft:stone_sword[minecraft:custom_data~{}] run item modify entity @s weapon.mainhand aote:weapons/stone_sword
execute if items entity @s weapon.mainhand minecraft:copper_sword unless items entity @s weapon.mainhand minecraft:copper_sword[minecraft:custom_data~{}] run item modify entity @s weapon.mainhand aote:weapons/copper_sword
execute if items entity @s weapon.mainhand minecraft:iron_sword unless items entity @s weapon.mainhand minecraft:iron_sword[minecraft:custom_data~{}] run item modify entity @s weapon.mainhand aote:weapons/iron_sword
execute if items entity @s weapon.mainhand minecraft:golden_sword unless items entity @s weapon.mainhand minecraft:golden_sword[minecraft:custom_data~{}] run item modify entity @s weapon.mainhand aote:weapons/golden_sword
execute if items entity @s weapon.mainhand minecraft:diamond_sword unless items entity @s weapon.mainhand minecraft:diamond_sword[minecraft:custom_data~{}] run item modify entity @s weapon.mainhand aote:weapons/diamond_sword
execute if items entity @s weapon.mainhand minecraft:netherite_sword unless items entity @s weapon.mainhand minecraft:netherite_sword[minecraft:custom_data~{}] run item modify entity @s weapon.mainhand aote:weapons/netherite_sword
execute if items entity @s weapon.mainhand minecraft:wooden_axe unless items entity @s weapon.mainhand minecraft:wooden_axe[minecraft:custom_data~{}] run item modify entity @s weapon.mainhand aote:weapons/wooden_axe
execute if items entity @s weapon.mainhand minecraft:stone_axe unless items entity @s weapon.mainhand minecraft:stone_axe[minecraft:custom_data~{}] run item modify entity @s weapon.mainhand aote:weapons/stone_axe
execute if items entity @s weapon.mainhand minecraft:copper_axe unless items entity @s weapon.mainhand minecraft:copper_axe[minecraft:custom_data~{}] run item modify entity @s weapon.mainhand aote:weapons/copper_axe
execute if items entity @s weapon.mainhand minecraft:iron_axe unless items entity @s weapon.mainhand minecraft:iron_axe[minecraft:custom_data~{}] run item modify entity @s weapon.mainhand aote:weapons/iron_axe
execute if items entity @s weapon.mainhand minecraft:golden_axe unless items entity @s weapon.mainhand minecraft:golden_axe[minecraft:custom_data~{}] run item modify entity @s weapon.mainhand aote:weapons/golden_axe
execute if items entity @s weapon.mainhand minecraft:diamond_axe unless items entity @s weapon.mainhand minecraft:diamond_axe[minecraft:custom_data~{}] run item modify entity @s weapon.mainhand aote:weapons/diamond_axe
execute if items entity @s weapon.mainhand minecraft:netherite_axe unless items entity @s weapon.mainhand minecraft:netherite_axe[minecraft:custom_data~{}] run item modify entity @s weapon.mainhand aote:weapons/netherite_axe
# Apply (player Strength + armor Strength) / 2 as a multiplier to weapon damage.
scoreboard players operation @s aote_stat_total_strength = @s aote_stat_strength
scoreboard players operation @s aote_stat_total_strength += @s aote_stat_armor_strength
execute if entity @s[tag=aote_strength_modifier_active] run attribute @s minecraft:attack_damage modifier remove aote:player_strength
tag @s remove aote_strength_modifier_active
execute store result storage aote:macro strength double 0.005 run scoreboard players get @s aote_stat_total_strength
execute if items entity @s weapon.mainhand #aote:stat_weapons[minecraft:custom_data~{aote_stat_item:"1b"}] run function aote:stats/apply_strength with storage aote:macro
execute if items entity @s weapon.mainhand #aote:stat_weapons[minecraft:custom_data~{aote_stat_item:"1b"}] run tag @s add aote_strength_modifier_active
execute store result score @s aote_stat_damage_display run attribute @s minecraft:attack_damage get
# Convert incoming damage into custom Health using the Defense reduction formula.
scoreboard players operation @s aote_stat_damage_diff = @s aote_damage_stat
scoreboard players operation @s aote_stat_damage_diff -= @s aote_stat_damage_base
execute if score @s aote_stat_damage_diff matches 1.. run function aote:stats/process_damage
scoreboard players operation @s aote_stat_damage_base = @s aote_damage_stat
# The custom Health pool is authoritative; vanilla health is a large reserve only.
attribute @s minecraft:max_health base set 1024
execute if score @s aote_stat_health matches ..0 run kill @s
execute if score @s aote_stat_health matches 1.. store result score @s aote_stat_vanilla_health run data get entity @s Health 10
execute if score @s aote_stat_health matches 1.. if score @s aote_stat_vanilla_health matches ..10239 run effect give @s minecraft:instant_health 1 8 true
