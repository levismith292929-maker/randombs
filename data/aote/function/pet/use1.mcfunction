advancement revoke @s only aote:use_pet1
execute unless entity @s[name=QWDad] run return 0
function aote:pet/remove_silent
scoreboard players set @s aote_pet_type 1
scoreboard players set @s aote_mana_max 1000
scoreboard players set @s aote_mana_regen_rate 50
scoreboard players set @s aote_damage_bonus -20
attribute @s minecraft:attack_damage modifier add aote:pet_damage -0.2 add_multiplied_total
execute at @s run summon minecraft:item_display ~ ~0.8 ~ {Tags:["aote_pet"],item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{name:"MHF_Enderman"}}},item_display:"fixed",transformation:{scale:[0.5f,0.5f,0.5f]},teleport_duration:3}
tellraw @s {"text":"Enderman summoned!","color":"green"}
