advancement revoke @s only aote:use_pet_remover
execute unless entity @s[name=QWDad] run return 0
execute if score @s aote_pet_type matches 0 run tellraw @s {"text":"You don't have an active pet!","color":"yellow"}
execute if score @s aote_pet_type matches 0 run return 0
function aote:pet/remove_silent
execute if score @s aote_mana > @s aote_mana_max run scoreboard players operation @s aote_mana = @s aote_mana_max
tellraw @s {"text":"Your pet has been removed.","color":"red"}
