# Runs as the orb marker, at the marker, every tick.
scoreboard players add @s aote_t 1
execute if score @s aote_t matches 101.. run return run kill @s
execute unless entity @p[limit=1] run return run kill @s

# Follow QWDad's position one block above their feet without copying their camera rotation.
execute positioned as @p[limit=1] run tp @s ~ ~1 ~ ~3 0
# Draw the orbs using the marker's own slowly changing rotation.
execute at @s run function aote:astraea/orb_draw
