scoreboard players add @s aote_sw_t 1
# The marker keeps the exact position and rotation captured when the ability was used.
execute if score @s aote_sw_t matches 1..11 run function aote:soul_whip/beam_particles
execute if score @s aote_sw_t matches 1..8 as @a if score @s aote_uid = @e[type=marker,tag=soul_whip_beam,sort=nearest,limit=1] aote_uid run function aote:soul_whip/beam_damage
execute if score @s aote_sw_t matches 12 run tag @e[tag=soul_whip_hit] remove soul_whip_hit
execute if score @s aote_sw_t matches 12 run kill @s
