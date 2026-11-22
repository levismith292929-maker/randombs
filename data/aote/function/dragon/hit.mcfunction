tag @s add aote_hit
execute if score QWDad aote_damage_bonus matches 15 run damage @s 20.7 minecraft:dragon_breath
execute unless score QWDad aote_damage_bonus matches 15 run damage @s 18 minecraft:dragon_breath
