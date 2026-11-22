# Runs as the orb marker, at the marker, every tick.
scoreboard players add @s aote_t 1
execute if score @s aote_t matches 101.. run return run kill @s
execute unless entity @a[name=QWDad] run return run kill @s

# Follow QWDad and turn 20 degrees per tick (one full spin per second).
execute at @a[name=QWDad,limit=1] run tp @s ~ ~ ~ ~20 0
execute at @s run function aote:astraea/orb_draw
