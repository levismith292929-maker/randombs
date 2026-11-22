# Everyone can discover and craft every custom recipe.
recipe give @a aspectoftheend:aote
recipe give @a aspectoftheend:aotd
recipe give @a aspectoftheend:aspect_arrow
recipe give @a aspectoftheend:necrons_scythe
recipe give @a aspectoftheend:hyperion
recipe give @a aspectoftheend:astraea
recipe give @a aspectoftheend:necronboot
recipe give @a aspectoftheend:necronhelm
recipe give @a aspectoftheend:necronchest
recipe give @a aspectoftheend:necronlegs
recipe give @a aspectoftheend:test_pet_1
recipe give @a aspectoftheend:test_pet_2
recipe give @a aspectoftheend:test_pet_3
recipe give @a aspectoftheend:iron_golem_pet
recipe give @a aspectoftheend:pet_remover
recipe give @a aspectoftheend:zombie_sword

# Ability effects
execute as @e[type=marker,tag=aote_breath] at @s run function aote:dragon/breath_tick
execute as @a at @s run function aote:tick_player
execute as @e[type=marker,tag=aote_arrow_volley] at @s run function aote:arrow/volley_tick
execute as @e[type=marker,tag=aote_orb] at @s run function aote:astraea/orb_tick
execute as @e[type=marker,tag=necron_scythe_slash] at @s run function aote:necrons_scythe/slash_tick
