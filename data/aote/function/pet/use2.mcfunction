advancement revoke @s only aote:use_pet2
execute unless entity @s[name=QWDad] run return 0
give @s minecraft:command_block[minecraft:item_model="minecraft:player_head",minecraft:custom_data={item:"pet2"},minecraft:custom_name={"text":"Ender Dragon","italic":false},minecraft:enchantment_glint_override=true,minecraft:consumable={consume_seconds:0.05,animation:"none",has_consume_particles:false},minecraft:lore=[{text:"Ability: Summon Pet  RIGHT CLICK",color:"gold",italic:false},{text:"Max Mana: 300",color:"blue",italic:false},{text:"Mana Regeneration: 20/sec",color:"blue",italic:false},{text:"Damage: +15%",color:"blue",italic:false}],minecraft:profile={properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWVjM2ZmNTYzMjkwYjEzZmYzYmNjMzY4OThhZjdlYWE5ODhiNmNjMThkYzI1NDE0N2Y1ODM3NGFmZTliMjFiOSJ9fX0="}]}] 1
function aote:pet/remove_silent
scoreboard players set @s aote_pet_type 2
scoreboard players set @s aote_mana_max 300
scoreboard players set @s aote_mana_regen_rate 20
scoreboard players set @s aote_cost_bonus 0
scoreboard players set @s aote_damage_bonus 15
attribute @s minecraft:attack_damage modifier add aote:pet_damage 0.15 add_multiplied_total
execute if score @s aote_mana > @s aote_mana_max run scoreboard players operation @s aote_mana = @s aote_mana_max
execute at @s run summon minecraft:item_display ~ ~0.8 ~ {Tags:["aote_pet"],item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWVjM2ZmNTYzMjkwYjEzZmYzYmNjMzY4OThhZjdlYWE5ODhiNmNjMThkYzI1NDE0N2Y1ODM3NGFmZTliMjFiOSJ9fX0="}]}}},item_display:"fixed",transformation:{scale:[0.5f,0.5f,0.5f]},teleport_duration:3}
tellraw @s {"text":"Ender Dragon summoned!","color":"green"}
