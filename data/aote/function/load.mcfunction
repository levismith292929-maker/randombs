scoreboard objectives add aote_steps dummy
scoreboard objectives add aote_cd dummy
scoreboard objectives add aote_acd dummy
scoreboard objectives add aote_dcd dummy
scoreboard objectives add aote_t dummy
scoreboard objectives add aote_tcd dummy
scoreboard objectives add aote_slash_t dummy
scoreboard objectives add aote_mana dummy
scoreboard objectives add aote_mana_delay dummy
scoreboard objectives add aote_mana_regen dummy
bossbar add aote:mana {"text":"Mana: ","color":"aqua","extra":[{"score":{"name":"QWDad","objective":"aote_mana"}},{"text":"/500"}]}
bossbar set aote:mana max 500
bossbar set aote:mana color blue
bossbar set aote:mana style notched_10
tellraw QWDad "Random bullshit I came of with has loaded v1"
