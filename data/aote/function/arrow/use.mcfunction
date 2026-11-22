# Revoke immediately so right-click can be used again.
advancement revoke @s only aote:use_arrow

# Start a 25-tick volley: two arrows per tick, 50 total.
execute if score @s aote_dcd matches 0 anchored eyes positioned ^ ^-0.1 ^0.5 rotated as @s summon minecraft:marker run function aote:arrow/init
scoreboard players set @s aote_dcd 12
