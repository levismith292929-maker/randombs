# Cooldowns: stay above 0 while right-click is held, so holding does not spam.
scoreboard players add @s aote_cd 0
scoreboard players add @s aote_dcd 0
scoreboard players add @s aote_tcd 0
execute if score @s aote_cd matches 1.. run scoreboard players remove @s aote_cd 1
execute if score @s aote_dcd matches 1.. run scoreboard players remove @s aote_dcd 1
execute if score @s aote_tcd matches 1.. run scoreboard players remove @s aote_tcd 1

# Cooldown actionbar: display the cooldown for the weapon in the main hand.
# Shared cooldown: AOTE, Hyperion, and Astraea.
execute if items entity @s weapon.mainhand minecraft:diamond_sword[minecraft:custom_data~{item:aote}] if score @s aote_cd matches 0 run title @s actionbar {"text":"AOTE: READY","color":"green"}
execute if items entity @s weapon.mainhand minecraft:diamond_sword[minecraft:custom_data~{item:aote}] if score @s aote_cd matches 1.. run title @s actionbar [{"text":"AOTE: "},{"score":{"name":"@s","objective":"aote_cd"}},{"text":" ticks","color":"yellow"}]

execute if items entity @s weapon.mainhand minecraft:repeating_command_block[minecraft:custom_data~{item:hyperion}] if score @s aote_cd matches 0 run title @s actionbar {"text":"Hyperion: READY","color":"green"}
execute if items entity @s weapon.mainhand minecraft:repeating_command_block[minecraft:custom_data~{item:hyperion}] if score @s aote_cd matches 1.. run title @s actionbar [{"text":"Hyperion: "},{"score":{"name":"@s","objective":"aote_cd"}},{"text":" ticks","color":"yellow"}]

execute if items entity @s weapon.mainhand minecraft:command_block[minecraft:custom_data~{item:astraea}] if score @s aote_cd matches 0 run title @s actionbar {"text":"Astraea: READY","color":"green"}
execute if items entity @s weapon.mainhand minecraft:command_block[minecraft:custom_data~{item:astraea}] if score @s aote_cd matches 1.. run title @s actionbar [{"text":"Astraea: "},{"score":{"name":"@s","objective":"aote_cd"}},{"text":" ticks","color":"yellow"}]

# Shared cooldown: AOTD and AOTA.
execute if items entity @s weapon.mainhand minecraft:netherite_sword[minecraft:custom_data~{item:dragon}] if score @s aote_dcd matches 0 run title @s actionbar {"text":"AOTD: READY","color":"green"}
execute if items entity @s weapon.mainhand minecraft:netherite_sword[minecraft:custom_data~{item:dragon}] if score @s aote_dcd matches 1.. run title @s actionbar [{"text":"AOTD: "},{"score":{"name":"@s","objective":"aote_dcd"}},{"text":" ticks","color":"yellow"}]

execute if items entity @s weapon.mainhand minecraft:netherite_sword[minecraft:custom_data~{item:arrow}] if score @s aote_dcd matches 0 run title @s actionbar {"text":"AOTA: READY","color":"green"}
execute if items entity @s weapon.mainhand minecraft:netherite_sword[minecraft:custom_data~{item:arrow}] if score @s aote_dcd matches 1.. run title @s actionbar [{"text":"AOTA: "},{"score":{"name":"@s","objective":"aote_dcd"}},{"text":" ticks","color":"yellow"}]

# Necron's Scythe has its own five-second cooldown.
execute if items entity @s weapon.mainhand minecraft:chain_command_block[minecraft:custom_data~{item:necrons_scythe}] if score @s aote_tcd matches 0 run title @s actionbar {"text":"Necron's Scythe: READY","color":"green"}
execute if items entity @s weapon.mainhand minecraft:chain_command_block[minecraft:custom_data~{item:necrons_scythe}] if score @s aote_tcd matches 1.. run title @s actionbar [{"text":"Necron's Scythe: "},{"score":{"name":"@s","objective":"aote_tcd"}},{"text":" ticks","color":"yellow"}]

# Preview marker while the Aspect of the End is in the main hand.
execute if entity @s[name=QWDad] if items entity @s weapon.mainhand minecraft:diamond_sword[minecraft:custom_data~{item:aote}] run function aote:preview/start
