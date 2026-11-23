scoreboard players operation @s aote_damage_bonus = @e[type=marker,tag=aote_arrow_volley,sort=nearest,limit=1] aote_damage_bonus
execute if score @s aote_damage_bonus matches 40 run data modify entity @s damage set value 7.7d
execute if score @s aote_damage_bonus matches 15 run data modify entity @s damage set value 6.325d
execute if score @s aote_damage_bonus matches 5 run data modify entity @s damage set value 5.775d
execute if score @s aote_damage_bonus matches -20 run data modify entity @s damage set value 4.4d
execute unless score @s aote_damage_bonus matches -20 unless score @s aote_damage_bonus matches 5 unless score @s aote_damage_bonus matches 15 unless score @s aote_damage_bonus matches 40 run data modify entity @s damage set value 5.5d
# Give this arrow real velocity in the volley marker's facing direction.
tag @s add aote_arrow_flight
tag @s add aote_arrow_new
execute rotated as @e[type=marker,tag=aote_arrow_volley,sort=nearest,limit=1] positioned 0.0 0.0 0.0 positioned ^ ^ ^1 summon minecraft:area_effect_cloud run data modify entity @e[type=minecraft:arrow,tag=aote_arrow_new,limit=1] Motion set from entity @s Pos
tag @s remove aote_arrow_new
