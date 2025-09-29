# This is unused (bruh)

tp @a[team=Blue] -100 62 1
tp @a[team=Red] -100 62 1

clear @a[team=Red]
clear @a[team=Blue]

function code:reset_field

$tellraw @a[team=Blue] $(message)
$tellraw @a[team=Red] $(message)


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