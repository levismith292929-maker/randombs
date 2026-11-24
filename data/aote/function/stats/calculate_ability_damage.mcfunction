# Base damage is stored in thousandths. Strength adds 0.1 damage per point; Intelligence adds 0.2.
scoreboard players operation @s aote_ability_damage = @s aote_ability_base
scoreboard players operation @s aote_ability_damage *= #1000 aote_stat_const
scoreboard players operation @s aote_ability_temp = @s aote_stat_total_strength
scoreboard players operation @s aote_ability_temp *= #100 aote_stat_const
scoreboard players operation @s aote_ability_damage += @s aote_ability_temp
scoreboard players operation @s aote_ability_temp = @s aote_stat_necron_int
scoreboard players operation @s aote_ability_temp *= #100 aote_stat_const
scoreboard players operation @s aote_ability_temp *= #two aote_stat_const
scoreboard players operation @s aote_ability_damage += @s aote_ability_temp
# Apply the active pet's percentage after adding Strength and Intelligence.
scoreboard players operation @s aote_ability_temp = #hundred aote_stat_const
scoreboard players operation @s aote_ability_temp += @s aote_damage_bonus
scoreboard players operation @s aote_ability_damage *= @s aote_ability_temp
scoreboard players operation @s aote_ability_damage /= #hundred aote_stat_const
execute store result storage aote:macro damage double 0.001 run scoreboard players get @s aote_ability_damage
