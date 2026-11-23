# Everyone can discover and craft every custom recipe.

# Ability effects
execute as @e[type=marker,tag=aote_breath] at @s run function aote:dragon/breath_tick
execute as @a at @s run function aote:tick_player
execute as @e[type=marker,tag=aote_arrow_volley] at @s run function aote:arrow/volley_tick
execute as @e[type=marker,tag=aote_orb] at @s run function aote:astraea/orb_tick
execute as @e[type=marker,tag=necron_scythe_slash] at @s run function aote:necrons_scythe/slash_tick
execute as @e[type=minecraft:arrow,tag=aote_arrow_flight] store result entity @s Air short 1 run time query gametime
