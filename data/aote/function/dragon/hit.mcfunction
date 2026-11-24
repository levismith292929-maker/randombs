tag @s add aote_hit
execute store result storage aote:macro damage double 1 run scoreboard players get @e[type=marker,tag=aote_breath,sort=nearest,limit=1] aote_ability_damage
function aote:dragon/deal_damage with storage aote:macro
