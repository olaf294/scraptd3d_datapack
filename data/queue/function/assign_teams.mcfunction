team join Blue @r[team=queue]
team join Red @r[team=queue]
tp @a[team=Red] 54 128 58 -90 0
tp @a[team=Blue] 185 128 58 90 0

#tellraw @a[team=Blue] [{"color":"blue","text":"You can use "},{"text":"/trigger plat_b ","click_event": {"action": "suggest_command","value": "/trigger plat_b"}},{"text":"to go back to your platform after placing defense."}]
#tellraw @a[team=Red] [{"color":"#ff2e2e","text":"You can use "},{"text":"/trigger plat_r ","click_event": {"action": "suggest_command","value": "/trigger plat_r"}},{"text":"to go back to your platform after placing defense."}]

tellraw @a[team=Blue] [{"color":"blue","text":"You can use "},{"text":"the pressure plate "},{"text":"to go back to your platform after placing defense."}]
tellraw @a[team=Red] [{"color":"#ff2e2e","text":"You can use "},{"text":"the pressure plate "},{"text":"to go back to your platform after placing defense."}]

kill @e[type=item]

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

# Clear players
clear @a[team=Red]
clear @a[team=Blue]

# Reset Queue
team empty queue
scoreboard players set $queue.start queue.queue 0

gamemode adventure @a[team=Blue]
gamemode adventure @a[team=Red]