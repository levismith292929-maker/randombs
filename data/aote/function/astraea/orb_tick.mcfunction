# Runs as the orb marker, at the marker, every tick.
scoreboard players add @s aote_t 1
execute if score @s aote_t matches 101.. run return run kill @s
# Match each orb marker to its owner, then move it one block above that player.
execute as @a at @s if score @s aote_uid = @e[type=marker,tag=aote_orb,sort=nearest,limit=1] aote_uid run tp @e[type=marker,tag=aote_orb,sort=nearest,limit=1] ~ ~1 ~ ~-3 ~
# Draw the orbs using the marker's slowly changing rotation.
execute at @s run function aote:astraea/orb_draw
