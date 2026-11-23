advancement revoke @s only aote:use
item replace entity @s weapon.mainhand with minecraft:diamond_sword[minecraft:custom_data={item:"aote"},minecraft:custom_name={text:"Aspect of the End",italic:false},minecraft:enchantment_glint_override=true,minecraft:lore=[{text:"Ability: Instant Transmission  RIGHT CLICK",color:"gold",italic:false},{text:"Teleports you 5 blocks in the direction",color:"gray",italic:false},{text:"you are facing.",color:"gray",italic:false},{text:"Mana Cost: 35",color:"blue",italic:false},{text:"Cooldown: 2 ticks",color:"blue",italic:false}],minecraft:consumable={consume_seconds:0.05,animation:"none",has_consume_particles:false}]
execute if score @s aote_end_cd matches 1.. run return 0
scoreboard players set @s aote_cost 35
scoreboard players operation @s aote_cost += @s aote_cost_bonus
execute unless score @s aote_mana >= @s aote_cost run tellraw @s [{"text":"Not enough mana! ("},{"score":{"name":"@s","objective":"aote_cost"}},{"text":" required)","color":"aqua"}]
execute unless score @s aote_mana >= @s aote_cost run return 0
scoreboard players operation @s aote_mana -= @s aote_cost
scoreboard players set @s aote_mana_delay 40
scoreboard players set @s aote_mana_regen 0
tp @s ^ ^ ^5
# Brief slow falling prevents downward speed from building up between teleports.
effect give @s minecraft:slow_falling 1 0 true
scoreboard players set @s aote_end_cd 2
