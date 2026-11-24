tag @s add aote_hyperion_caster
scoreboard players set @s aote_ability_base 60000
function aote:stats/calculate_ability_damage
particle minecraft:explosion_emitter ~ ~1 ~ 0 0 0 0 1 normal
particle minecraft:large_smoke ~ ~1 ~ 1.5 0.6 1.5 0.05 30 normal
playsound minecraft:entity.generic.explode player @a ~ ~ ~ 1 1.2
execute as @e[type=!#aote:non_targets,distance=..5,tag=!aote_hyperion_caster,nbt={DeathTime:0s}] run function aote:hyperion/deal_damage with storage aote:macro
tag @s remove aote_hyperion_caster
