tag @s add necron_scythe_hit
execute if score QWDad aote_damage_bonus matches 40 run damage @s 28 minecraft:dragon_breath by @a[name=QWDad,limit=1]
execute if score QWDad aote_damage_bonus matches 15 run damage @s 23 minecraft:dragon_breath by @a[name=QWDad,limit=1]
execute if score QWDad aote_damage_bonus matches 5 run damage @s 21 minecraft:dragon_breath by @a[name=QWDad,limit=1]
execute if score QWDad aote_damage_bonus matches -20 run damage @s 16 minecraft:dragon_breath by @a[name=QWDad,limit=1]
execute unless score QWDad aote_damage_bonus matches -20 unless score QWDad aote_damage_bonus matches 5 unless score QWDad aote_damage_bonus matches 15 unless score QWDad aote_damage_bonus matches 40 run damage @s 20 minecraft:dragon_breath by @a[name=QWDad,limit=1]
