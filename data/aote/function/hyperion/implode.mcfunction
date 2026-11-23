particle minecraft:explosion_emitter ~ ~1 ~ 0 0 0 0 1 normal
particle minecraft:large_smoke ~ ~1 ~ 1.5 0.6 1.5 0.05 30 normal
playsound minecraft:entity.generic.explode player @a ~ ~ ~ 1 1.2
execute as @e[type=!minecraft:player,type=!#aote:non_targets,distance=..5,nbt={DeathTime:0s}] if score @p[limit=1] aote_damage_bonus matches 40 run damage @s 84 minecraft:player_explosion
execute as @e[type=!minecraft:player,type=!#aote:non_targets,distance=..5,nbt={DeathTime:0s}] if score @p[limit=1] aote_damage_bonus matches 15 run damage @s 69 minecraft:player_explosion
execute as @e[type=!minecraft:player,type=!#aote:non_targets,distance=..5,nbt={DeathTime:0s}] if score @p[limit=1] aote_damage_bonus matches 5 run damage @s 63 minecraft:player_explosion
execute as @e[type=!minecraft:player,type=!#aote:non_targets,distance=..5,nbt={DeathTime:0s}] if score @p[limit=1] aote_damage_bonus matches -20 run damage @s 48 minecraft:player_explosion
execute as @e[type=!minecraft:player,type=!#aote:non_targets,distance=..5,nbt={DeathTime:0s}] unless score @p[limit=1] aote_damage_bonus matches -20..-20 unless score @p[limit=1] aote_damage_bonus matches 5 unless score @p[limit=1] aote_damage_bonus matches 15 unless score @p[limit=1] aote_damage_bonus matches 40 run damage @s 60 minecraft:player_explosion

