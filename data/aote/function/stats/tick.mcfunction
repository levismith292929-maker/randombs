# External player stats, vanilla armor conversion, and vanilla weapon stats.
scoreboard players add @s aote_stat_health 0
scoreboard players set @s aote_stat_crit_chance 5
scoreboard players set @s aote_stat_crit_damage 0
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
scoreboard players add @s aote_stat_mana_regen_bonus 0
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
execute if items entity @s armor.head minecraft:player_head[minecraft:custom_data~{item:old_dragon_helmet}] run scoreboard players add @s aote_stat_armor_health 507
execute if items entity @s armor.chest minecraft:leather_chestplate[minecraft:custom_data~{item:old_dragon_chestplate}] run scoreboard players add @s aote_stat_armor_health 832
execute if items entity @s armor.legs minecraft:leather_leggings[minecraft:custom_data~{item:old_dragon_leggings}] run scoreboard players add @s aote_stat_armor_health 728
execute if items entity @s armor.feet minecraft:leather_boots[minecraft:custom_data~{item:old_dragon_boots}] run scoreboard players add @s aote_stat_armor_health 442
execute if items entity @s armor.head minecraft:player_head[minecraft:custom_data~{item:protector_dragon_helmet}] run scoreboard players add @s aote_stat_armor_health 390
execute if items entity @s armor.chest minecraft:leather_chestplate[minecraft:custom_data~{item:protector_dragon_chestplate}] run scoreboard players add @s aote_stat_armor_health 663
execute if items entity @s armor.legs minecraft:leather_leggings[minecraft:custom_data~{item:protector_dragon_leggings}] run scoreboard players add @s aote_stat_armor_health 559
execute if items entity @s armor.feet minecraft:leather_boots[minecraft:custom_data~{item:protector_dragon_boots}] run scoreboard players add @s aote_stat_armor_health 338
execute if items entity @s armor.head minecraft:player_head[minecraft:custom_data~{item:wise_dragon_helmet}] run scoreboard players add @s aote_stat_armor_health 390
execute if items entity @s armor.chest minecraft:leather_chestplate[minecraft:custom_data~{item:wise_dragon_chestplate}] run scoreboard players add @s aote_stat_armor_health 663
execute if items entity @s armor.legs minecraft:leather_leggings[minecraft:custom_data~{item:wise_dragon_leggings}] run scoreboard players add @s aote_stat_armor_health 559
execute if items entity @s armor.feet minecraft:leather_boots[minecraft:custom_data~{item:wise_dragon_boots}] run scoreboard players add @s aote_stat_armor_health 338
execute if items entity @s armor.head minecraft:player_head[minecraft:custom_data~{item:young_dragon_helmet}] run scoreboard players add @s aote_stat_armor_health 390
execute if items entity @s armor.chest minecraft:leather_chestplate[minecraft:custom_data~{item:young_dragon_chestplate}] run scoreboard players add @s aote_stat_armor_health 663
execute if items entity @s armor.legs minecraft:leather_leggings[minecraft:custom_data~{item:young_dragon_leggings}] run scoreboard players add @s aote_stat_armor_health 559
execute if items entity @s armor.feet minecraft:leather_boots[minecraft:custom_data~{item:young_dragon_boots}] run scoreboard players add @s aote_stat_armor_health 338
execute if items entity @s armor.head minecraft:player_head[minecraft:custom_data~{item:strong_dragon_helmet}] run scoreboard players add @s aote_stat_armor_health 390
execute if items entity @s armor.chest minecraft:leather_chestplate[minecraft:custom_data~{item:strong_dragon_chestplate}] run scoreboard players add @s aote_stat_armor_health 663
execute if items entity @s armor.legs minecraft:leather_leggings[minecraft:custom_data~{item:strong_dragon_leggings}] run scoreboard players add @s aote_stat_armor_health 559
execute if items entity @s armor.feet minecraft:leather_boots[minecraft:custom_data~{item:strong_dragon_boots}] run scoreboard players add @s aote_stat_armor_health 338
execute if items entity @s armor.head minecraft:player_head[minecraft:custom_data~{item:unstable_dragon_helmet}] run scoreboard players add @s aote_stat_armor_health 390
execute if items entity @s armor.chest minecraft:leather_chestplate[minecraft:custom_data~{item:unstable_dragon_chestplate}] run scoreboard players add @s aote_stat_armor_health 663
execute if items entity @s armor.legs minecraft:leather_leggings[minecraft:custom_data~{item:unstable_dragon_leggings}] run scoreboard players add @s aote_stat_armor_health 559
execute if items entity @s armor.feet minecraft:leather_boots[minecraft:custom_data~{item:unstable_dragon_boots}] run scoreboard players add @s aote_stat_armor_health 338
execute if items entity @s armor.head minecraft:player_head[minecraft:custom_data~{item:superior_dragon_helmet}] run scoreboard players add @s aote_stat_armor_health 507
execute if items entity @s armor.chest minecraft:leather_chestplate[minecraft:custom_data~{item:superior_dragon_chestplate}] run scoreboard players add @s aote_stat_armor_health 832
execute if items entity @s armor.legs minecraft:leather_leggings[minecraft:custom_data~{item:superior_dragon_leggings}] run scoreboard players add @s aote_stat_armor_health 728
execute if items entity @s armor.feet minecraft:leather_boots[minecraft:custom_data~{item:superior_dragon_boots}] run scoreboard players add @s aote_stat_armor_health 442
# Custom mod armor Health, including the 0-3 star multipliers.
execute if items entity @s armor.head hypixel:old_dragon_helmet run scoreboard players add @s aote_stat_armor_health 507
execute if items entity @s armor.head hypixel:old_dragon_helmet_1star run scoreboard players add @s aote_stat_armor_health 558
execute if items entity @s armor.head hypixel:old_dragon_helmet_2star run scoreboard players add @s aote_stat_armor_health 634
execute if items entity @s armor.head hypixel:old_dragon_helmet_3star run scoreboard players add @s aote_stat_armor_health 736
execute if items entity @s armor.chest hypixel:old_dragon_chestplate run scoreboard players add @s aote_stat_armor_health 832
execute if items entity @s armor.chest hypixel:old_dragon_chestplate_1star run scoreboard players add @s aote_stat_armor_health 915
execute if items entity @s armor.chest hypixel:old_dragon_chestplate_2star run scoreboard players add @s aote_stat_armor_health 1040
execute if items entity @s armor.chest hypixel:old_dragon_chestplate_3star run scoreboard players add @s aote_stat_armor_health 1206
execute if items entity @s armor.legs hypixel:old_dragon_leggings run scoreboard players add @s aote_stat_armor_health 728
execute if items entity @s armor.legs hypixel:old_dragon_leggings_1star run scoreboard players add @s aote_stat_armor_health 801
execute if items entity @s armor.legs hypixel:old_dragon_leggings_2star run scoreboard players add @s aote_stat_armor_health 910
execute if items entity @s armor.legs hypixel:old_dragon_leggings_3star run scoreboard players add @s aote_stat_armor_health 1056
execute if items entity @s armor.feet hypixel:old_dragon_boots run scoreboard players add @s aote_stat_armor_health 442
execute if items entity @s armor.feet hypixel:old_dragon_boots_1star run scoreboard players add @s aote_stat_armor_health 486
execute if items entity @s armor.feet hypixel:old_dragon_boots_2star run scoreboard players add @s aote_stat_armor_health 553
execute if items entity @s armor.feet hypixel:old_dragon_boots_3star run scoreboard players add @s aote_stat_armor_health 641
execute if items entity @s armor.head hypixel:protector_dragon_helmet run scoreboard players add @s aote_stat_armor_health 390
execute if items entity @s armor.head hypixel:protector_dragon_helmet_1star run scoreboard players add @s aote_stat_armor_health 429
execute if items entity @s armor.head hypixel:protector_dragon_helmet_2star run scoreboard players add @s aote_stat_armor_health 488
execute if items entity @s armor.head hypixel:protector_dragon_helmet_3star run scoreboard players add @s aote_stat_armor_health 566
execute if items entity @s armor.chest hypixel:protector_dragon_chestplate run scoreboard players add @s aote_stat_armor_health 663
execute if items entity @s armor.chest hypixel:protector_dragon_chestplate_1star run scoreboard players add @s aote_stat_armor_health 729
execute if items entity @s armor.chest hypixel:protector_dragon_chestplate_2star run scoreboard players add @s aote_stat_armor_health 829
execute if items entity @s armor.chest hypixel:protector_dragon_chestplate_3star run scoreboard players add @s aote_stat_armor_health 962
execute if items entity @s armor.legs hypixel:protector_dragon_leggings run scoreboard players add @s aote_stat_armor_health 559
execute if items entity @s armor.legs hypixel:protector_dragon_leggings_1star run scoreboard players add @s aote_stat_armor_health 615
execute if items entity @s armor.legs hypixel:protector_dragon_leggings_2star run scoreboard players add @s aote_stat_armor_health 699
execute if items entity @s armor.legs hypixel:protector_dragon_leggings_3star run scoreboard players add @s aote_stat_armor_health 811
execute if items entity @s armor.feet hypixel:protector_dragon_boots run scoreboard players add @s aote_stat_armor_health 338
execute if items entity @s armor.feet hypixel:protector_dragon_boots_1star run scoreboard players add @s aote_stat_armor_health 372
execute if items entity @s armor.feet hypixel:protector_dragon_boots_2star run scoreboard players add @s aote_stat_armor_health 423
execute if items entity @s armor.feet hypixel:protector_dragon_boots_3star run scoreboard players add @s aote_stat_armor_health 490
execute if items entity @s armor.head hypixel:strong_dragon_helmet run scoreboard players add @s aote_stat_armor_health 390
execute if items entity @s armor.head hypixel:strong_dragon_helmet_1star run scoreboard players add @s aote_stat_armor_health 429
execute if items entity @s armor.head hypixel:strong_dragon_helmet_2star run scoreboard players add @s aote_stat_armor_health 488
execute if items entity @s armor.head hypixel:strong_dragon_helmet_3star run scoreboard players add @s aote_stat_armor_health 566
execute if items entity @s armor.chest hypixel:strong_dragon_chestplate run scoreboard players add @s aote_stat_armor_health 663
execute if items entity @s armor.chest hypixel:strong_dragon_chestplate_1star run scoreboard players add @s aote_stat_armor_health 729
execute if items entity @s armor.chest hypixel:strong_dragon_chestplate_2star run scoreboard players add @s aote_stat_armor_health 829
execute if items entity @s armor.chest hypixel:strong_dragon_chestplate_3star run scoreboard players add @s aote_stat_armor_health 962
execute if items entity @s armor.legs hypixel:strong_dragon_leggings run scoreboard players add @s aote_stat_armor_health 559
execute if items entity @s armor.legs hypixel:strong_dragon_leggings_1star run scoreboard players add @s aote_stat_armor_health 615
execute if items entity @s armor.legs hypixel:strong_dragon_leggings_2star run scoreboard players add @s aote_stat_armor_health 699
execute if items entity @s armor.legs hypixel:strong_dragon_leggings_3star run scoreboard players add @s aote_stat_armor_health 811
execute if items entity @s armor.feet hypixel:strong_dragon_boots run scoreboard players add @s aote_stat_armor_health 338
execute if items entity @s armor.feet hypixel:strong_dragon_boots_1star run scoreboard players add @s aote_stat_armor_health 372
execute if items entity @s armor.feet hypixel:strong_dragon_boots_2star run scoreboard players add @s aote_stat_armor_health 423
execute if items entity @s armor.feet hypixel:strong_dragon_boots_3star run scoreboard players add @s aote_stat_armor_health 490
execute if items entity @s armor.head hypixel:superior_dragon_helmet run scoreboard players add @s aote_stat_armor_health 507
execute if items entity @s armor.head hypixel:superior_dragon_helmet_1star run scoreboard players add @s aote_stat_armor_health 558
execute if items entity @s armor.head hypixel:superior_dragon_helmet_2star run scoreboard players add @s aote_stat_armor_health 634
execute if items entity @s armor.head hypixel:superior_dragon_helmet_3star run scoreboard players add @s aote_stat_armor_health 736
execute if items entity @s armor.chest hypixel:superior_dragon_chestplate run scoreboard players add @s aote_stat_armor_health 832
execute if items entity @s armor.chest hypixel:superior_dragon_chestplate_1star run scoreboard players add @s aote_stat_armor_health 915
execute if items entity @s armor.chest hypixel:superior_dragon_chestplate_2star run scoreboard players add @s aote_stat_armor_health 1040
execute if items entity @s armor.chest hypixel:superior_dragon_chestplate_3star run scoreboard players add @s aote_stat_armor_health 1206
execute if items entity @s armor.legs hypixel:superior_dragon_leggings run scoreboard players add @s aote_stat_armor_health 728
execute if items entity @s armor.legs hypixel:superior_dragon_leggings_1star run scoreboard players add @s aote_stat_armor_health 801
execute if items entity @s armor.legs hypixel:superior_dragon_leggings_2star run scoreboard players add @s aote_stat_armor_health 910
execute if items entity @s armor.legs hypixel:superior_dragon_leggings_3star run scoreboard players add @s aote_stat_armor_health 1056
execute if items entity @s armor.feet hypixel:superior_dragon_boots run scoreboard players add @s aote_stat_armor_health 442
execute if items entity @s armor.feet hypixel:superior_dragon_boots_1star run scoreboard players add @s aote_stat_armor_health 486
execute if items entity @s armor.feet hypixel:superior_dragon_boots_2star run scoreboard players add @s aote_stat_armor_health 553
execute if items entity @s armor.feet hypixel:superior_dragon_boots_3star run scoreboard players add @s aote_stat_armor_health 641
execute if items entity @s armor.head hypixel:unstable_dragon_helmet run scoreboard players add @s aote_stat_armor_health 390
execute if items entity @s armor.head hypixel:unstable_dragon_helmet_1star run scoreboard players add @s aote_stat_armor_health 429
execute if items entity @s armor.head hypixel:unstable_dragon_helmet_2star run scoreboard players add @s aote_stat_armor_health 488
execute if items entity @s armor.head hypixel:unstable_dragon_helmet_3star run scoreboard players add @s aote_stat_armor_health 566
execute if items entity @s armor.chest hypixel:unstable_dragon_chestplate run scoreboard players add @s aote_stat_armor_health 663
execute if items entity @s armor.chest hypixel:unstable_dragon_chestplate_1star run scoreboard players add @s aote_stat_armor_health 729
execute if items entity @s armor.chest hypixel:unstable_dragon_chestplate_2star run scoreboard players add @s aote_stat_armor_health 829
execute if items entity @s armor.chest hypixel:unstable_dragon_chestplate_3star run scoreboard players add @s aote_stat_armor_health 962
execute if items entity @s armor.legs hypixel:unstable_dragon_leggings run scoreboard players add @s aote_stat_armor_health 559
execute if items entity @s armor.legs hypixel:unstable_dragon_leggings_1star run scoreboard players add @s aote_stat_armor_health 615
execute if items entity @s armor.legs hypixel:unstable_dragon_leggings_2star run scoreboard players add @s aote_stat_armor_health 699
execute if items entity @s armor.legs hypixel:unstable_dragon_leggings_3star run scoreboard players add @s aote_stat_armor_health 811
execute if items entity @s armor.feet hypixel:unstable_dragon_boots run scoreboard players add @s aote_stat_armor_health 338
execute if items entity @s armor.feet hypixel:unstable_dragon_boots_1star run scoreboard players add @s aote_stat_armor_health 372
execute if items entity @s armor.feet hypixel:unstable_dragon_boots_2star run scoreboard players add @s aote_stat_armor_health 423
execute if items entity @s armor.feet hypixel:unstable_dragon_boots_3star run scoreboard players add @s aote_stat_armor_health 490
execute if items entity @s armor.head hypixel:wise_dragon_helmet run scoreboard players add @s aote_stat_armor_health 390
execute if items entity @s armor.head hypixel:wise_dragon_helmet_1star run scoreboard players add @s aote_stat_armor_health 429
execute if items entity @s armor.head hypixel:wise_dragon_helmet_2star run scoreboard players add @s aote_stat_armor_health 488
execute if items entity @s armor.head hypixel:wise_dragon_helmet_3star run scoreboard players add @s aote_stat_armor_health 566
execute if items entity @s armor.chest hypixel:wise_dragon_chestplate run scoreboard players add @s aote_stat_armor_health 663
execute if items entity @s armor.chest hypixel:wise_dragon_chestplate_1star run scoreboard players add @s aote_stat_armor_health 729
execute if items entity @s armor.chest hypixel:wise_dragon_chestplate_2star run scoreboard players add @s aote_stat_armor_health 829
execute if items entity @s armor.chest hypixel:wise_dragon_chestplate_3star run scoreboard players add @s aote_stat_armor_health 962
execute if items entity @s armor.legs hypixel:wise_dragon_leggings run scoreboard players add @s aote_stat_armor_health 559
execute if items entity @s armor.legs hypixel:wise_dragon_leggings_1star run scoreboard players add @s aote_stat_armor_health 615
execute if items entity @s armor.legs hypixel:wise_dragon_leggings_2star run scoreboard players add @s aote_stat_armor_health 699
execute if items entity @s armor.legs hypixel:wise_dragon_leggings_3star run scoreboard players add @s aote_stat_armor_health 811
execute if items entity @s armor.feet hypixel:wise_dragon_boots run scoreboard players add @s aote_stat_armor_health 338
execute if items entity @s armor.feet hypixel:wise_dragon_boots_1star run scoreboard players add @s aote_stat_armor_health 372
execute if items entity @s armor.feet hypixel:wise_dragon_boots_2star run scoreboard players add @s aote_stat_armor_health 423
execute if items entity @s armor.feet hypixel:wise_dragon_boots_3star run scoreboard players add @s aote_stat_armor_health 490
execute if items entity @s armor.head hypixel:young_dragon_helmet run scoreboard players add @s aote_stat_armor_health 390
execute if items entity @s armor.head hypixel:young_dragon_helmet_1star run scoreboard players add @s aote_stat_armor_health 429
execute if items entity @s armor.head hypixel:young_dragon_helmet_2star run scoreboard players add @s aote_stat_armor_health 488
execute if items entity @s armor.head hypixel:young_dragon_helmet_3star run scoreboard players add @s aote_stat_armor_health 566
execute if items entity @s armor.chest hypixel:young_dragon_chestplate run scoreboard players add @s aote_stat_armor_health 663
execute if items entity @s armor.chest hypixel:young_dragon_chestplate_1star run scoreboard players add @s aote_stat_armor_health 729
execute if items entity @s armor.chest hypixel:young_dragon_chestplate_2star run scoreboard players add @s aote_stat_armor_health 829
execute if items entity @s armor.chest hypixel:young_dragon_chestplate_3star run scoreboard players add @s aote_stat_armor_health 962
execute if items entity @s armor.legs hypixel:young_dragon_leggings run scoreboard players add @s aote_stat_armor_health 559
execute if items entity @s armor.legs hypixel:young_dragon_leggings_1star run scoreboard players add @s aote_stat_armor_health 615
execute if items entity @s armor.legs hypixel:young_dragon_leggings_2star run scoreboard players add @s aote_stat_armor_health 699
execute if items entity @s armor.legs hypixel:young_dragon_leggings_3star run scoreboard players add @s aote_stat_armor_health 811
execute if items entity @s armor.feet hypixel:young_dragon_boots run scoreboard players add @s aote_stat_armor_health 338
execute if items entity @s armor.feet hypixel:young_dragon_boots_1star run scoreboard players add @s aote_stat_armor_health 372
execute if items entity @s armor.feet hypixel:young_dragon_boots_2star run scoreboard players add @s aote_stat_armor_health 423
execute if items entity @s armor.feet hypixel:young_dragon_boots_3star run scoreboard players add @s aote_stat_armor_health 490
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
execute if items entity @s armor.head minecraft:player_head[minecraft:custom_data~{item:unstable_dragon_helmet}] run scoreboard players add @s aote_stat_crit_chance 2
execute if items entity @s armor.head minecraft:player_head[minecraft:custom_data~{item:unstable_dragon_helmet}] run scoreboard players add @s aote_stat_crit_damage 6
execute if items entity @s armor.chest minecraft:leather_chestplate[minecraft:custom_data~{item:unstable_dragon_chestplate}] run scoreboard players add @s aote_stat_crit_chance 2
execute if items entity @s armor.chest minecraft:leather_chestplate[minecraft:custom_data~{item:unstable_dragon_chestplate}] run scoreboard players add @s aote_stat_crit_damage 6
execute if items entity @s armor.legs minecraft:leather_leggings[minecraft:custom_data~{item:unstable_dragon_leggings}] run scoreboard players add @s aote_stat_crit_chance 2
execute if items entity @s armor.legs minecraft:leather_leggings[minecraft:custom_data~{item:unstable_dragon_leggings}] run scoreboard players add @s aote_stat_crit_damage 6
execute if items entity @s armor.feet minecraft:leather_boots[minecraft:custom_data~{item:unstable_dragon_boots}] run scoreboard players add @s aote_stat_crit_chance 2
execute if items entity @s armor.feet minecraft:leather_boots[minecraft:custom_data~{item:unstable_dragon_boots}] run scoreboard players add @s aote_stat_crit_damage 6
execute if items entity @s armor.head hypixel:unstable_dragon_helmet run scoreboard players add @s aote_stat_crit_chance 2
execute if items entity @s armor.head hypixel:unstable_dragon_helmet run scoreboard players add @s aote_stat_crit_damage 6
execute if items entity @s armor.head hypixel:unstable_dragon_helmet_1star run scoreboard players add @s aote_stat_crit_chance 2
execute if items entity @s armor.head hypixel:unstable_dragon_helmet_1star run scoreboard players add @s aote_stat_crit_damage 7
execute if items entity @s armor.head hypixel:unstable_dragon_helmet_2star run scoreboard players add @s aote_stat_crit_chance 3
execute if items entity @s armor.head hypixel:unstable_dragon_helmet_2star run scoreboard players add @s aote_stat_crit_damage 8
execute if items entity @s armor.head hypixel:unstable_dragon_helmet_3star run scoreboard players add @s aote_stat_crit_chance 3
execute if items entity @s armor.head hypixel:unstable_dragon_helmet_3star run scoreboard players add @s aote_stat_crit_damage 9
execute if items entity @s armor.chest hypixel:unstable_dragon_chestplate run scoreboard players add @s aote_stat_crit_chance 2
execute if items entity @s armor.chest hypixel:unstable_dragon_chestplate run scoreboard players add @s aote_stat_crit_damage 6
execute if items entity @s armor.chest hypixel:unstable_dragon_chestplate_1star run scoreboard players add @s aote_stat_crit_chance 2
execute if items entity @s armor.chest hypixel:unstable_dragon_chestplate_1star run scoreboard players add @s aote_stat_crit_damage 7
execute if items entity @s armor.chest hypixel:unstable_dragon_chestplate_2star run scoreboard players add @s aote_stat_crit_chance 3
execute if items entity @s armor.chest hypixel:unstable_dragon_chestplate_2star run scoreboard players add @s aote_stat_crit_damage 8
execute if items entity @s armor.chest hypixel:unstable_dragon_chestplate_3star run scoreboard players add @s aote_stat_crit_chance 3
execute if items entity @s armor.chest hypixel:unstable_dragon_chestplate_3star run scoreboard players add @s aote_stat_crit_damage 9
execute if items entity @s armor.legs hypixel:unstable_dragon_leggings run scoreboard players add @s aote_stat_crit_chance 2
execute if items entity @s armor.legs hypixel:unstable_dragon_leggings run scoreboard players add @s aote_stat_crit_damage 6
execute if items entity @s armor.legs hypixel:unstable_dragon_leggings_1star run scoreboard players add @s aote_stat_crit_chance 2
execute if items entity @s armor.legs hypixel:unstable_dragon_leggings_1star run scoreboard players add @s aote_stat_crit_damage 7
execute if items entity @s armor.legs hypixel:unstable_dragon_leggings_2star run scoreboard players add @s aote_stat_crit_chance 3
execute if items entity @s armor.legs hypixel:unstable_dragon_leggings_2star run scoreboard players add @s aote_stat_crit_damage 8
execute if items entity @s armor.legs hypixel:unstable_dragon_leggings_3star run scoreboard players add @s aote_stat_crit_chance 3
execute if items entity @s armor.legs hypixel:unstable_dragon_leggings_3star run scoreboard players add @s aote_stat_crit_damage 9
execute if items entity @s armor.feet hypixel:unstable_dragon_boots run scoreboard players add @s aote_stat_crit_chance 2
execute if items entity @s armor.feet hypixel:unstable_dragon_boots run scoreboard players add @s aote_stat_crit_damage 6
execute if items entity @s armor.feet hypixel:unstable_dragon_boots_1star run scoreboard players add @s aote_stat_crit_chance 2
execute if items entity @s armor.feet hypixel:unstable_dragon_boots_1star run scoreboard players add @s aote_stat_crit_damage 7
execute if items entity @s armor.feet hypixel:unstable_dragon_boots_2star run scoreboard players add @s aote_stat_crit_chance 3
execute if items entity @s armor.feet hypixel:unstable_dragon_boots_2star run scoreboard players add @s aote_stat_crit_damage 8
execute if items entity @s armor.feet hypixel:unstable_dragon_boots_3star run scoreboard players add @s aote_stat_crit_chance 3
execute if items entity @s armor.feet hypixel:unstable_dragon_boots_3star run scoreboard players add @s aote_stat_crit_damage 9
execute if items entity @s armor.head hypixel:superior_dragon_helmet run scoreboard players add @s aote_stat_crit_chance 1
execute if items entity @s armor.head hypixel:superior_dragon_helmet run scoreboard players add @s aote_stat_crit_damage 4
execute if items entity @s armor.head hypixel:superior_dragon_helmet_1star run scoreboard players add @s aote_stat_crit_chance 1
execute if items entity @s armor.head hypixel:superior_dragon_helmet_1star run scoreboard players add @s aote_stat_crit_damage 4
execute if items entity @s armor.head hypixel:superior_dragon_helmet_2star run scoreboard players add @s aote_stat_crit_chance 1
execute if items entity @s armor.head hypixel:superior_dragon_helmet_2star run scoreboard players add @s aote_stat_crit_damage 5
execute if items entity @s armor.head hypixel:superior_dragon_helmet_3star run scoreboard players add @s aote_stat_crit_chance 1
execute if items entity @s armor.head hypixel:superior_dragon_helmet_3star run scoreboard players add @s aote_stat_crit_damage 6
execute if items entity @s armor.head minecraft:player_head[minecraft:custom_data~{item:superior_dragon_helmet}] run scoreboard players add @s aote_stat_crit_chance 1
execute if items entity @s armor.head minecraft:player_head[minecraft:custom_data~{item:superior_dragon_helmet}] run scoreboard players add @s aote_stat_crit_damage 4
execute if items entity @s armor.chest hypixel:superior_dragon_chestplate run scoreboard players add @s aote_stat_crit_chance 1
execute if items entity @s armor.chest hypixel:superior_dragon_chestplate run scoreboard players add @s aote_stat_crit_damage 4
execute if items entity @s armor.chest hypixel:superior_dragon_chestplate_1star run scoreboard players add @s aote_stat_crit_chance 1
execute if items entity @s armor.chest hypixel:superior_dragon_chestplate_1star run scoreboard players add @s aote_stat_crit_damage 4
execute if items entity @s armor.chest hypixel:superior_dragon_chestplate_2star run scoreboard players add @s aote_stat_crit_chance 1
execute if items entity @s armor.chest hypixel:superior_dragon_chestplate_2star run scoreboard players add @s aote_stat_crit_damage 5
execute if items entity @s armor.chest hypixel:superior_dragon_chestplate_3star run scoreboard players add @s aote_stat_crit_chance 1
execute if items entity @s armor.chest hypixel:superior_dragon_chestplate_3star run scoreboard players add @s aote_stat_crit_damage 6
execute if items entity @s armor.chest minecraft:leather_chestplate[minecraft:custom_data~{item:superior_dragon_chestplate}] run scoreboard players add @s aote_stat_crit_chance 1
execute if items entity @s armor.chest minecraft:leather_chestplate[minecraft:custom_data~{item:superior_dragon_chestplate}] run scoreboard players add @s aote_stat_crit_damage 4
execute if items entity @s armor.legs hypixel:superior_dragon_leggings run scoreboard players add @s aote_stat_crit_chance 1
execute if items entity @s armor.legs hypixel:superior_dragon_leggings run scoreboard players add @s aote_stat_crit_damage 4
execute if items entity @s armor.legs hypixel:superior_dragon_leggings_1star run scoreboard players add @s aote_stat_crit_chance 1
execute if items entity @s armor.legs hypixel:superior_dragon_leggings_1star run scoreboard players add @s aote_stat_crit_damage 4
execute if items entity @s armor.legs hypixel:superior_dragon_leggings_2star run scoreboard players add @s aote_stat_crit_chance 1
execute if items entity @s armor.legs hypixel:superior_dragon_leggings_2star run scoreboard players add @s aote_stat_crit_damage 5
execute if items entity @s armor.legs hypixel:superior_dragon_leggings_3star run scoreboard players add @s aote_stat_crit_chance 1
execute if items entity @s armor.legs hypixel:superior_dragon_leggings_3star run scoreboard players add @s aote_stat_crit_damage 6
execute if items entity @s armor.legs minecraft:leather_leggings[minecraft:custom_data~{item:superior_dragon_leggings}] run scoreboard players add @s aote_stat_crit_chance 1
execute if items entity @s armor.legs minecraft:leather_leggings[minecraft:custom_data~{item:superior_dragon_leggings}] run scoreboard players add @s aote_stat_crit_damage 4
execute if items entity @s armor.feet hypixel:superior_dragon_boots run scoreboard players add @s aote_stat_crit_chance 1
execute if items entity @s armor.feet hypixel:superior_dragon_boots run scoreboard players add @s aote_stat_crit_damage 4
execute if items entity @s armor.feet hypixel:superior_dragon_boots_1star run scoreboard players add @s aote_stat_crit_chance 1
execute if items entity @s armor.feet hypixel:superior_dragon_boots_1star run scoreboard players add @s aote_stat_crit_damage 4
execute if items entity @s armor.feet hypixel:superior_dragon_boots_2star run scoreboard players add @s aote_stat_crit_chance 1
execute if items entity @s armor.feet hypixel:superior_dragon_boots_2star run scoreboard players add @s aote_stat_crit_damage 5
execute if items entity @s armor.feet hypixel:superior_dragon_boots_3star run scoreboard players add @s aote_stat_crit_chance 1
execute if items entity @s armor.feet hypixel:superior_dragon_boots_3star run scoreboard players add @s aote_stat_crit_damage 6
execute if items entity @s armor.feet minecraft:leather_boots[minecraft:custom_data~{item:superior_dragon_boots}] run scoreboard players add @s aote_stat_crit_chance 1
execute if items entity @s armor.feet minecraft:leather_boots[minecraft:custom_data~{item:superior_dragon_boots}] run scoreboard players add @s aote_stat_crit_damage 4
scoreboard players set @s aote_stat_armor_strength 0
scoreboard players set @s aote_stat_necron_int 0
execute if items entity @s armor.head minecraft:copper_helmet run scoreboard players add @s aote_stat_defense 9
execute if items entity @s armor.head minecraft:golden_helmet run scoreboard players add @s aote_stat_defense 10
execute if items entity @s armor.head minecraft:chainmail_helmet run scoreboard players add @s aote_stat_defense 11
execute if items entity @s armor.head minecraft:chainmail_helmet run scoreboard players add @s aote_stat_armor_strength 4
execute if items entity @s armor.head minecraft:iron_helmet run scoreboard players add @s aote_stat_defense 13
execute if items entity @s armor.head minecraft:diamond_helmet unless items entity @s armor.head minecraft:diamond_helmet[minecraft:custom_data~{dragon_armor:"1b"}] run scoreboard players add @s aote_stat_defense 17
execute if items entity @s armor.chest minecraft:copper_chestplate run scoreboard players add @s aote_stat_defense 17
execute if items entity @s armor.chest minecraft:golden_chestplate run scoreboard players add @s aote_stat_defense 18
execute if items entity @s armor.chest minecraft:chainmail_chestplate run scoreboard players add @s aote_stat_defense 19
execute if items entity @s armor.chest minecraft:chainmail_chestplate run scoreboard players add @s aote_stat_armor_strength 8
execute if items entity @s armor.chest minecraft:iron_chestplate run scoreboard players add @s aote_stat_defense 21
execute if items entity @s armor.chest minecraft:diamond_chestplate unless items entity @s armor.chest minecraft:diamond_chestplate[minecraft:custom_data~{dragon_armor:"1b"}] run scoreboard players add @s aote_stat_defense 30
execute if items entity @s armor.legs minecraft:copper_leggings run scoreboard players add @s aote_stat_defense 14
execute if items entity @s armor.legs minecraft:golden_leggings run scoreboard players add @s aote_stat_defense 15
execute if items entity @s armor.legs minecraft:chainmail_leggings run scoreboard players add @s aote_stat_defense 16
execute if items entity @s armor.legs minecraft:chainmail_leggings run scoreboard players add @s aote_stat_armor_strength 6
execute if items entity @s armor.legs minecraft:iron_leggings run scoreboard players add @s aote_stat_defense 18
execute if items entity @s armor.legs minecraft:diamond_leggings unless items entity @s armor.legs minecraft:diamond_leggings[minecraft:custom_data~{dragon_armor:"1b"}] run scoreboard players add @s aote_stat_defense 24
execute if items entity @s armor.feet minecraft:copper_boots run scoreboard players add @s aote_stat_defense 6
execute if items entity @s armor.feet minecraft:golden_boots run scoreboard players add @s aote_stat_defense 7
execute if items entity @s armor.feet minecraft:chainmail_boots run scoreboard players add @s aote_stat_defense 8
execute if items entity @s armor.feet minecraft:chainmail_boots run scoreboard players add @s aote_stat_armor_strength 3
execute if items entity @s armor.feet minecraft:iron_boots run scoreboard players add @s aote_stat_defense 10
execute if items entity @s armor.feet minecraft:diamond_boots unless items entity @s armor.feet minecraft:diamond_boots[minecraft:custom_data~{dragon_armor:"1b"}] run scoreboard players add @s aote_stat_defense 13
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
# Necron armor bonuses: full set now exceeds every Dragon set in Health, Defense, Strength, and Intelligence.
# Custom mod armor Defense, Strength, and Intelligence, including star multipliers.
execute if items entity @s armor.head hypixel:old_dragon_helmet run scoreboard players add @s aote_stat_defense 110
execute if items entity @s armor.head hypixel:old_dragon_helmet_1star run scoreboard players add @s aote_stat_defense 121
execute if items entity @s armor.head hypixel:old_dragon_helmet_2star run scoreboard players add @s aote_stat_defense 138
execute if items entity @s armor.head hypixel:old_dragon_helmet_3star run scoreboard players add @s aote_stat_defense 160
execute if items entity @s armor.chest hypixel:old_dragon_chestplate run scoreboard players add @s aote_stat_defense 160
execute if items entity @s armor.chest hypixel:old_dragon_chestplate_1star run scoreboard players add @s aote_stat_defense 176
execute if items entity @s armor.chest hypixel:old_dragon_chestplate_2star run scoreboard players add @s aote_stat_defense 200
execute if items entity @s armor.chest hypixel:old_dragon_chestplate_3star run scoreboard players add @s aote_stat_defense 232
execute if items entity @s armor.legs hypixel:old_dragon_leggings run scoreboard players add @s aote_stat_defense 140
execute if items entity @s armor.legs hypixel:old_dragon_leggings_1star run scoreboard players add @s aote_stat_defense 154
execute if items entity @s armor.legs hypixel:old_dragon_leggings_2star run scoreboard players add @s aote_stat_defense 175
execute if items entity @s armor.legs hypixel:old_dragon_leggings_3star run scoreboard players add @s aote_stat_defense 203
execute if items entity @s armor.feet hypixel:old_dragon_boots run scoreboard players add @s aote_stat_defense 90
execute if items entity @s armor.feet hypixel:old_dragon_boots_1star run scoreboard players add @s aote_stat_defense 99
execute if items entity @s armor.feet hypixel:old_dragon_boots_2star run scoreboard players add @s aote_stat_defense 113
execute if items entity @s armor.feet hypixel:old_dragon_boots_3star run scoreboard players add @s aote_stat_defense 131
execute if items entity @s armor.head hypixel:protector_dragon_helmet run scoreboard players add @s aote_stat_defense 135
execute if items entity @s armor.head hypixel:protector_dragon_helmet_1star run scoreboard players add @s aote_stat_defense 149
execute if items entity @s armor.head hypixel:protector_dragon_helmet_2star run scoreboard players add @s aote_stat_defense 169
execute if items entity @s armor.head hypixel:protector_dragon_helmet_3star run scoreboard players add @s aote_stat_defense 196
execute if items entity @s armor.chest hypixel:protector_dragon_chestplate run scoreboard players add @s aote_stat_defense 185
execute if items entity @s armor.chest hypixel:protector_dragon_chestplate_1star run scoreboard players add @s aote_stat_defense 204
execute if items entity @s armor.chest hypixel:protector_dragon_chestplate_2star run scoreboard players add @s aote_stat_defense 231
execute if items entity @s armor.chest hypixel:protector_dragon_chestplate_3star run scoreboard players add @s aote_stat_defense 268
execute if items entity @s armor.legs hypixel:protector_dragon_leggings run scoreboard players add @s aote_stat_defense 165
execute if items entity @s armor.legs hypixel:protector_dragon_leggings_1star run scoreboard players add @s aote_stat_defense 182
execute if items entity @s armor.legs hypixel:protector_dragon_leggings_2star run scoreboard players add @s aote_stat_defense 206
execute if items entity @s armor.legs hypixel:protector_dragon_leggings_3star run scoreboard players add @s aote_stat_defense 239
execute if items entity @s armor.feet hypixel:protector_dragon_boots run scoreboard players add @s aote_stat_defense 115
execute if items entity @s armor.feet hypixel:protector_dragon_boots_1star run scoreboard players add @s aote_stat_defense 127
execute if items entity @s armor.feet hypixel:protector_dragon_boots_2star run scoreboard players add @s aote_stat_defense 144
execute if items entity @s armor.feet hypixel:protector_dragon_boots_3star run scoreboard players add @s aote_stat_defense 167
execute if items entity @s armor.head hypixel:strong_dragon_helmet run scoreboard players add @s aote_stat_defense 110
execute if items entity @s armor.head hypixel:strong_dragon_helmet run scoreboard players add @s aote_stat_armor_strength 25
execute if items entity @s armor.head hypixel:strong_dragon_helmet_1star run scoreboard players add @s aote_stat_defense 121
execute if items entity @s armor.head hypixel:strong_dragon_helmet_1star run scoreboard players add @s aote_stat_armor_strength 28
execute if items entity @s armor.head hypixel:strong_dragon_helmet_2star run scoreboard players add @s aote_stat_defense 138
execute if items entity @s armor.head hypixel:strong_dragon_helmet_2star run scoreboard players add @s aote_stat_armor_strength 31
execute if items entity @s armor.head hypixel:strong_dragon_helmet_3star run scoreboard players add @s aote_stat_defense 160
execute if items entity @s armor.head hypixel:strong_dragon_helmet_3star run scoreboard players add @s aote_stat_armor_strength 36
execute if items entity @s armor.chest hypixel:strong_dragon_chestplate run scoreboard players add @s aote_stat_defense 160
execute if items entity @s armor.chest hypixel:strong_dragon_chestplate run scoreboard players add @s aote_stat_armor_strength 25
execute if items entity @s armor.chest hypixel:strong_dragon_chestplate_1star run scoreboard players add @s aote_stat_defense 176
execute if items entity @s armor.chest hypixel:strong_dragon_chestplate_1star run scoreboard players add @s aote_stat_armor_strength 28
execute if items entity @s armor.chest hypixel:strong_dragon_chestplate_2star run scoreboard players add @s aote_stat_defense 200
execute if items entity @s armor.chest hypixel:strong_dragon_chestplate_2star run scoreboard players add @s aote_stat_armor_strength 31
execute if items entity @s armor.chest hypixel:strong_dragon_chestplate_3star run scoreboard players add @s aote_stat_defense 232
execute if items entity @s armor.chest hypixel:strong_dragon_chestplate_3star run scoreboard players add @s aote_stat_armor_strength 36
execute if items entity @s armor.legs hypixel:strong_dragon_leggings run scoreboard players add @s aote_stat_defense 140
execute if items entity @s armor.legs hypixel:strong_dragon_leggings run scoreboard players add @s aote_stat_armor_strength 25
execute if items entity @s armor.legs hypixel:strong_dragon_leggings_1star run scoreboard players add @s aote_stat_defense 154
execute if items entity @s armor.legs hypixel:strong_dragon_leggings_1star run scoreboard players add @s aote_stat_armor_strength 28
execute if items entity @s armor.legs hypixel:strong_dragon_leggings_2star run scoreboard players add @s aote_stat_defense 175
execute if items entity @s armor.legs hypixel:strong_dragon_leggings_2star run scoreboard players add @s aote_stat_armor_strength 31
execute if items entity @s armor.legs hypixel:strong_dragon_leggings_3star run scoreboard players add @s aote_stat_defense 203
execute if items entity @s armor.legs hypixel:strong_dragon_leggings_3star run scoreboard players add @s aote_stat_armor_strength 36
execute if items entity @s armor.feet hypixel:strong_dragon_boots run scoreboard players add @s aote_stat_defense 90
execute if items entity @s armor.feet hypixel:strong_dragon_boots run scoreboard players add @s aote_stat_armor_strength 25
execute if items entity @s armor.feet hypixel:strong_dragon_boots_1star run scoreboard players add @s aote_stat_defense 99
execute if items entity @s armor.feet hypixel:strong_dragon_boots_1star run scoreboard players add @s aote_stat_armor_strength 28
execute if items entity @s armor.feet hypixel:strong_dragon_boots_2star run scoreboard players add @s aote_stat_defense 113
execute if items entity @s armor.feet hypixel:strong_dragon_boots_2star run scoreboard players add @s aote_stat_armor_strength 31
execute if items entity @s armor.feet hypixel:strong_dragon_boots_3star run scoreboard players add @s aote_stat_defense 131
execute if items entity @s armor.feet hypixel:strong_dragon_boots_3star run scoreboard players add @s aote_stat_armor_strength 36
execute if items entity @s armor.head hypixel:superior_dragon_helmet run scoreboard players add @s aote_stat_defense 130
execute if items entity @s armor.head hypixel:superior_dragon_helmet run scoreboard players add @s aote_stat_armor_strength 10
execute if items entity @s armor.head hypixel:superior_dragon_helmet run scoreboard players add @s aote_stat_necron_int 25
execute if items entity @s armor.head hypixel:superior_dragon_helmet_1star run scoreboard players add @s aote_stat_defense 143
execute if items entity @s armor.head hypixel:superior_dragon_helmet_1star run scoreboard players add @s aote_stat_armor_strength 11
execute if items entity @s armor.head hypixel:superior_dragon_helmet_1star run scoreboard players add @s aote_stat_necron_int 28
execute if items entity @s armor.head hypixel:superior_dragon_helmet_2star run scoreboard players add @s aote_stat_defense 163
execute if items entity @s armor.head hypixel:superior_dragon_helmet_2star run scoreboard players add @s aote_stat_armor_strength 13
execute if items entity @s armor.head hypixel:superior_dragon_helmet_2star run scoreboard players add @s aote_stat_necron_int 31
execute if items entity @s armor.head hypixel:superior_dragon_helmet_3star run scoreboard players add @s aote_stat_defense 189
execute if items entity @s armor.head hypixel:superior_dragon_helmet_3star run scoreboard players add @s aote_stat_armor_strength 15
execute if items entity @s armor.head hypixel:superior_dragon_helmet_3star run scoreboard players add @s aote_stat_necron_int 36
execute if items entity @s armor.chest hypixel:superior_dragon_chestplate run scoreboard players add @s aote_stat_defense 190
execute if items entity @s armor.chest hypixel:superior_dragon_chestplate run scoreboard players add @s aote_stat_armor_strength 10
execute if items entity @s armor.chest hypixel:superior_dragon_chestplate run scoreboard players add @s aote_stat_necron_int 25
execute if items entity @s armor.chest hypixel:superior_dragon_chestplate_1star run scoreboard players add @s aote_stat_defense 209
execute if items entity @s armor.chest hypixel:superior_dragon_chestplate_1star run scoreboard players add @s aote_stat_armor_strength 11
execute if items entity @s armor.chest hypixel:superior_dragon_chestplate_1star run scoreboard players add @s aote_stat_necron_int 28
execute if items entity @s armor.chest hypixel:superior_dragon_chestplate_2star run scoreboard players add @s aote_stat_defense 238
execute if items entity @s armor.chest hypixel:superior_dragon_chestplate_2star run scoreboard players add @s aote_stat_armor_strength 13
execute if items entity @s armor.chest hypixel:superior_dragon_chestplate_2star run scoreboard players add @s aote_stat_necron_int 31
execute if items entity @s armor.chest hypixel:superior_dragon_chestplate_3star run scoreboard players add @s aote_stat_defense 276
execute if items entity @s armor.chest hypixel:superior_dragon_chestplate_3star run scoreboard players add @s aote_stat_armor_strength 15
execute if items entity @s armor.chest hypixel:superior_dragon_chestplate_3star run scoreboard players add @s aote_stat_necron_int 36
execute if items entity @s armor.legs hypixel:superior_dragon_leggings run scoreboard players add @s aote_stat_defense 170
execute if items entity @s armor.legs hypixel:superior_dragon_leggings run scoreboard players add @s aote_stat_armor_strength 10
execute if items entity @s armor.legs hypixel:superior_dragon_leggings run scoreboard players add @s aote_stat_necron_int 25
execute if items entity @s armor.legs hypixel:superior_dragon_leggings_1star run scoreboard players add @s aote_stat_defense 187
execute if items entity @s armor.legs hypixel:superior_dragon_leggings_1star run scoreboard players add @s aote_stat_armor_strength 11
execute if items entity @s armor.legs hypixel:superior_dragon_leggings_1star run scoreboard players add @s aote_stat_necron_int 28
execute if items entity @s armor.legs hypixel:superior_dragon_leggings_2star run scoreboard players add @s aote_stat_defense 213
execute if items entity @s armor.legs hypixel:superior_dragon_leggings_2star run scoreboard players add @s aote_stat_armor_strength 13
execute if items entity @s armor.legs hypixel:superior_dragon_leggings_2star run scoreboard players add @s aote_stat_necron_int 31
execute if items entity @s armor.legs hypixel:superior_dragon_leggings_3star run scoreboard players add @s aote_stat_defense 247
execute if items entity @s armor.legs hypixel:superior_dragon_leggings_3star run scoreboard players add @s aote_stat_armor_strength 15
execute if items entity @s armor.legs hypixel:superior_dragon_leggings_3star run scoreboard players add @s aote_stat_necron_int 36
execute if items entity @s armor.feet hypixel:superior_dragon_boots run scoreboard players add @s aote_stat_defense 110
execute if items entity @s armor.feet hypixel:superior_dragon_boots run scoreboard players add @s aote_stat_armor_strength 10
execute if items entity @s armor.feet hypixel:superior_dragon_boots run scoreboard players add @s aote_stat_necron_int 25
execute if items entity @s armor.feet hypixel:superior_dragon_boots_1star run scoreboard players add @s aote_stat_defense 121
execute if items entity @s armor.feet hypixel:superior_dragon_boots_1star run scoreboard players add @s aote_stat_armor_strength 11
execute if items entity @s armor.feet hypixel:superior_dragon_boots_1star run scoreboard players add @s aote_stat_necron_int 28
execute if items entity @s armor.feet hypixel:superior_dragon_boots_2star run scoreboard players add @s aote_stat_defense 138
execute if items entity @s armor.feet hypixel:superior_dragon_boots_2star run scoreboard players add @s aote_stat_armor_strength 13
execute if items entity @s armor.feet hypixel:superior_dragon_boots_2star run scoreboard players add @s aote_stat_necron_int 31
execute if items entity @s armor.feet hypixel:superior_dragon_boots_3star run scoreboard players add @s aote_stat_defense 160
execute if items entity @s armor.feet hypixel:superior_dragon_boots_3star run scoreboard players add @s aote_stat_armor_strength 15
execute if items entity @s armor.feet hypixel:superior_dragon_boots_3star run scoreboard players add @s aote_stat_necron_int 36
execute if items entity @s armor.head hypixel:unstable_dragon_helmet run scoreboard players add @s aote_stat_defense 110
execute if items entity @s armor.head hypixel:unstable_dragon_helmet run scoreboard players add @s aote_stat_necron_int 25
execute if items entity @s armor.head hypixel:unstable_dragon_helmet_1star run scoreboard players add @s aote_stat_defense 121
execute if items entity @s armor.head hypixel:unstable_dragon_helmet_1star run scoreboard players add @s aote_stat_necron_int 28
execute if items entity @s armor.head hypixel:unstable_dragon_helmet_2star run scoreboard players add @s aote_stat_defense 138
execute if items entity @s armor.head hypixel:unstable_dragon_helmet_2star run scoreboard players add @s aote_stat_necron_int 31
execute if items entity @s armor.head hypixel:unstable_dragon_helmet_3star run scoreboard players add @s aote_stat_defense 160
execute if items entity @s armor.head hypixel:unstable_dragon_helmet_3star run scoreboard players add @s aote_stat_necron_int 36
execute if items entity @s armor.chest hypixel:unstable_dragon_chestplate run scoreboard players add @s aote_stat_defense 160
execute if items entity @s armor.chest hypixel:unstable_dragon_chestplate_1star run scoreboard players add @s aote_stat_defense 176
execute if items entity @s armor.chest hypixel:unstable_dragon_chestplate_2star run scoreboard players add @s aote_stat_defense 200
execute if items entity @s armor.chest hypixel:unstable_dragon_chestplate_3star run scoreboard players add @s aote_stat_defense 232
execute if items entity @s armor.legs hypixel:unstable_dragon_leggings run scoreboard players add @s aote_stat_defense 140
execute if items entity @s armor.legs hypixel:unstable_dragon_leggings_1star run scoreboard players add @s aote_stat_defense 154
execute if items entity @s armor.legs hypixel:unstable_dragon_leggings_2star run scoreboard players add @s aote_stat_defense 175
execute if items entity @s armor.legs hypixel:unstable_dragon_leggings_3star run scoreboard players add @s aote_stat_defense 203
execute if items entity @s armor.feet hypixel:unstable_dragon_boots run scoreboard players add @s aote_stat_defense 90
execute if items entity @s armor.feet hypixel:unstable_dragon_boots_1star run scoreboard players add @s aote_stat_defense 99
execute if items entity @s armor.feet hypixel:unstable_dragon_boots_2star run scoreboard players add @s aote_stat_defense 113
execute if items entity @s armor.feet hypixel:unstable_dragon_boots_3star run scoreboard players add @s aote_stat_defense 131
execute if items entity @s armor.head hypixel:wise_dragon_helmet run scoreboard players add @s aote_stat_defense 110
execute if items entity @s armor.head hypixel:wise_dragon_helmet run scoreboard players add @s aote_stat_necron_int 125
execute if items entity @s armor.head hypixel:wise_dragon_helmet_1star run scoreboard players add @s aote_stat_defense 121
execute if items entity @s armor.head hypixel:wise_dragon_helmet_1star run scoreboard players add @s aote_stat_necron_int 138
execute if items entity @s armor.head hypixel:wise_dragon_helmet_2star run scoreboard players add @s aote_stat_defense 138
execute if items entity @s armor.head hypixel:wise_dragon_helmet_2star run scoreboard players add @s aote_stat_necron_int 156
execute if items entity @s armor.head hypixel:wise_dragon_helmet_3star run scoreboard players add @s aote_stat_defense 160
execute if items entity @s armor.head hypixel:wise_dragon_helmet_3star run scoreboard players add @s aote_stat_necron_int 181
execute if items entity @s armor.chest hypixel:wise_dragon_chestplate run scoreboard players add @s aote_stat_defense 160
execute if items entity @s armor.chest hypixel:wise_dragon_chestplate run scoreboard players add @s aote_stat_necron_int 75
execute if items entity @s armor.chest hypixel:wise_dragon_chestplate_1star run scoreboard players add @s aote_stat_defense 176
execute if items entity @s armor.chest hypixel:wise_dragon_chestplate_1star run scoreboard players add @s aote_stat_necron_int 83
execute if items entity @s armor.chest hypixel:wise_dragon_chestplate_2star run scoreboard players add @s aote_stat_defense 200
execute if items entity @s armor.chest hypixel:wise_dragon_chestplate_2star run scoreboard players add @s aote_stat_necron_int 94
execute if items entity @s armor.chest hypixel:wise_dragon_chestplate_3star run scoreboard players add @s aote_stat_defense 232
execute if items entity @s armor.chest hypixel:wise_dragon_chestplate_3star run scoreboard players add @s aote_stat_necron_int 109
execute if items entity @s armor.legs hypixel:wise_dragon_leggings run scoreboard players add @s aote_stat_defense 140
execute if items entity @s armor.legs hypixel:wise_dragon_leggings run scoreboard players add @s aote_stat_necron_int 75
execute if items entity @s armor.legs hypixel:wise_dragon_leggings_1star run scoreboard players add @s aote_stat_defense 154
execute if items entity @s armor.legs hypixel:wise_dragon_leggings_1star run scoreboard players add @s aote_stat_necron_int 83
execute if items entity @s armor.legs hypixel:wise_dragon_leggings_2star run scoreboard players add @s aote_stat_defense 175
execute if items entity @s armor.legs hypixel:wise_dragon_leggings_2star run scoreboard players add @s aote_stat_necron_int 94
execute if items entity @s armor.legs hypixel:wise_dragon_leggings_3star run scoreboard players add @s aote_stat_defense 203
execute if items entity @s armor.legs hypixel:wise_dragon_leggings_3star run scoreboard players add @s aote_stat_necron_int 109
execute if items entity @s armor.feet hypixel:wise_dragon_boots run scoreboard players add @s aote_stat_defense 90
execute if items entity @s armor.feet hypixel:wise_dragon_boots run scoreboard players add @s aote_stat_necron_int 75
execute if items entity @s armor.feet hypixel:wise_dragon_boots_1star run scoreboard players add @s aote_stat_defense 99
execute if items entity @s armor.feet hypixel:wise_dragon_boots_1star run scoreboard players add @s aote_stat_necron_int 83
execute if items entity @s armor.feet hypixel:wise_dragon_boots_2star run scoreboard players add @s aote_stat_defense 113
execute if items entity @s armor.feet hypixel:wise_dragon_boots_2star run scoreboard players add @s aote_stat_necron_int 94
execute if items entity @s armor.feet hypixel:wise_dragon_boots_3star run scoreboard players add @s aote_stat_defense 131
execute if items entity @s armor.feet hypixel:wise_dragon_boots_3star run scoreboard players add @s aote_stat_necron_int 109
execute if items entity @s armor.head hypixel:young_dragon_helmet run scoreboard players add @s aote_stat_defense 110
execute if items entity @s armor.head hypixel:young_dragon_helmet_1star run scoreboard players add @s aote_stat_defense 121
execute if items entity @s armor.head hypixel:young_dragon_helmet_2star run scoreboard players add @s aote_stat_defense 138
execute if items entity @s armor.head hypixel:young_dragon_helmet_3star run scoreboard players add @s aote_stat_defense 160
execute if items entity @s armor.chest hypixel:young_dragon_chestplate run scoreboard players add @s aote_stat_defense 160
execute if items entity @s armor.chest hypixel:young_dragon_chestplate_1star run scoreboard players add @s aote_stat_defense 176
execute if items entity @s armor.chest hypixel:young_dragon_chestplate_2star run scoreboard players add @s aote_stat_defense 200
execute if items entity @s armor.chest hypixel:young_dragon_chestplate_3star run scoreboard players add @s aote_stat_defense 232
execute if items entity @s armor.legs hypixel:young_dragon_leggings run scoreboard players add @s aote_stat_defense 140
execute if items entity @s armor.legs hypixel:young_dragon_leggings_1star run scoreboard players add @s aote_stat_defense 154
execute if items entity @s armor.legs hypixel:young_dragon_leggings_2star run scoreboard players add @s aote_stat_defense 175
execute if items entity @s armor.legs hypixel:young_dragon_leggings_3star run scoreboard players add @s aote_stat_defense 203
execute if items entity @s armor.feet hypixel:young_dragon_boots run scoreboard players add @s aote_stat_defense 90
execute if items entity @s armor.feet hypixel:young_dragon_boots_1star run scoreboard players add @s aote_stat_defense 99
execute if items entity @s armor.feet hypixel:young_dragon_boots_2star run scoreboard players add @s aote_stat_defense 113
execute if items entity @s armor.feet hypixel:young_dragon_boots_3star run scoreboard players add @s aote_stat_defense 131
# Apply the Intelligence bonus to maximum Mana, keeping current Mana unchanged.
scoreboard players operation @s aote_stat_necron_int_diff = @s aote_stat_necron_int
scoreboard players operation @s aote_stat_necron_int_diff -= @s aote_stat_necron_int_prev
scoreboard players operation @s aote_mana_max += @s aote_stat_necron_int_diff
scoreboard players operation @s aote_stat_necron_int_prev = @s aote_stat_necron_int
scoreboard players operation @s aote_stat_mana_regen_bonus = @s aote_stat_necron_int
scoreboard players add @s aote_stat_mana_regen_bonus 2
scoreboard players operation @s aote_stat_mana_regen_bonus /= #4 aote_stat_const
scoreboard players operation @s aote_stat_mana_regen_display = @s aote_mana_regen_rate
scoreboard players operation @s aote_stat_mana_regen_display += @s aote_stat_mana_regen_bonus
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
