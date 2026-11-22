# Refresh the volley marker's rotation every tick so each pair uses the player's current look direction.
data modify entity @s Rotation set from entity @p Rotation

# Two arrows per tick for 25 ticks = exactly 50 arrows.
scoreboard players add @s aote_t 1
execute if score @s aote_t matches ..25 positioned ^ ^ ^0.5 run function aote:arrow/fire_pair
execute if score @s aote_t matches 25.. run kill @s
