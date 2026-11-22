# Runs as QWDad at his position. Implosion: no teleport, just the blast.
particle minecraft:explosion_emitter ~ ~1 ~ 0 0 0 0 1 force
particle minecraft:large_smoke ~ ~1 ~ 1.5 0.6 1.5 0.05 30 force
playsound minecraft:entity.generic.explode player @a ~ ~ ~ 1 1.2

# 20 damage to every living non-player mob within 5 blocks.
execute as @e[type=!minecraft:player,type=!#aote:non_targets,distance=..5,nbt={DeathTime:0s}] run damage @s 60 minecraft:player_explosion by @a[name=QWDad,limit=1]
