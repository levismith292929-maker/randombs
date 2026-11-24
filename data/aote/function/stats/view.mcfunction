advancement revoke @s only aote:view_stats
scoreboard players add @s aote_stat_damage_display 0
execute unless items entity @s hotbar.8 minecraft:nether_star[minecraft:custom_data~{aote_view_stats:1b}] run item replace entity @s hotbar.8 with minecraft:nether_star[minecraft:custom_name={text:'View Stats',italic:false},minecraft:custom_data={aote_view_stats:1b},minecraft:food={nutrition:0,saturation:0.0,can_always_eat:true},minecraft:consumable={consume_seconds:0.05,animation:"eat",sound:"minecraft:entity.generic.eat",has_consume_particles:false}] 1
