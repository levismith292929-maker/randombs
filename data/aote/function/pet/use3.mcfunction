advancement revoke @s only aote:use_pet3
execute unless entity @s[name=QWDad] run return 0
function aote:pet/remove_silent
scoreboard players set @s aote_pet_type 3
scoreboard players set @s aote_mana_max 750
scoreboard players set @s aote_mana_regen_rate 10
scoreboard players set @s aote_damage_bonus 40
attribute @s minecraft:attack_damage modifier add aote:pet_damage 0.4 add_multiplied_total
execute if score @s aote_mana > @s aote_mana_max run scoreboard players operation @s aote_mana = @s aote_mana_max
tellraw @s {"text":"Golden Dragon pet activated!","color":"green"}
