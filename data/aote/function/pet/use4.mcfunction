advancement revoke @s only aote:use_pet4
execute unless entity @s[name=QWDad] run return 0
function aote:pet/remove_silent
scoreboard players set @s aote_pet_type 4
scoreboard players set @s aote_mana_max 600
scoreboard players set @s aote_mana_regen_rate 30
scoreboard players set @s aote_damage_bonus 5
attribute @s minecraft:attack_damage modifier add aote:pet_damage 0.05 add_multiplied_total
effect give @s minecraft:resistance infinite 0 true
execute if score @s aote_mana > @s aote_mana_max run scoreboard players operation @s aote_mana = @s aote_mana_max
tellraw @s {"text":"Iron Golem pet activated!","color":"green"}
