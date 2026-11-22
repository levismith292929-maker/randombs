# Cooldowns: stay above 0 while right-click is held, so holding does not spam.
scoreboard players add @s aote_cd 0
scoreboard players add @s aote_dcd 0
scoreboard players add @s aote_tcd 0
execute if score @s aote_cd matches 1.. run scoreboard players remove @s aote_cd 1
execute if score @s aote_dcd matches 1.. run scoreboard players remove @s aote_dcd 1
execute if score @s aote_tcd matches 1.. run scoreboard players remove @s aote_tcd 1

# Necron's Scythe cooldown is decremented above.

# Preview marker while the Aspect of the End is in the main hand.
execute if entity @s[name=QWDad] if items entity @s weapon.mainhand minecraft:diamond_sword[minecraft:custom_data~{item:aote}] run function aote:preview/start
