execute as @e[type=minecraft:item_display,tag=aote_pet] if score @s aote_uid = @p[limit=1] aote_uid run kill @s
attribute @s minecraft:attack_damage modifier remove aote:pet_damage
scoreboard players set @s aote_pet_type 0
scoreboard players set @s aote_mana_max 500
scoreboard players set @s aote_mana_regen_rate 40
scoreboard players set @s aote_cost_bonus 0
scoreboard players set @s aote_damage_bonus 0
effect clear @s minecraft:resistance
