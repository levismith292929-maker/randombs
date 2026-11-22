# Revoke immediately so the next right-click can trigger the advancement again.
advancement revoke @s only aote:use

# Lock: anyone but QWDad is refused.
execute unless entity @s[name=QWDad] run tellraw @s [{"text":"USER NOT FOUND","bold":true,"color":"red"}]
execute unless entity @s[name=QWDad] run return 0

scoreboard players set @s aote_steps 640
execute if score @s aote_cd matches 0 anchored eyes positioned ^ ^ ^ run function aote:raycast/teleport_step
scoreboard players set @s aote_cd 3
