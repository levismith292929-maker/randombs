advancement revoke @s only aote:use_dragon

# Lock: anyone but QWDad is refused.
execute unless entity @s[name=QWDad] run tellraw @s [{"text":"USER NOT FOUND","bold":true,"color":"red"}]
execute unless entity @s[name=QWDad] run return 0

# Breath starts at the mouth (eye level, slightly forward) and goes where you look.
execute if score @s aote_dcd matches 0 anchored eyes positioned ^ ^-0.1 ^0.3 summon minecraft:marker run function aote:dragon/init
scoreboard players set @s aote_dcd 12
