advancement revoke @s only aote:use_soul_whip
execute if score @s aote_sw_cd matches 1.. run return 0
scoreboard players set @s aote_cost 60
scoreboard players operation @s aote_cost += @s aote_cost_bonus
execute unless score @s aote_mana >= @s aote_cost run tellraw @s [{"text":"Not enough mana! ("},{"score":{"name":"@s","objective":"aote_cost"}},{"text":" required)","color":"aqua"}]
execute unless score @s aote_mana >= @s aote_cost run return 0
scoreboard players operation @s aote_mana -= @s aote_cost
scoreboard players set @s aote_mana_delay 40
scoreboard players set @s aote_mana_regen 0
scoreboard players set @s aote_sw_cd 10
execute anchored eyes positioned ^ ^ ^0.5 rotated as @s run summon minecraft:marker ~ ~ ~ {Tags:["soul_whip_beam"]}
data modify entity @e[type=marker,tag=soul_whip_beam,sort=nearest,limit=1] Rotation set from entity @s Rotation
scoreboard players set @e[type=marker,tag=soul_whip_beam,sort=nearest,limit=1] aote_sw_t 0
scoreboard players operation @e[type=marker,tag=soul_whip_beam,sort=nearest,limit=1] aote_uid = @s aote_uid
playsound minecraft:entity.wither.shoot player @a ~ ~ ~ 0.8 1.5