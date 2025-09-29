# Queued players get tag "Queued"
tag @s[team=queue] add queued

# Queued players will get a message and a sound.
tellraw @s[team=queue,tag=queued] {"text":"You are no longer in the queue.","color":"#ff2e2e"}
execute at @s run playsound block.note_block.bass master @s[team=queue,tag=queued] ~ ~ ~ 1 0

# Queued players leave the queue.
execute as @s[team=queue,tag=queued] run team leave @s

# Players that are not queued and were not in the queue join the queue.
execute as @s[team=!queue,tag=!queued] run team join queue @s

# Welcome the new queue member.
tellraw @s[team=queue] {"text":"You are now in the queue.","color":"green"}
execute at @s run playsound entity.experience_orb.pickup master @s[team=queue] ~ ~ ~ 1 1

# Remove "Queued" tag so you can queue normally again
execute as @s[team=!queue,tag=queued] run tag @s remove queued

# Stop the function from repeating
item replace entity @s player.cursor with air

schedule function code:misc/click 6t