tag @s add aote_hit
execute if score QWDad aote_damage_bonus matches 40 run damage @s 25.2 minecraft:dragon_breath
execute if score QWDad aote_damage_bonus matches 15 run damage @s 20.7 minecraft:dragon_breath
execute if score QWDad aote_damage_bonus matches 5 run damage @s 18.9 minecraft:dragon_breath
execute if score QWDad aote_damage_bonus matches -20 run damage @s 14.4 minecraft:dragon_breath
execute unless score QWDad aote_damage_bonus matches -20 unless score QWDad aote_damage_bonus matches 5 unless score QWDad aote_damage_bonus matches 15 unless score QWDad aote_damage_bonus matches 40 run damage @s 18 minecraft:dragon_breath
