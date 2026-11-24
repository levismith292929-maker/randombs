tag @s add aote_hit
execute store result storage aote:macro damage double 1 run scoreboard players get @e[type=marker,tag=aote_breath,sort=nearest,limit=1] aote_ability_damage
execute as @a if score @s aote_uid = @e[type=marker,tag=aote_breath,sort=nearest,limit=1] aote_uid run function aote:dragon/deal_damage with storage aote:macro
tag @s remove aote_hit
