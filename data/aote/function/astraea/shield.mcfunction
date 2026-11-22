# Wither Shield: Resistance II and Absorption IV for 10 seconds.
effect give @s minecraft:resistance 10 1 true
effect give @s minecraft:absorption 10 3 true
playsound minecraft:entity.wither.ambient player @a ~ ~ ~ 0.6 1.6

# Spinning wither orbs: replace old ones with a fresh marker for 5 seconds.
execute as @e[type=minecraft:marker,tag=aote_orb] if score @s aote_uid = @p[limit=1] aote_uid run kill @s
summon minecraft:marker ~ ~1 ~ {Tags:["aote_orb"]}
scoreboard players operation @e[type=minecraft:marker,tag=aote_orb,sort=nearest,limit=1] aote_uid = @s aote_uid
