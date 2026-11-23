tag @s add soul_whip_user
execute if score @e[type=marker,tag=soul_whip_beam,sort=nearest,limit=1] aote_sw_t matches 1 positioned ^ ^ ^1 as @e[distance=..0.9,tag=!soul_whip_user,tag=!soul_whip_hit,type=!marker] run function aote:soul_whip/hit
execute if score @e[type=marker,tag=soul_whip_beam,sort=nearest,limit=1] aote_sw_t matches 1 positioned ^ ^-0.1 ^2 as @e[distance=..0.9,tag=!soul_whip_user,tag=!soul_whip_hit,type=!marker] run function aote:soul_whip/hit
execute if score @e[type=marker,tag=soul_whip_beam,sort=nearest,limit=1] aote_sw_t matches 2 positioned ^ ^-0.3 ^3 as @e[distance=..0.9,tag=!soul_whip_user,tag=!soul_whip_hit,type=!marker] run function aote:soul_whip/hit
execute if score @e[type=marker,tag=soul_whip_beam,sort=nearest,limit=1] aote_sw_t matches 2 positioned ^ ^-0.6 ^4 as @e[distance=..0.9,tag=!soul_whip_user,tag=!soul_whip_hit,type=!marker] run function aote:soul_whip/hit
execute if score @e[type=marker,tag=soul_whip_beam,sort=nearest,limit=1] aote_sw_t matches 3 positioned ^ ^-1 ^5 as @e[distance=..0.9,tag=!soul_whip_user,tag=!soul_whip_hit,type=!marker] run function aote:soul_whip/hit
execute if score @e[type=marker,tag=soul_whip_beam,sort=nearest,limit=1] aote_sw_t matches 3 positioned ^ ^-1.5 ^6 as @e[distance=..0.9,tag=!soul_whip_user,tag=!soul_whip_hit,type=!marker] run function aote:soul_whip/hit
execute if score @e[type=marker,tag=soul_whip_beam,sort=nearest,limit=1] aote_sw_t matches 4 positioned ^ ^-2.1 ^7 as @e[distance=..0.9,tag=!soul_whip_user,tag=!soul_whip_hit,type=!marker] run function aote:soul_whip/hit
execute if score @e[type=marker,tag=soul_whip_beam,sort=nearest,limit=1] aote_sw_t matches 4 positioned ^ ^-2.8 ^8 as @e[distance=..0.9,tag=!soul_whip_user,tag=!soul_whip_hit,type=!marker] run function aote:soul_whip/hit
execute if score @e[type=marker,tag=soul_whip_beam,sort=nearest,limit=1] aote_sw_t matches 5 positioned ^ ^-3.6 ^9 as @e[distance=..0.9,tag=!soul_whip_user,tag=!soul_whip_hit,type=!marker] run function aote:soul_whip/hit
execute if score @e[type=marker,tag=soul_whip_beam,sort=nearest,limit=1] aote_sw_t matches 5 positioned ^ ^-4.5 ^10 as @e[distance=..0.9,tag=!soul_whip_user,tag=!soul_whip_hit,type=!marker] run function aote:soul_whip/hit
execute if score @e[type=marker,tag=soul_whip_beam,sort=nearest,limit=1] aote_sw_t matches 6 positioned ^ ^-5.5 ^11 as @e[distance=..0.9,tag=!soul_whip_user,tag=!soul_whip_hit,type=!marker] run function aote:soul_whip/hit
execute if score @e[type=marker,tag=soul_whip_beam,sort=nearest,limit=1] aote_sw_t matches 7 positioned ^ ^-6.6 ^12 as @e[distance=..0.9,tag=!soul_whip_user,tag=!soul_whip_hit,type=!marker] run function aote:soul_whip/hit
execute if score @e[type=marker,tag=soul_whip_beam,sort=nearest,limit=1] aote_sw_t matches 8 positioned ^ ^-7.8 ^13 as @e[distance=..0.9,tag=!soul_whip_user,tag=!soul_whip_hit,type=!marker] run function aote:soul_whip/hit
tag @s remove soul_whip_user
