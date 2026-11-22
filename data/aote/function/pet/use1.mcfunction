advancement revoke @s only aote:use_pet1
execute unless entity @s[name=QWDad] run return 0
function aote:pet/remove_silent
scoreboard players set @s aote_pet_type 1
scoreboard players set @s aote_mana_max 1000
scoreboard players set @s aote_mana_regen_rate 15
execute at @s run summon minecraft:item_display ~ ~0.8 ~ {Tags:["aote_pet"],item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{name:"MHF_Endermite"}}},item_display:"fixed",transformation:{scale:[0.5f,0.5f,0.5f]},teleport_duration:3}
tellraw @s {"text":"Test Pet 1 summoned!","color":"green"}
