scoreboard players operation @s aote_damage_bonus = @e[type=marker,tag=aote_arrow_volley,sort=nearest,limit=1] aote_damage_bonus
execute if score @s aote_damage_bonus matches 40 run data modify entity @s damage set value 7.7d
execute if score @s aote_damage_bonus matches 15 run data modify entity @s damage set value 6.325d
execute if score @s aote_damage_bonus matches 5 run data modify entity @s damage set value 5.775d
execute if score @s aote_damage_bonus matches -20 run data modify entity @s damage set value 4.4d
execute unless score @s aote_damage_bonus matches -20 unless score @s aote_damage_bonus matches 5 unless score @s aote_damage_bonus matches 15 unless score @s aote_damage_bonus matches 40 run data modify entity @s damage set value 5.5d

# Build a unit direction vector from the volley marker's position and facing.
execute at @e[type=marker,tag=aote_arrow_volley,sort=nearest,limit=1] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["aote_vec_origin"],Duration:2}
execute at @e[type=marker,tag=aote_arrow_volley,sort=nearest,limit=1] rotated as @e[type=marker,tag=aote_arrow_volley,sort=nearest,limit=1] positioned ^ ^ ^1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["aote_vec_forward"],Duration:2}
execute store result score #ox aote_vec run data get entity @e[type=minecraft:area_effect_cloud,tag=aote_vec_origin,limit=1] Pos[0] 1000
execute store result score #oy aote_vec run data get entity @e[type=minecraft:area_effect_cloud,tag=aote_vec_origin,limit=1] Pos[1] 1000
execute store result score #oz aote_vec run data get entity @e[type=minecraft:area_effect_cloud,tag=aote_vec_origin,limit=1] Pos[2] 1000
execute store result score #fx aote_vec run data get entity @e[type=minecraft:area_effect_cloud,tag=aote_vec_forward,limit=1] Pos[0] 1000
execute store result score #fy aote_vec run data get entity @e[type=minecraft:area_effect_cloud,tag=aote_vec_forward,limit=1] Pos[1] 1000
execute store result score #fz aote_vec run data get entity @e[type=minecraft:area_effect_cloud,tag=aote_vec_forward,limit=1] Pos[2] 1000
scoreboard players operation #dx aote_vec = #fx aote_vec
scoreboard players operation #dx aote_vec -= #ox aote_vec
scoreboard players operation #dy aote_vec = #fy aote_vec
scoreboard players operation #dy aote_vec -= #oy aote_vec
scoreboard players operation #dz aote_vec = #fz aote_vec
scoreboard players operation #dz aote_vec -= #oz aote_vec
execute store result entity @s Motion[0] double 0.001 run scoreboard players get #dx aote_vec
execute store result entity @s Motion[1] double 0.001 run scoreboard players get #dy aote_vec
execute store result entity @s Motion[2] double 0.001 run scoreboard players get #dz aote_vec
data merge entity @s {NoGravity:1b}
kill @e[type=minecraft:area_effect_cloud,tag=aote_vec_origin]
kill @e[type=minecraft:area_effect_cloud,tag=aote_vec_forward]
