execute store result bossbar queue:general value if entity @a[team=queue]
execute store result score $queue queue.queue if entity @a[team=queue]

bossbar set queue:general players @a[team=queue]

#title @a[tag=queued.red] actionbar {"text":"You are currently queued as: Red","color": "red"}
#title @a[tag=queued.blue] actionbar {"text":"You are currently queued as: Blue","color":"blue"}

execute as @a[x=-185,y=56,z=-12,dx=105,dy=22,dz=91,team=!queue] run title @s actionbar {"text":"You are currently not in the queue."}

execute if score $queue queue.queue matches 1 run title @a[team=queue] actionbar [{"text":"You are currently in the queue - "},{"score":{"name": "$queue","objective": "queue.queue"}},{"text":" player."}]
execute if score $queue queue.queue matches 2.. run title @a[team=queue] actionbar [{"text":"You are currently in the queue - "},{"score":{"name": "$queue","objective": "queue.queue"}},{"text":" players."}]

# Check if queue has enough players
execute if score $queue queue.queue matches 2.. run bossbar set queue:general color green

# Run init script when enough players
execute if score $queue queue.queue matches 2.. unless entity @a[team=Red] unless entity @a[team=Blue] run function queue:start_game

# Bossbar (Ongoing)
execute if score $queue queue.queue matches 2.. if entity @a[team=Red] if entity @a[team=Blue] run bossbar set queue:general name {"text":"Game is ongoing - please hold on..."}
execute if score $queue queue.queue matches 2.. if entity @a[team=Red] unless entity @a[team=Blue] run bossbar set queue:general name {"text":"Game is ongoing - please hold on..."}
execute if score $queue queue.queue matches 2.. unless entity @a[team=Red] if entity @a[team=Blue] run bossbar set queue:general name {"text":"Game is ongoing - please hold on..."}
execute if score $queue queue.queue matches 2.. if entity @a[team=Red] if entity @a[team=Blue] run bossbar set queue:general color yellow
execute unless score $queue queue.queue matches 2.. run bossbar set queue:general name {"text":"Waiting for other players..."}


# If not enough players are in queue, show white bar
execute unless score $queue queue.queue matches 2.. run bossbar set queue:general color white

# Check if there are at least 2 players in queue
execute if score $queue.start queue.queue matches 1..300 unless score $queue queue.queue matches 2.. run tellraw @a {"text":"The game has been cancelled as there are not enough players to start the game.","color":"#ff4400"}
execute if score $queue.start queue.queue matches 1..300 unless score $queue queue.queue matches 2.. run scoreboard players set $queue.start queue.queue 0


# Check if both players are online, shut down game if not.
execute if entity @a[team=Blue] unless entity @a[team=Red] run function queue:disconnected
execute if entity @a[team=Red] unless entity @a[team=Blue] run function queue:disconnected

## Check if both online, reset disconect timer if yes
execute if entity @a[team=Red] if entity @a[team=Blue] run scoreboard players set $time.disconnect time 0

#execute if entity @a[x=-27,y=62,z=-18,dx=279,dy=70,dz=146] run 

# Teleport all players that are in the field 
tellraw @a[x=-27,y=62,z=-18,dx=279,dy=70,dz=146,gamemode=adventure,team=!Blue,team=!Red,tag=!is_admin] {"text":"You have been returned to spawn as your location couldn't be validated.","color":"#565656"}
tp @a[x=-27,y=62,z=-18,dx=279,dy=70,dz=146,gamemode=adventure,team=!Blue,team=!Red,tag=!is_admin] -100 62 1



# Tutorial Barrels DONT SHOW UP
execute as @e[tag=tutorial] run scoreboard players reset @s health

# Quick drop-down while playing



# Player Win detection
execute if score $health health_b matches ..0 run function gameplay:win/red
execute if score $health health_b matches ..0 run schedule function queue:reset_game 1t
execute if score $health health_r matches ..0 run function gameplay:win/blue
execute if score $health health_r matches ..0 run schedule function queue:reset_game 1t

