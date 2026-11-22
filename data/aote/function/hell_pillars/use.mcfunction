advancement revoke @s only aote:use_all_hell_breaks_loose
execute unless entity @s[name=QWDad] run return 0
execute if score @s aote_hcd matches 1.. run return 0
execute unless score @s aote_mana matches 500.. run tellraw @s {"text":"Not enough mana! (500 required)","color":"aqua"}
execute unless score @s aote_mana matches 500.. run return 0
scoreboard players remove @s aote_mana 500
scoreboard players set @s aote_mana_delay 40
scoreboard players set @s aote_mana_regen 0
scoreboard players set @s aote_hcd 2400
execute anchored feet positioned ^0 ^ ^2 run summon marker ~ ~ ~ {Tags:["aote_hell_pillar"]}
execute anchored feet positioned ^0.81 ^ ^1.83 run summon marker ~ ~ ~ {Tags:["aote_hell_pillar"]}
execute anchored feet positioned ^1.49 ^ ^1.34 run summon marker ~ ~ ~ {Tags:["aote_hell_pillar"]}
execute anchored feet positioned ^1.90 ^ ^0.62 run summon marker ~ ~ ~ {Tags:["aote_hell_pillar"]}
execute anchored feet positioned ^1.99 ^ ^-0.21 run summon marker ~ ~ ~ {Tags:["aote_hell_pillar"]}
execute anchored feet positioned ^1.73 ^ ^-1 run summon marker ~ ~ ~ {Tags:["aote_hell_pillar"]}
execute anchored feet positioned ^1.18 ^ ^-1.62 run summon marker ~ ~ ~ {Tags:["aote_hell_pillar"]}
execute anchored feet positioned ^0.42 ^ ^-1.96 run summon marker ~ ~ ~ {Tags:["aote_hell_pillar"]}
execute anchored feet positioned ^-0.42 ^ ^-1.96 run summon marker ~ ~ ~ {Tags:["aote_hell_pillar"]}
execute anchored feet positioned ^-1.18 ^ ^-1.62 run summon marker ~ ~ ~ {Tags:["aote_hell_pillar"]}
execute anchored feet positioned ^-1.73 ^ ^-1 run summon marker ~ ~ ~ {Tags:["aote_hell_pillar"]}
execute anchored feet positioned ^-1.99 ^ ^-0.21 run summon marker ~ ~ ~ {Tags:["aote_hell_pillar"]}
execute anchored feet positioned ^-1.90 ^ ^0.62 run summon marker ~ ~ ~ {Tags:["aote_hell_pillar"]}
execute anchored feet positioned ^-1.49 ^ ^1.34 run summon marker ~ ~ ~ {Tags:["aote_hell_pillar"]}
execute anchored feet positioned ^-0.81 ^ ^1.83 run summon marker ~ ~ ~ {Tags:["aote_hell_pillar"]}
scoreboard players set @e[type=marker,tag=aote_hell_pillar,distance=..4] aote_pillar_life 600
playsound minecraft:block.portal.ambient player @a[distance=..24] ~ ~ ~ 1 0.8
tellraw @s {"text":"All Hell Breaks Loose!","color":"dark_red"}
