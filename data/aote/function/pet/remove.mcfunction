advancement revoke @s only aote:use_pet_remover
execute unless entity @s[name=QWDad] run return 0
execute if score @s aote_pet_type matches 0 run tellraw @s {"text":"You don't have an active pet!","color":"yellow"}
execute if score @s aote_pet_type matches 1..4 run tellraw @s {"text":"Your pet has been removed.","color":"red"}
execute if score @s aote_pet_type matches 1..4 run function aote:pet/remove_silent
