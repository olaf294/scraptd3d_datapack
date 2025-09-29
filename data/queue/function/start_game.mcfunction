scoreboard players operation $queue.start queue.queue += $queue.increment queue.queue

#tellraw olaf_294 [{"score": {"name": "$queue.start","objective": "queue.queue"}}," tick"]




execute if score $queue.start queue.queue matches 1 run tellraw @a[team=queue] [{"text":"Game starting in: ","color":"#ff6600"},{"text":"15 Seconds","color":"green"}]
execute if score $queue.start queue.queue matches 1 run tellraw @a[tag=is_admin] {"italic":true,"color":"dark_gray","text":"[DEBUG] Game Start: 15 seconds"}
execute at @a if score $queue.start queue.queue matches 1 run playsound block.note_block.pling master @a[team=queue] ~ ~ ~ 1 1

execute if score $queue.start queue.queue matches 1 run function code:reset_field
execute if score $queue.start queue.queue matches 1 run function code:init

execute if score $queue.start queue.queue matches 100 run tellraw @a[team=queue] [{"text":"Game starting in: ","color":"#ff6600"},{"text":"10 Seconds","color":"green"}]
execute if score $queue.start queue.queue matches 100 run tellraw @a[tag=is_admin] {"italic":true,"color":"dark_gray","text":"[DEBUG] Game Start: 10 seconds"}
execute at @a if score $queue.start queue.queue matches 100 run playsound block.note_block.pling master @a[team=queue] ~ ~ ~ 1 1

execute if score $queue.start queue.queue matches 200 run tellraw @a[team=queue] [{"text":"Game starting in: ","color":"#ff6600"},{"text":"5 Seconds","color":"green"}]
execute if score $queue.start queue.queue matches 200 run tellraw @a[tag=is_admin] {"italic":true,"color":"dark_gray","text":"[DEBUG] Game Start: 5 seconds"}
execute at @a if score $queue.start queue.queue matches 200 run playsound block.note_block.pling master @a[team=queue] ~ ~ ~ 1 1

execute if score $queue.start queue.queue matches 220 run tellraw @a[team=queue] [{"text":"Game starting in: ","color":"#ff6600"},{"text":"4 Seconds","color":"green"}]
execute if score $queue.start queue.queue matches 220 run tellraw @a[tag=is_admin] {"italic":true,"color":"dark_gray","text":"[DEBUG] Game Start: 4 seconds"}
execute at @a if score $queue.start queue.queue matches 220 run playsound block.note_block.pling master @a[team=queue] ~ ~ ~ 1 1

execute if score $queue.start queue.queue matches 240 run tellraw @a[team=queue] [{"text":"Game starting in: ","color":"#ff6600"},{"text":"3 Seconds","color":"green"}]
execute if score $queue.start queue.queue matches 240 run tellraw @a[tag=is_admin] {"italic":true,"color":"dark_gray","text":"[DEBUG] Game Start: 3 seconds"}
execute at @a if score $queue.start queue.queue matches 240 run playsound block.note_block.pling master @a[team=queue] ~ ~ ~ 1 1

execute if score $queue.start queue.queue matches 260 run tellraw @a[team=queue] [{"text":"Game starting in: ","color":"#ff6600"},{"text":"2 Seconds","color":"green"}]
execute if score $queue.start queue.queue matches 260 run tellraw @a[tag=is_admin] {"italic":true,"color":"dark_gray","text":"[DEBUG] Game Start: 2 seconds"}
execute at @a if score $queue.start queue.queue matches 260 run playsound block.note_block.pling master @a[team=queue] ~ ~ ~ 1 1

execute if score $queue.start queue.queue matches 280 run tellraw @a[team=queue] [{"text":"Game starting in: ","color":"#ff6600"},{"text":"1 Second","color":"green"}]
execute if score $queue.start queue.queue matches 280 run tellraw @a[tag=is_admin] {"italic":true,"color":"dark_gray","text":"[DEBUG] Game Start: 1 second"}
execute at @a if score $queue.start queue.queue matches 280 run playsound block.note_block.pling master @a[team=queue] ~ ~ ~ 1 1

execute at @a if score $queue.start queue.queue matches 300 run playsound block.note_block.pling master @a[team=queue] ~ ~ ~ 1 2
execute if score $queue.start queue.queue matches 300.. run function queue:assign_teams


