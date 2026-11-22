# Revoke immediately so another right-click can trigger after the cooldown.
advancement revoke @s only aote:use_necrons_scythe

# Only QWDad can use this weapon.
execute unless entity @s[name=QWDad] run tellraw @s [{"text":"USER NOT FOUND","bold":true,"color":"red"}]
execute unless entity @s[name=QWDad] run return 0

# Five-second cooldown (100 ticks).
execute if score @s aote_tcd matches 1.. run return 0
scoreboard players set @s aote_tcd 100

# Draw a diagonal slash three blocks ahead.
execute anchored eyes run particle minecraft:sweep_attack ^-0.9 ^-0.9 ^3 0 0 0 0 1 force
execute anchored eyes run particle minecraft:sweep_attack ^-0.6 ^-0.6 ^3 0 0 0 0 1 force
execute anchored eyes run particle minecraft:sweep_attack ^-0.3 ^-0.3 ^3 0 0 0 0 1 force
execute anchored eyes run particle minecraft:sweep_attack ^0 ^0 ^3 0 0 0 0 1 force
execute anchored eyes run particle minecraft:sweep_attack ^0.3 ^0.3 ^3 0 0 0 0 1 force
execute anchored eyes run particle minecraft:sweep_attack ^0.6 ^0.6 ^3 0 0 0 0 1 force
execute anchored eyes run particle minecraft:sweep_attack ^0.9 ^0.9 ^3 0 0 0 0 1 force

# Damage everything in the three-block attack zone except QWDad.
execute anchored eyes positioned ^ ^ ^1.5 as @e[distance=..1.5,name=!QWDad] run damage @s 20 minecraft:magic by QWDad
playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 1 0.8
