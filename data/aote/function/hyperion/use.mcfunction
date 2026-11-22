# Revoke immediately so the next right-click can trigger the advancement again.
advancement revoke @s only aote:use_hyperion

# Lock: anyone but QWDad is refused.
execute unless entity @s[name=QWDad] run tellraw @s [{"text":"USER NOT FOUND","bold":true,"color":"red"}]
execute unless entity @s[name=QWDad] run return 0

# Implosion. Shares the aote_cd cooldown score with the Aspect of the End (stays above 0 while held, so holding does not spam).
execute if score @s aote_cd matches 0 run function aote:hyperion/implode
scoreboard players set @s aote_cd 3
