# Runs as the volley marker. Explicitly copy the nearest shooter's look rotation.
tag @s add aote_arrow_volley
data modify entity @s Rotation set from entity @p Rotation
scoreboard players set @s aote_t 0
scoreboard players operation @s aote_damage_bonus = @p aote_damage_bonus
