# Runs as QWDad. Fires the center arrow and two arrows spread 10 degrees to each side.
execute anchored eyes positioned ^ ^ ^0.5 run function aote:terminator/spawn
execute anchored eyes rotated ~10 ~ positioned ^ ^ ^0.5 run function aote:terminator/spawn
execute anchored eyes rotated ~-10 ~ positioned ^ ^ ^0.5 run function aote:terminator/spawn
playsound minecraft:entity.arrow.shoot player @a ~ ~ ~ 1 1
