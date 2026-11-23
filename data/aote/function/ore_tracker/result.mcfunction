scoreboard players operation @s aote_ore_x = @e[type=marker,tag=aote_ore_scan,sort=nearest,limit=1] aote_ore_x
scoreboard players operation @s aote_ore_y = @e[type=marker,tag=aote_ore_scan,sort=nearest,limit=1] aote_ore_y
scoreboard players operation @s aote_ore_z = @e[type=marker,tag=aote_ore_scan,sort=nearest,limit=1] aote_ore_z
tellraw @s [{"text":"Nearest ore found at: ","color":"gold"},{"text":"X: "},{"score":{"name":"@s","objective":"aote_ore_x"}},{"text":"  Y: "},{"score":{"name":"@s","objective":"aote_ore_y"}},{"text":"  Z: "},{"score":{"name":"@s","objective":"aote_ore_z"}}]