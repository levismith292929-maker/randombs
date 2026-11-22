scoreboard players operation @s aote_damage_bonus = @e[type=marker,tag=aote_arrow_volley,sort=nearest,limit=1] aote_damage_bonus
execute if score @s aote_damage_bonus matches 40 run data modify entity @s damage set value 7.7d
execute if score @s aote_damage_bonus matches 15 run data modify entity @s damage set value 6.325d
execute if score @s aote_damage_bonus matches 5 run data modify entity @s damage set value 5.775d
execute if score @s aote_damage_bonus matches -20 run data modify entity @s damage set value 4.4d
execute unless score @s aote_damage_bonus matches -20 unless score @s aote_damage_bonus matches 5 unless score @s aote_damage_bonus matches 15 unless score @s aote_damage_bonus matches 40 run data modify entity @s damage set value 5.5d
