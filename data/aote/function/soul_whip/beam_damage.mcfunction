tag @s add soul_whip_user
execute positioned ^ ^ ^1 as @e[distance=..0.8,tag=!soul_whip_user,tag=!soul_whip_hit,type=!marker] run function aote:soul_whip/hit
execute positioned ^ ^-0.1 ^2 as @e[distance=..0.8,tag=!soul_whip_user,tag=!soul_whip_hit,type=!marker] run function aote:soul_whip/hit
execute positioned ^ ^-0.3 ^3 as @e[distance=..0.8,tag=!soul_whip_user,tag=!soul_whip_hit,type=!marker] run function aote:soul_whip/hit
execute positioned ^ ^-0.6 ^4 as @e[distance=..0.8,tag=!soul_whip_user,tag=!soul_whip_hit,type=!marker] run function aote:soul_whip/hit
execute positioned ^ ^-1 ^5 as @e[distance=..0.8,tag=!soul_whip_user,tag=!soul_whip_hit,type=!marker] run function aote:soul_whip/hit
execute positioned ^ ^-1.5 ^6 as @e[distance=..0.8,tag=!soul_whip_user,tag=!soul_whip_hit,type=!marker] run function aote:soul_whip/hit
execute positioned ^ ^-2.1 ^7 as @e[distance=..0.8,tag=!soul_whip_user,tag=!soul_whip_hit,type=!marker] run function aote:soul_whip/hit
execute positioned ^ ^-2.8 ^8 as @e[distance=..0.8,tag=!soul_whip_user,tag=!soul_whip_hit,type=!marker] run function aote:soul_whip/hit
execute positioned ^ ^-3.6 ^9 as @e[distance=..0.8,tag=!soul_whip_user,tag=!soul_whip_hit,type=!marker] run function aote:soul_whip/hit
execute positioned ^ ^-4.5 ^10 as @e[distance=..0.8,tag=!soul_whip_user,tag=!soul_whip_hit,type=!marker] run function aote:soul_whip/hit
execute positioned ^ ^-5.5 ^11 as @e[distance=..0.8,tag=!soul_whip_user,tag=!soul_whip_hit,type=!marker] run function aote:soul_whip/hit
execute positioned ^ ^-6.6 ^12 as @e[distance=..0.8,tag=!soul_whip_user,tag=!soul_whip_hit,type=!marker] run function aote:soul_whip/hit
execute positioned ^ ^-7.8 ^13 as @e[distance=..0.8,tag=!soul_whip_user,tag=!soul_whip_hit,type=!marker] run function aote:soul_whip/hit
tag @s remove soul_whip_user
tag @e[tag=soul_whip_hit] remove soul_whip_hit