# Everyone can discover and craft every custom recipe.

# Ability effects
execute as @e[type=marker,tag=aote_ore_scan] at @s run function aote:ore_tracker/scan_tick
execute as @e[type=marker,tag=aote_breath] at @s run function aote:dragon/breath_tick
execute as @a at @s run function aote:tick_player
execute as @e[type=marker,tag=aote_orb] at @s run function aote:astraea/orb_tick
execute as @e[type=marker,tag=necron_scythe_slash] at @s rotated as @a[sort=nearest,limit=1] run function aote:necrons_scythe/slash_tick
# Remove AOTA arrows after 3 seconds (60 ticks), even if they never hit anything.

# Remove AOTA arrows two ticks (0.1 seconds) after impact.
