# Runs as an arrow that is stuck in a block.
data modify entity @s inGround set value 0b
execute facing entity @e[tag=aote_target,limit=1] eyes run tp @s ^ ^ ^1.5 facing entity @e[tag=aote_target,limit=1] eyes
