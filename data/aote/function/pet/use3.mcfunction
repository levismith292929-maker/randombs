advancement revoke @s only aote:use_pet3
function aote:pet/remove_silent
scoreboard players set @s aote_pet_type 3
scoreboard players set @s aote_mana_max 750
scoreboard players set @s aote_mana_regen_rate 10
scoreboard players set @s aote_damage_bonus 40
attribute @s minecraft:attack_damage modifier add aote:pet_damage 0.4 add_multiplied_total
execute if score @s aote_mana > @s aote_mana_max run scoreboard players operation @s aote_mana = @s aote_mana_max
execute at @s run summon minecraft:item_display ~ ~0.8 ~ {Tags:["aote_pet"],item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMmU5ZjliMWZjMDE0MTY2Y2I0NmEwOTNlNTM0OWIyYmY2ZWRkMjAxYjY4MGQ2MmU0OGRiZjNhZjliMDQ1OTExNiJ9fX0="}]}}},item_display:"fixed",transformation:{scale:[0.5f,0.5f,0.5f]},teleport_duration:3}
scoreboard players operation @e[type=minecraft:item_display,tag=aote_pet,sort=nearest,limit=1] aote_uid = @s aote_uid
tellraw @s {"text":"Golden Dragon pet activated!","color":"green"}
