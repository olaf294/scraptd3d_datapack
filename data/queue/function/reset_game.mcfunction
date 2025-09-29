tp @a[team=Blue] -100 62 1
tp @a[team=Red] -100 62 1

clear @a[team=Red]
clear @a[team=Blue]

execute if entity @a[team=Blue] unless entity @a[team=Red] run function gameplay:win/blue
#execute if entity @a[team=Blue] unless entity @a[team=Red] run function queue:reset_game
execute if entity @a[team=Red] unless entity @a[team=Blue] run function gameplay:win/red
#execute if entity @a[team=Red] unless entity @a[team=Blue] run function queue:reset_game
execute if entity @a[team=Red] if entity @a[team=Blue] run function gameplay:win/draw

function code:reset_field

tellraw @a[team=Blue] [{"bold":true,"text":"The game has been cancelled.","color":"#ff0000"}]
tellraw @a[team=Red] [{"bold":true,"text":"The game has been cancelled.","color":"#ff0000"}]

# Set Scrap to Default
scoreboard players set $scrap scrap_r 0
scoreboard players set $scrap scrap_b 0
scoreboard players set $scrap scrap_s_r 100
scoreboard players set $scrap scrap_s_b 100
scoreboard players set $scrap scrap_r_billion 0
scoreboard players set $scrap scrap_b_billion 0
# Set Health to Default
scoreboard players set $health health_r 1000
scoreboard players set $health health_b 1000

team empty Blue
team empty Red
