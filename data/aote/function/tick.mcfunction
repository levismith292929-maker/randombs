# Everyone can discover and craft every custom recipe.

# Ability effects
execute as @e[type=marker,tag=soul_whip_beam] at @s run function aote:soul_whip/beam_tick
execute as @e[type=marker,tag=aote_ore_scan] at @s run function aote:ore_tracker/scan_tick
execute as @e[type=marker,tag=aote_breath] at @s run function aote:dragon/breath_tick
execute as @a at @s run function aote:tick_player
execute as @e[type=marker,tag=aote_arrow_volley] at @s run function aote:arrow/volley_tick
execute as @e[type=marker,tag=aote_orb] at @s run function aote:astraea/orb_tick
execute as @e[type=marker,tag=necron_scythe_slash] at @s rotated as @a[sort=nearest,limit=1] run function aote:necrons_scythe/slash_tick
# Remove AOTA arrows after 3 seconds (60 ticks), even if they never hit anything.
execute as @e[type=minecraft:arrow,tag=aote_arrow_flight] run scoreboard players add @s aote_arrow_age 1
execute as @e[type=minecraft:arrow,tag=aote_arrow_flight,scores={aote_arrow_age=60..}] run kill @s

# Remove AOTA arrows two ticks (0.1 seconds) after impact.
execute as @e[type=minecraft:arrow,tag=aote_arrow_hit] run scoreboard players remove @s aote_hit_t 1
execute as @e[type=minecraft:arrow,tag=aote_arrow_hit,scores={aote_hit_t=..0}] run kill @s
execute as @e[type=minecraft:arrow,tag=aote_arrow_flight,tag=!aote_arrow_hit,nbt={inGround:1b}] run function aote:arrow/hit
execute as @e[type=minecraft:arrow,tag=aote_arrow_flight,tag=!aote_arrow_hit,nbt={shake:7b}] run function aote:arrow/hit
