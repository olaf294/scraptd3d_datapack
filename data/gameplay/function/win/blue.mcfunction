execute store result score $trophies trophies_add run random value 20..35

execute as @a[team=Blue] run scoreboard players operation @s trophies += $trophies trophies_add

tellraw @a[team=Blue] \
[{"text":"You won!","color":"gold"},"\n",\
{"text":"Rewards: ","color":"green"},\
{"text":"+","color":"gold"},\
{"score":{"name":"$trophies","objective":"trophies_add"},"color":"gold"},\
{"text":"🏆"}]
execute as @a[team=Blue] at @s run playsound entity.player.levelup record @s ~ ~ ~ 1

tellraw @a[team=Red] \
[{"text":"You lost!","color":"dark_red"}]


tellraw @a[tag=is_admin] \
[{"italic":true,"color":"dark_gray","text":"[DEBUG] The game has concluded."},"\n",\
{"text":"Winner: "},{"text":"Blue","color":"blue","italic":false}]

