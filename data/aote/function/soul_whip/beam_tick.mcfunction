scoreboard players add @s aote_sw_t 1
execute if score @s aote_sw_t matches 11.. run kill @s
# Run the whip from its owner's current eye position and look direction.
execute if score @s aote_sw_t matches 1..10 as @a at @s if score @s aote_uid = @e[type=marker,tag=soul_whip_beam,sort=nearest,limit=1] aote_uid anchored eyes rotated as @s positioned ^ ^ ^0.5 run function aote:soul_whip/beam_particles
execute if score @s aote_sw_t matches 1..10 as @a at @s if score @s aote_uid = @e[type=marker,tag=soul_whip_beam,sort=nearest,limit=1] aote_uid anchored eyes rotated as @s positioned ^ ^ ^0.5 run function aote:soul_whip/beam_damage
