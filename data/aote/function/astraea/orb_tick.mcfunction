# Runs as the orb marker, at the marker, every tick.
scoreboard players add @s aote_t 1
execute if score @s aote_t matches 101.. run return run kill @s
# Rotate the ring independently of the player's look direction.
tp @s ~ ~ ~ ~5 ~
# Follow the owner's position only; leave the marker's rotation alone.
execute as @a if score @s aote_uid = @e[type=marker,tag=aote_orb,sort=nearest,limit=1] aote_uid at @s run tp @e[type=marker,tag=aote_orb,sort=nearest,limit=1] ~ ~1 ~
# Draw the orbs using the marker's independent rotation.
execute at @s run function aote:astraea/orb_draw
