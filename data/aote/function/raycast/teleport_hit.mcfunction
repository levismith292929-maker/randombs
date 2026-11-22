# Teleport to the top-center of the block hit.
execute align xyz positioned ~0.5 ~1 ~0.5 run tp @s ~ ~ ~
execute align xyz positioned ~0.5 ~1 ~0.5 run particle minecraft:portal ~ ~1 ~ 0.45 0.8 0.45 0.15 45 force
execute align xyz positioned ~0.5 ~1 ~0.5 run particle minecraft:reverse_portal ~ ~1 ~ 0.3 0.6 0.3 0.05 25 force
execute align xyz positioned ~0.5 ~1 ~0.5 run playsound minecraft:entity.shulker.teleport master @a ~ ~ ~ 1 1
