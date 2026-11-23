advancement revoke @s only aote:use_ore_tracker
execute if score @s aote_ore_cd matches 1.. run tellraw @s [{"text":"Ore Tracker is on cooldown! ","color":"yellow"},{"score":{"name":"@s","objective":"aote_ore_cd"}},{"text":" ticks remaining.","color":"yellow"}]
execute if score @s aote_ore_cd matches 1.. run return 0
scoreboard players set @s aote_cost 100
scoreboard players operation @s aote_cost += @s aote_cost_bonus
execute unless score @s aote_mana >= @s aote_cost run tellraw @s [{"text":"Not enough mana! ("},{"score":{"name":"@s","objective":"aote_cost"}},{"text":" required)","color":"aqua"}]
execute unless score @s aote_mana >= @s aote_cost run return 0
scoreboard players operation @s aote_mana -= @s aote_cost
scoreboard players set @s aote_mana_delay 40
scoreboard players set @s aote_mana_regen 0
scoreboard players set @s aote_ore_cd 600
execute at @s align xyz run summon marker ~0.5 ~0.5 ~0.5
execute at @s run scoreboard players operation @e[type=marker,tag=aote_ore_scan,sort=nearest,limit=1] aote_uid = @s aote_uid
execute at @s run scoreboard players set @e[type=marker,tag=aote_ore_scan,sort=nearest,limit=1] aote_ore_scan 0
tellraw @s {"text":"Searching within 32 blocks in this dimension...","color":"aqua"}