advancement revoke @s only aote:use_pet4
function aote:pet/remove_silent
scoreboard players set @s aote_pet_type 4
scoreboard players set @s aote_mana_max 600
scoreboard players set @s aote_mana_regen_rate 30
scoreboard players set @s aote_damage_bonus 5
attribute @s minecraft:attack_damage modifier add aote:pet_damage 0.05 add_multiplied_total
effect give @s minecraft:resistance infinite 0 true
execute if score @s aote_mana > @s aote_mana_max run scoreboard players operation @s aote_mana = @s aote_mana_max
execute at @s run summon minecraft:item_display ~ ~0.8 ~ {Tags:["aote_pet"],item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{name:"MHF_Golem"}}},item_display:"fixed",transformation:{scale:[0.5f,0.5f,0.5f]},teleport_duration:3}
tellraw @s {"text":"Iron Golem pet activated!","color":"green"}
