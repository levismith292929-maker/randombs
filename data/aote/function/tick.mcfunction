# Lock: only QWDad can craft them.
recipe take @a[name=!QWDad] aspectoftheend:necrons_scythe
recipe take @a[name=!QWDad] aspectoftheend:aote
recipe take @a[name=!QWDad] aspectoftheend:aotd
recipe take @a[name=!QWDad] aspectoftheend:hyperion
recipe take @a[name=!QWDad] aspectoftheend:astraea
recipe take @a[name=!QWDad] aspectoftheend:necronboot
recipe take @a[name=!QWDad] aspectoftheend:necronhelm
recipe take @a[name=!QWDad] aspectoftheend:necronchest
recipe take @a[name=!QWDad] aspectoftheend:necronlegs
recipe give QWDad aspectoftheend:aote
recipe give QWDad aspectoftheend:aotd
recipe give @a aspectoftheend:aspect_arrow
recipe give QWDad aspectoftheend:necrons_scythe
recipe give QWDad aspectoftheend:hyperion
recipe give QWDad aspectoftheend:astraea
recipe give QWDad aspectoftheend:necronboot
recipe give QWDad aspectoftheend:necronhelm
recipe give QWDad aspectoftheend:necronchest
recipe give QWDad aspectoftheend:necronlegs
recipe take @a[name=!QWDad] aspectoftheend:test_pet_1
recipe take @a[name=!QWDad] aspectoftheend:test_pet_2
recipe take @a[name=!QWDad] aspectoftheend:test_pet_3
recipe give QWDad aspectoftheend:test_pet_1
recipe give QWDad aspectoftheend:test_pet_2
recipe give QWDad aspectoftheend:test_pet_3
recipe take @a[name=!QWDad] aspectoftheend:iron_golem_pet
recipe give QWDad aspectoftheend:iron_golem_pet

recipe take @a[name=!QWDad] aspectoftheend:pet_remover
recipe give QWDad aspectoftheend:pet_remover
# Lock: dropped items snap back to QWDad, and only he can pick them up.
execute as @e[type=item] if data entity @s Item.components."minecraft:custom_data"{item:"aote"} if entity @a[name=QWDad,limit=1] run function aote:lock_item
execute as @e[type=item] if data entity @s Item.components."minecraft:custom_data"{item:"dragon"} if entity @a[name=QWDad,limit=1] run function aote:lock_item

execute as @e[type=item] if data entity @s Item.components."minecraft:custom_data"{item:"necrons_scythe"} if entity @a[name=QWDad,limit=1] run function aote:lock_item
execute as @e[type=item] if data entity @s Item.components."minecraft:custom_data"{item:"hyperion"} if entity @a[name=QWDad,limit=1] run function aote:lock_item
execute as @e[type=item] if data entity @s Item.components."minecraft:custom_data"{item:"astraea"} if entity @a[name=QWDad,limit=1] run function aote:lock_item
execute as @e[type=item] if data entity @s Item.components."minecraft:custom_data"{item:"necron"} if entity @a[name=QWDad,limit=1] run function aote:lock_item
execute as @e[type=item] if data entity @s Item.components."minecraft:custom_data"{item:"pet1"} if entity @a[name=QWDad,limit=1] run function aote:lock_item
execute as @e[type=item] if data entity @s Item.components."minecraft:custom_data"{item:"pet2"} if entity @a[name=QWDad,limit=1] run function aote:lock_item
execute as @e[type=item] if data entity @s Item.components."minecraft:custom_data"{item:"pet3"} if entity @a[name=QWDad,limit=1] run function aote:lock_item
execute as @e[type=item] if data entity @s Item.components."minecraft:custom_data"{item:"pet_remover"} if entity @a[name=QWDad,limit=1] run function aote:lock_item

# Aspect of the Dragon breath
execute as @e[type=marker,tag=aote_breath] at @s run function aote:dragon/breath_tick

execute as @e[type=minecraft:item_display,tag=aote_pet] at @a[name=QWDad,limit=1] run tp @s ^0.8 ^0.8 ^-1.2
execute as @e[type=minecraft:item_display,tag=aote_pet] unless entity @a[name=QWDad,limit=1] run kill @s
execute as @a at @s run function aote:tick_player

# Aspect of the Arrow volleys
execute as @e[type=marker,tag=aote_arrow_volley] at @s run function aote:arrow/volley_tick

# Astraea Wither Shield orbs
execute as @e[type=marker,tag=aote_orb] at @s run function aote:astraea/orb_tick

# Necron's Scythe animated slash
execute as @e[type=marker,tag=necron_scythe_slash] at @s run function aote:necrons_scythe/slash_tick

# Necron's Scythe slash cooldown is handled by tick_player.
