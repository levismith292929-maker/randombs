# Runs as a temporary marker 3 blocks ahead of the arrow.
execute store result score #mx aote_t run data get entity @s Pos[0] 1000
execute store result score #my aote_t run data get entity @s Pos[1] 1000
execute store result score #mz aote_t run data get entity @s Pos[2] 1000
scoreboard players operation #mx aote_t -= #ax aote_t
scoreboard players operation #my aote_t -= #ay aote_t
scoreboard players operation #mz aote_t -= #az aote_t
kill @s
