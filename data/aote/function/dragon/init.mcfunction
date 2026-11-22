# Runs as the new marker; position and facing come from the player's mouth.
tag @s add aote_breath
tp @s ~ ~ ~ ~ ~
scoreboard players operation @s aote_damage_bonus = @p aote_damage_bonus
