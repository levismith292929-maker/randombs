# Hit: first block that is not in aote:raycast_ignored (air is in that tag).
execute unless block ~ ~ ~ #aote:raycast_ignored run function aote:raycast/teleport_hit
# Otherwise keep marching.
execute if block ~ ~ ~ #aote:raycast_ignored run scoreboard players remove @s aote_steps 1
execute if block ~ ~ ~ #aote:raycast_ignored if score @s aote_steps matches 1.. positioned ^ ^ ^0.1 run function aote:raycast/teleport_step
