# Runs as an arrow that has a living target (tagged aote_target), at the arrow's position.
tag @s add aote_locked

# Spent arrow: the only mobs left are ones that were just hurt (10 or 9 = this tick or last), and one is right next to us.
# That means the arrow hit (or bounced off / went through), so remove it.
execute if entity @e[tag=aote_target,distance=..5,nbt={HurtTime:10s}] run return run kill @s
execute if entity @e[tag=aote_target,distance=..5,nbt={HurtTime:9s}] run return run kill @s

# Steer: point the motion at the target (3 blocks per tick).
execute store result score #ax aote_t run data get entity @s Pos[0] 1000
execute store result score #ay aote_t run data get entity @s Pos[1] 1000
execute store result score #az aote_t run data get entity @s Pos[2] 1000
execute facing entity @e[tag=aote_target,limit=1] eyes positioned ^ ^ ^3 summon minecraft:marker run function aote:terminator/read
execute store result entity @s Motion[0] double 0.001 run scoreboard players get #mx aote_t
execute store result entity @s Motion[1] double 0.001 run scoreboard players get #my aote_t
execute store result entity @s Motion[2] double 0.001 run scoreboard players get #mz aote_t

# Stuck in the ground or a block (flag set, or sitting inside a solid block): pull it out toward the target.
scoreboard players set #stuck aote_t 0
execute if entity @s[nbt={inGround:true}] run scoreboard players set #stuck aote_t 1
execute unless block ~ ~ ~ #aote:raycast_ignored run scoreboard players set #stuck aote_t 1
execute if score #stuck aote_t matches 1 run function aote:terminator/unstick
