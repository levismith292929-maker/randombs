advancement revoke @s only aote:use_pet1
execute unless entity @s[name=QWDad] run return 0
give @s minecraft:command_block[minecraft:item_model="minecraft:player_head",minecraft:custom_data={item:"pet1"},minecraft:custom_name={"text":"Enderman","italic":false},minecraft:enchantment_glint_override=true,minecraft:consumable={consume_seconds:0.05,animation:"none",has_consume_particles:false},minecraft:lore=[{text:"Ability: Summon Pet  RIGHT CLICK",color:"gold",italic:false},{text:"Max Mana: 1000",color:"blue",italic:false},{text:"Mana Regeneration: 50/sec",color:"blue",italic:false},{text:"Damage: -20%",color:"red",italic:false}],minecraft:profile={name:"MHF_Enderman"}] 1
function aote:pet/remove_silent
scoreboard players set @s aote_pet_type 1
scoreboard players set @s aote_mana_max 1000
scoreboard players set @s aote_mana_regen_rate 50
scoreboard players set @s aote_damage_bonus -20
attribute @s minecraft:attack_damage modifier add aote:pet_damage -0.2 add_multiplied_total
execute at @s run summon minecraft:item_display ~ ~0.8 ~ {Tags:["aote_pet"],item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{name:"MHF_Enderman"}}},item_display:"fixed",transformation:{scale:[0.5f,0.5f,0.5f]},teleport_duration:3}
tellraw @s {"text":"Enderman summoned!","color":"green"}
