# Move the volley marker to the player's current eye position each tick.
# Run as the player so "anchored eyes" uses the player's eyes, not the marker's origin.
execute as @p at @s anchored eyes positioned ^ ^-0.1 ^0.5 run tp @e[type=marker,tag=aote_arrow_volley,sort=nearest,limit=1] ~ ~ ~

# Refresh the volley marker's rotation every tick so each pair uses the player's current look direction.
data modify entity @s Rotation set from entity @p Rotation

# Two arrows per tick for 25 ticks = exactly 50 arrows.
scoreboard players add @s aote_t 1
execute if score @s aote_t matches ..25 positioned ^ ^ ^0.5 run function aote:arrow/fire_pair
execute if score @s aote_t matches 25.. run kill @s
