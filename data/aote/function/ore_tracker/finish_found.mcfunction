execute as @a if score @s aote_uid = @e[type=marker,tag=aote_ore_scan,sort=nearest,limit=1] aote_uid run function aote:ore_tracker/result
kill @s