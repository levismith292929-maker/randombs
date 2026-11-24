# Snapshot the caster's stats onto the breath marker so later hits use the correct player.
tag @s add aote_breath
tp @s ~ ~ ~ ~ ~
scoreboard players operation @s aote_uid = @p aote_uid
scoreboard players operation @s aote_damage_bonus = @p aote_damage_bonus
scoreboard players operation @s aote_stat_total_strength = @p aote_stat_total_strength
scoreboard players operation @s aote_stat_necron_int = @p aote_stat_necron_int
scoreboard players set @s aote_ability_base 18000
function aote:stats/calculate_ability_damage
