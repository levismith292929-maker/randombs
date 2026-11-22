# Revoke immediately so the trigger fires again next tick (holding right-click = a volley every tick, 20 per second).
advancement revoke @s only aote:use_terminator

# Lock: anyone but QWDad is refused.
execute unless entity @s[name=QWDad] run tellraw @s [{"text":"USER NOT FOUND","bold":true,"color":"red"}]
execute unless entity @s[name=QWDad] run return 0

# No cooldown.
function aote:terminator/shoot
