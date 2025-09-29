# Count down time
execute if entity @a[team=Red] if entity @a[team=Blue] run scoreboard players add $time time 1

# If game is going on and timer is almost up, give a warning
execute if score $time time matches 16800 run tellraw @a [{"text":"The match is about to end.","color":"#0074db"},"\n",{"text":"Remaining time: 1 Minute","color":"red"}]

# If the time is up, reset timer and run reset function.
# The game should be determined as a draw.
execute if score $time time matches 17800 run tellraw @a [{"text":"The match is about to end.","color":"#0074db"},"\n",{"text":"Remaining time: 10 Seconds","color":"red"}]

execute if score $time time matches 18000 run function queue:reset_game