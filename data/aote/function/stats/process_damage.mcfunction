scoreboard players operation @s aote_stat_reduction = @s aote_stat_defense
scoreboard players add @s aote_stat_reduction 50
scoreboard players operation @s aote_stat_reduction /= #hundred aote_stat_const
execute if score @s aote_stat_reduction matches 100.. run scoreboard players set @s aote_stat_reduction 100
scoreboard players set @s aote_stat_remaining 100
scoreboard players operation @s aote_stat_remaining -= @s aote_stat_reduction
scoreboard players operation @s aote_stat_effective = @s aote_stat_damage_diff
scoreboard players operation @s aote_stat_effective *= @s aote_stat_remaining
scoreboard players add @s aote_stat_effective 50
scoreboard players operation @s aote_stat_effective /= #hundred aote_stat_const
scoreboard players operation @s aote_stat_health -= @s aote_stat_effective
