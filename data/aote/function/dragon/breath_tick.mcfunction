# Runs as each breath marker, at its position and facing. One step per tick, 0.5 blocks each, 5 blocks total.
scoreboard players add @s aote_t 1
execute if score @s aote_t matches 1 run function aote:dragon/step_1
execute if score @s aote_t matches 2 run function aote:dragon/step_2
execute if score @s aote_t matches 3 run function aote:dragon/step_3
execute if score @s aote_t matches 4 run function aote:dragon/step_4
execute if score @s aote_t matches 5 run function aote:dragon/step_5
execute if score @s aote_t matches 6 run function aote:dragon/step_6
execute if score @s aote_t matches 7 run function aote:dragon/step_7
execute if score @s aote_t matches 8 run function aote:dragon/step_8
execute if score @s aote_t matches 9 run function aote:dragon/step_9
execute if score @s aote_t matches 10 run function aote:dragon/step_10
execute if score @s aote_t matches 10.. run function aote:dragon/finish
