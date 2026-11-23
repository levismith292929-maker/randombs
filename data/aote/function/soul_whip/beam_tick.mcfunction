scoreboard players add @s aote_sw_t 1
execute if score @s aote_sw_t matches 11.. run kill @s
execute if score @s aote_sw_t matches 1..10 run function aote:soul_whip/beam_particles
execute if score @s aote_sw_t matches 1..10 as @a if score @s aote_uid = @e[type=marker,tag=soul_whip_beam,sort=nearest,limit=1] aote_uid run function aote:soul_whip/beam_damage