# Runs as the orb marker, at the marker, every tick.
scoreboard players add @s aote_t 1
execute if score @s aote_t matches 101.. run return run kill @s
execute as @a if score @s aote_uid = @e[type=marker,tag=aote_orb,sort=nearest,limit=1] aote_uid run tp @e[type=marker,tag=aote_orb,sort=nearest,limit=1] @s ~3 0
# Draw the orbs using the marker's own slowly changing rotation.
execute at @s run function aote:astraea/orb_draw
