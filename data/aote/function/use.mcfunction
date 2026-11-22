# Revoke immediately so the next right-click can trigger the advancement again.
advancement revoke @s only aote:use

# Lock: anyone but QWDad is refused.
execute unless entity @s[name=QWDad] run tellraw @s [{"text":"USER NOT FOUND","bold":true,"color":"red"}]
execute unless entity @s[name=QWDad] run return 0

# Aspect of the End costs 10 mana and has a short cooldown.
execute if score @s aote_cd matches 1.. run return 0
execute unless score @s aote_mana matches 10.. run tellraw @s {"text":"Not enough mana! (10 required)","color":"aqua"}
execute unless score @s aote_mana matches 10.. run return 0
scoreboard players remove @s aote_mana 10
scoreboard players set @s aote_mana_delay 40
scoreboard players set @s aote_mana_regen 0
scoreboard players set @s aote_steps 640
execute anchored eyes positioned ^ ^ ^ run function aote:raycast/teleport_step
scoreboard players set @s aote_cd 3
