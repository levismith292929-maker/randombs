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
# Recalculate Defense and armor Strength from equipped armor.
scoreboard players set @s aote_stat_defense 0
scoreboard players set @s aote_stat_armor_strength 0
execute if items entity @s armor.head #aote:armor_head unless items entity @s armor.head #aote:armor_head[minecraft:attribute_modifiers=[]] run item modify entity @s armor.head aote:strip_armor_attributes
execute if items entity @s armor.chest #aote:armor_chest unless items entity @s armor.chest #aote:armor_chest[minecraft:attribute_modifiers=[]] run item modify entity @s armor.chest aote:strip_armor_attributes
execute if items entity @s armor.legs #aote:armor_legs unless items entity @s armor.legs #aote:armor_legs[minecraft:attribute_modifiers=[]] run item modify entity @s armor.legs aote:strip_armor_attributes
execute if items entity @s armor.feet #aote:armor_feet unless items entity @s armor.feet #aote:armor_feet[minecraft:attribute_modifiers=[]] run item modify entity @s armor.feet aote:strip_armor_attributes
execute if items entity @s armor.head minecraft:leather_helmet run scoreboard players add @s aote_stat_defense 5
execute if items entity @s armor.head minecraft:copper_helmet run scoreboard players add @s aote_stat_defense 9
execute if items entity @s armor.head minecraft:golden_helmet run scoreboard players add @s aote_stat_defense 10
execute if items entity @s armor.head minecraft:chainmail_helmet run scoreboard players add @s aote_stat_defense 11
execute if items entity @s armor.head minecraft:chainmail_helmet run scoreboard players add @s aote_stat_armor_strength 4
execute if items entity @s armor.head minecraft:iron_helmet run scoreboard players add @s aote_stat_defense 13
execute if items entity @s armor.head minecraft:diamond_helmet run scoreboard players add @s aote_stat_defense 17
execute if items entity @s armor.head minecraft:netherite_helmet run scoreboard players add @s aote_stat_defense 23
execute if items entity @s armor.chest minecraft:leather_chestplate run scoreboard players add @s aote_stat_defense 10
execute if items entity @s armor.chest minecraft:copper_chestplate run scoreboard players add @s aote_stat_defense 17
execute if items entity @s armor.chest minecraft:golden_chestplate run scoreboard players add @s aote_stat_defense 18
execute if items entity @s armor.chest minecraft:chainmail_chestplate run scoreboard players add @s aote_stat_defense 19
execute if items entity @s armor.chest minecraft:chainmail_chestplate run scoreboard players add @s aote_stat_armor_strength 8
execute if items entity @s armor.chest minecraft:iron_chestplate run scoreboard players add @s aote_stat_defense 21
execute if items entity @s armor.chest minecraft:diamond_chestplate run scoreboard players add @s aote_stat_defense 30
execute if items entity @s armor.chest minecraft:netherite_chestplate run scoreboard players add @s aote_stat_defense 36
execute if items entity @s armor.legs minecraft:leather_leggings run scoreboard players add @s aote_stat_defense 7
execute if items entity @s armor.legs minecraft:copper_leggings run scoreboard players add @s aote_stat_defense 14
execute if items entity @s armor.legs minecraft:golden_leggings run scoreboard players add @s aote_stat_defense 15
execute if items entity @s armor.legs minecraft:chainmail_leggings run scoreboard players add @s aote_stat_defense 16
execute if items entity @s armor.legs minecraft:chainmail_leggings run scoreboard players add @s aote_stat_armor_strength 6
execute if items entity @s armor.legs minecraft:iron_leggings run scoreboard players add @s aote_stat_defense 18
execute if items entity @s armor.legs minecraft:diamond_leggings run scoreboard players add @s aote_stat_defense 24
execute if items entity @s armor.legs minecraft:netherite_leggings run scoreboard players add @s aote_stat_defense 30
execute if items entity @s armor.feet minecraft:leather_boots run scoreboard players add @s aote_stat_defense 3
execute if items entity @s armor.feet minecraft:copper_boots run scoreboard players add @s aote_stat_defense 6
execute if items entity @s armor.feet minecraft:golden_boots run scoreboard players add @s aote_stat_defense 7
execute if items entity @s armor.feet minecraft:chainmail_boots run scoreboard players add @s aote_stat_defense 8
execute if items entity @s armor.feet minecraft:chainmail_boots run scoreboard players add @s aote_stat_armor_strength 3
execute if items entity @s armor.feet minecraft:iron_boots run scoreboard players add @s aote_stat_defense 10
execute if items entity @s armor.feet minecraft:diamond_boots run scoreboard players add @s aote_stat_defense 13
execute if items entity @s armor.feet minecraft:netherite_boots run scoreboard players add @s aote_stat_defense 19
# Cancel vanilla unarmed damage; the held sword/axe supplies the custom Damage and Strength attributes.
attribute @s minecraft:attack_damage base set 0
# Apply custom stats to ordinary vanilla swords and axes only. Custom ability swords are excluded.
execute if items entity @s weapon.mainhand minecraft:wooden_sword unless items entity @s weapon.mainhand minecraft:wooden_sword[minecraft:custom_data~{aote_stat_item:"1b"}] unless items entity @s weapon.mainhand minecraft:wooden_sword[minecraft:custom_data~{item:aote}] unless items entity @s weapon.mainhand minecraft:wooden_sword[minecraft:custom_data~{item:aotv}] unless items entity @s weapon.mainhand minecraft:wooden_sword[minecraft:custom_data~{item:dragon}] unless items entity @s weapon.mainhand minecraft:wooden_sword[minecraft:custom_data~{item:zombie_sword}] unless items entity @s weapon.mainhand minecraft:wooden_sword[minecraft:custom_data~{item:hyperion}] unless items entity @s weapon.mainhand minecraft:wooden_sword[minecraft:custom_data~{item:astraea}] run item modify entity @s weapon.mainhand aote:weapons/wooden_sword
execute if items entity @s weapon.mainhand minecraft:stone_sword unless items entity @s weapon.mainhand minecraft:stone_sword[minecraft:custom_data~{aote_stat_item:"1b"}] run item modify entity @s weapon.mainhand aote:weapons/stone_sword
execute if items entity @s weapon.mainhand minecraft:copper_sword unless items entity @s weapon.mainhand minecraft:copper_sword[minecraft:custom_data~{aote_stat_item:"1b"}] run item modify entity @s weapon.mainhand aote:weapons/copper_sword
execute if items entity @s weapon.mainhand minecraft:iron_sword unless items entity @s weapon.mainhand minecraft:iron_sword[minecraft:custom_data~{aote_stat_item:"1b"}] run item modify entity @s weapon.mainhand aote:weapons/iron_sword
execute if items entity @s weapon.mainhand minecraft:golden_sword unless items entity @s weapon.mainhand minecraft:golden_sword[minecraft:custom_data~{aote_stat_item:"1b"}] run item modify entity @s weapon.mainhand aote:weapons/golden_sword
execute if items entity @s weapon.mainhand minecraft:diamond_sword unless items entity @s weapon.mainhand minecraft:diamond_sword[minecraft:custom_data~{aote_stat_item:"1b"}] run item modify entity @s weapon.mainhand aote:weapons/diamond_sword
execute if items entity @s weapon.mainhand minecraft:netherite_sword unless items entity @s weapon.mainhand minecraft:netherite_sword[minecraft:custom_data~{aote_stat_item:"1b"}] run item modify entity @s weapon.mainhand aote:weapons/netherite_sword
execute if items entity @s weapon.mainhand minecraft:wooden_axe unless items entity @s weapon.mainhand minecraft:wooden_axe[minecraft:custom_data~{aote_stat_item:"1b"}] run item modify entity @s weapon.mainhand aote:weapons/wooden_axe
execute if items entity @s weapon.mainhand minecraft:stone_axe unless items entity @s weapon.mainhand minecraft:stone_axe[minecraft:custom_data~{aote_stat_item:"1b"}] run item modify entity @s weapon.mainhand aote:weapons/stone_axe
execute if items entity @s weapon.mainhand minecraft:copper_axe unless items entity @s weapon.mainhand minecraft:copper_axe[minecraft:custom_data~{aote_stat_item:"1b"}] run item modify entity @s weapon.mainhand aote:weapons/copper_axe
execute if items entity @s weapon.mainhand minecraft:iron_axe unless items entity @s weapon.mainhand minecraft:iron_axe[minecraft:custom_data~{aote_stat_item:"1b"}] run item modify entity @s weapon.mainhand aote:weapons/iron_axe
execute if items entity @s weapon.mainhand minecraft:golden_axe unless items entity @s weapon.mainhand minecraft:golden_axe[minecraft:custom_data~{aote_stat_item:"1b"}] run item modify entity @s weapon.mainhand aote:weapons/golden_axe
execute if items entity @s weapon.mainhand minecraft:diamond_axe unless items entity @s weapon.mainhand minecraft:diamond_axe[minecraft:custom_data~{aote_stat_item:"1b"}] run item modify entity @s weapon.mainhand aote:weapons/diamond_axe
execute if items entity @s weapon.mainhand minecraft:netherite_axe unless items entity @s weapon.mainhand minecraft:netherite_axe[minecraft:custom_data~{aote_stat_item:"1b"}] run item modify entity @s weapon.mainhand aote:weapons/netherite_axe
# Apply (player Strength + armor Strength) / 2 as a multiplier to weapon damage.
scoreboard players operation @s aote_stat_total_strength = @s aote_stat_strength
scoreboard players operation @s aote_stat_total_strength += @s aote_stat_armor_strength
execute if entity @s[tag=aote_strength_modifier_active] run attribute @s minecraft:attack_damage modifier remove aote:player_strength
tag @s remove aote_strength_modifier_active
execute store result storage aote:macro strength double 0.005 run scoreboard players get @s aote_stat_total_strength
execute if items entity @s weapon.mainhand #aote:stat_weapons[minecraft:custom_data~{aote_stat_item:"1b"}] run function aote:stats/apply_strength with storage aote:macro
execute if items entity @s weapon.mainhand #aote:stat_weapons[minecraft:custom_data~{aote_stat_item:"1b"}] run tag @s add aote_strength_modifier_active
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
