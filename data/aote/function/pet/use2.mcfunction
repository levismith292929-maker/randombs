advancement revoke @s only aote:use_pet2
execute unless entity @s[name=QWDad] run return 0
function aote:pet/remove_silent
scoreboard players set @s aote_pet_type 2
scoreboard players set @s aote_mana_max 300
scoreboard players set @s aote_mana_regen_rate 20
scoreboard players set @s aote_cost_bonus 0
scoreboard players set @s aote_damage_bonus 15
attribute @s minecraft:attack_damage modifier add aote:pet_damage 0.15 add_multiplied_total
execute if score @s aote_mana > @s aote_mana_max run scoreboard players operation @s aote_mana = @s aote_mana_max
tellraw @s {"text":"Ender Dragon pet activated!","color":"green"}
