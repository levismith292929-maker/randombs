# Runs as each homing arrow, at its position.
execute unless entity @s[tag=aote_home] run return 0

# Give up after 10 seconds.
scoreboard players add @s aote_t 1
execute if score @s aote_t matches 200.. run return run kill @s

# First 0.3 seconds (6 ticks) after firing: fly straight, no homing yet.
execute if score @s aote_t matches ..5 run return 0

# Pick a target (aote_target), re-picked every tick, never QWDad, only living mobs that are not already dying.
# 1) Nearest mob that has NOT just been hurt, so arrows spread out instead of piling onto one mob.
tag @e[type=!#aote:non_targets,name=!QWDad,distance=..40,nbt={DeathTime:0s},nbt=!{Health:0.0f},nbt={HurtTime:0s},limit=1,sort=nearest] add aote_target
# 2) Otherwise the nearest living mob, even if it was just hurt.
execute unless entity @e[tag=aote_target,limit=1] run tag @e[type=!#aote:non_targets,name=!QWDad,distance=..40,nbt={DeathTime:0s},nbt=!{Health:0.0f},limit=1,sort=nearest] add aote_target

# Nothing alive left in range. An arrow that already had a target is spent, so remove it. A fresh arrow just keeps flying.
execute unless entity @e[tag=aote_target,limit=1] if entity @s[tag=aote_locked] run return run kill @s
execute unless entity @e[tag=aote_target,limit=1] run return 0

function aote:terminator/engage

tag @e[tag=aote_target] remove aote_target
