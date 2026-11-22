# Runs as QWDad. 5 seconds of reduced damage taken plus an absorption shield (6 hearts).
effect give @s minecraft:resistance 5 0 true
effect give @s minecraft:absorption 5 2 true
playsound minecraft:entity.wither.ambient player @a ~ ~ ~ 0.6 1.6

# Spinning wither orbs: replace any old ones with a fresh marker that follows and rotates around the player for 5 seconds.
kill @e[type=minecraft:marker,tag=aote_orb]
summon minecraft:marker ~ ~ ~ {Tags:["aote_orb"]}
