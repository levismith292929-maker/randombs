tag @s add necron_scythe_hit
execute if score @p[limit=1] aote_damage_bonus matches 40 run damage @s 14 minecraft:dragon_breath by @a[name=@p[limit=1],limit=1]
execute if score @p[limit=1] aote_damage_bonus matches 15 run damage @s 11.5 minecraft:dragon_breath by @a[name=@p[limit=1],limit=1]
execute if score @p[limit=1] aote_damage_bonus matches 5 run damage @s 10.5 minecraft:dragon_breath by @a[name=@p[limit=1],limit=1]
execute if score @p[limit=1] aote_damage_bonus matches -20 run damage @s 8 minecraft:dragon_breath by @a[name=@p[limit=1],limit=1]
execute unless score @p[limit=1] aote_damage_bonus matches -20 unless score @p[limit=1] aote_damage_bonus matches 5 unless score @p[limit=1] aote_damage_bonus matches 15 unless score @p[limit=1] aote_damage_bonus matches 40 run damage @s 10 minecraft:dragon_breath by @a[name=@p[limit=1],limit=1]
