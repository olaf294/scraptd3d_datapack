##scoreboard 0s
#red_scrap
scoreboard players reset * scrap_0_billion_r
execute if score $scrap scrap_r matches ..9 run scoreboard players set 1 scrap_0_billion_r 0
execute if score $scrap scrap_r matches ..999 run scoreboard players set 2 scrap_0_billion_r 0
execute if score $scrap scrap_r matches ..9999 run scoreboard players set 3 scrap_0_billion_r 0
execute if score $scrap scrap_r matches ..99999 run scoreboard players set 4 scrap_0_billion_r 0
execute if score $scrap scrap_r matches ..999999 run scoreboard players set 5 scrap_0_billion_r 0
execute if score $scrap scrap_r matches ..9999999 run scoreboard players set 6 scrap_0_billion_r 0
execute if score $scrap scrap_r matches ..99999999 run scoreboard players set 7 scrap_0_billion_r 0
execute if score $scrap scrap_r_billion matches 0 run scoreboard players reset * scrap_0_billion_r
execute if score $scrap scrap_r_billion matches 0 run scoreboard players reset $scrap scrap_r_billion
#blue_scrap
scoreboard players reset * scrap_0_billion_b
execute if score $scrap scrap_b matches ..9 run scoreboard players set 1 scrap_0_billion_b 0
execute if score $scrap scrap_b matches ..999 run scoreboard players set 2 scrap_0_billion_b 0
execute if score $scrap scrap_b matches ..9999 run scoreboard players set 3 scrap_0_billion_b 0
execute if score $scrap scrap_b matches ..99999 run scoreboard players set 4 scrap_0_billion_b 0
execute if score $scrap scrap_b matches ..999999 run scoreboard players set 5 scrap_0_billion_b 0
execute if score $scrap scrap_b matches ..9999999 run scoreboard players set 6 scrap_0_billion_b 0
execute if score $scrap scrap_b matches ..99999999 run scoreboard players set 7 scrap_0_billion_b 0
execute if score $scrap scrap_b_billion matches 0 run scoreboard players reset * scrap_0_billion_b
execute if score $scrap scrap_b_billion matches 0 run scoreboard players reset $scrap scrap_b_billion
##admin

#red

execute positioned 50 127 58 run title @a[distance=..40,tag=is_admin,team=!Red] actionbar \
[{"text":"(Admin View) | ","bold":true,"color":"#ff3333"},\
{"text":"Scrap: ","color":"white","bold":false},\
{"score":{"name":"$scrap","objective":"scrap_r_billion"}},\
{"score":{"name":"1","objective":"scrap_0_billion_r"}},\
{"score":{"name":"2","objective":"scrap_0_billion_r"}},\
{"score":{"name":"3","objective":"scrap_0_billion_r"}},\
{"score":{"name":"4","objective":"scrap_0_billion_r"}},\
{"score":{"name":"5","objective":"scrap_0_billion_r"}},\
{"score":{"name":"6","objective":"scrap_0_billion_r"}},\
{"score":{"name":"7","objective":"scrap_0_billion_r"}},\
{"score":{"name":"$scrap","objective":"scrap_r"}},\
{"text":" (+","color":"white","bold":false},\
{"score":{"name":"$scrap","objective":"scrap_s_r"}},\
{"text":"/s) | Health: ","color":"white","bold":false},\
{"bold":true,"score":{"name":"$health","objective":"health_r"},"color":"red"},\
{"text":" - ","color":"white","bold":false},\
{"score":{"name":"$health","objective":"health_b"},"color":"blue"},\
{"text":" | Cooldown: ","color":"white","bold":false},\
{"score": {"name": "Cooldown", "objective": "cooldown"}}]

#blue

execute positioned 190 127 58 run title @a[distance=..40,tag=is_admin,team=!Blue] actionbar \
[{"text":"(Admin View) | ","bold":true,"color":"#4444ff"},\
{"text":"Scrap: ","color":"white","bold":false},\
{"score":{"name":"$scrap","objective":"scrap_b_billion"}},\
{"score":{"name":"1","objective":"scrap_0_billion_b"}},\
{"score":{"name":"2","objective":"scrap_0_billion_b"}},\
{"score":{"name":"3","objective":"scrap_0_billion_b"}},\
{"score":{"name":"4","objective":"scrap_0_billion_b"}},\
{"score":{"name":"5","objective":"scrap_0_billion_b"}},\
{"score":{"name":"6","objective":"scrap_0_billion_b"}},\
{"score":{"name":"7","objective":"scrap_0_billion_b"}},\
{"score":{"name":"$scrap","objective":"scrap_b"}},\
{"text":" (+","color":"white","bold":false},\
{"score":{"name":"$scrap","objective":"scrap_s_b"}},\
{"text":"/s) | Health: ","color":"white","bold":false},\
{"bold":true,"score":{"name":"$health","objective":"health_b"},"color":"blue"},\
{"text":" - ","color":"white","bold":false},\
{"score":{"name":"$health","objective":"health_r"},"color":"red"},\
{"text":" | Cooldown: ","color":"white","bold":false},\
{"score": {"name": "Cooldown2", "objective": "cooldown"}}]

##normal

#red
title @a[team=Red] actionbar \
["Scrap: ",{"score":{"name": "$scrap","objective": "scrap_r_billion"}},{"score":{"name":"1","objective":"scrap_0_billion_r"}},{"score":{"name":"2","objective":"scrap_0_billion_r"}},{"score":{"name":"3","objective":"scrap_0_billion_r"}},{"score":{"name":"4","objective":"scrap_0_billion_r"}},{"score":{"name":"5","objective":"scrap_0_billion_r"}},{"score":{"name":"6","objective":"scrap_0_billion_r"}},{"score":{"name":"7","objective":"scrap_0_billion_r"}},{"score":{"name":"$scrap","objective":"scrap_r"}}," (+",{"score":{"name":"$scrap","objective":"scrap_s_r"}},\
"/s) | Health: ",{"bold":true,"score":{"name":"$health","objective":"health_r"},"color":"red"}," - ",\
{"score":{"name":"$health","objective":"health_b"},"color":"blue"}," | Cooldown: ",{"score": {"name": "Cooldown", "objective": "cooldown"}}]
#blue
title @a[team=Blue] actionbar \
["Scrap: ",{"score":{"name": "$scrap","objective": "scrap_b_billion"}},{"score":{"name":"1","objective":"scrap_0_billion_b"}},{"score":{"name":"2","objective":"scrap_0_billion_b"}},{"score":{"name":"3","objective":"scrap_0_billion_b"}},{"score":{"name":"4","objective":"scrap_0_billion_b"}},{"score":{"name":"5","objective":"scrap_0_billion_b"}},{"score":{"name":"6","objective":"scrap_0_billion_b"}},{"score":{"name":"7","objective":"scrap_0_billion_b"}},{"score":{"name":"$scrap","objective":"scrap_b"}}," (+",{"score":{"name":"$scrap","objective":"scrap_s_b"}},\
"/s) | Health: ",{"bold":true,"score":{"name":"$health","objective":"health_b"},"color":"blue"}," - ",\
{"color":"red","score":{"name":"$health","objective":"health_r"}}," | Cooldown: ",{"score": {"name": "Cooldown2", "objective": "cooldown"}}]


