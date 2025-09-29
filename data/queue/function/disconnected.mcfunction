
execute if score $time.disconnect time matches 0 run scoreboard players set $time.disconnect time 300

execute unless entity @a[team=Red] if entity @a[team=Blue] if score $time.disconnect time matches 300 run tellraw @a[team=Blue] {"text":"Your opponent has disconnected. The game will be cancelled in 15 seconds.","color":"blue"}
execute if entity @a[team=Red] unless entity @a[team=Blue] if score $time.disconnect time matches 300 run tellraw @a[team=Red] {"text":"Your opponent has disconnected. The game will be cancelled in 15 seconds.","color":"#ff2e2e"}


execute if entity @a[team=Red] if entity @a[team=Blue] run return 0

execute if score $time.disconnect time matches 300 run tellraw @a[tag=is_admin] {"italic":true,"color":"dark_gray","text":"[DEBUG] Game Reset: 15 seconds"}

# Reduce Timer
execute unless entity @a[team=Red] if entity @a[team=Blue] run scoreboard players remove $time.disconnect time 1
execute if entity @a[team=Red] unless entity @a[team=Blue] run scoreboard players remove $time.disconnect time 1

execute if score $time.disconnect time matches 200 if entity @a[team=Blue] unless entity @a[team=Red] run tellraw @a[team=Blue] {"text":"Your opponent has disconnected. The game will be cancelled in 10 seconds.","color":"blue"}
execute if score $time.disconnect time matches 200 if entity @a[team=Red] unless entity @a[team=Blue] run tellraw @a[team=Red] {"text":"Your opponent has disconnected. The game will be cancelled in 10 seconds.","color":"#ff2e2e"}
execute if score $time.disconnect time matches 200 run tellraw @a[tag=is_admin] {"italic":true,"color":"dark_gray","text":"[DEBUG] Game Reset: 10 seconds"}

execute if score $time.disconnect time matches 100 if entity @a[team=Blue] unless entity @a[team=Red] run tellraw @a[team=Blue] {"text":"Your opponent has disconnected. The game will be cancelled in 5 seconds.","color":"blue"}
execute if score $time.disconnect time matches 100 if entity @a[team=Red] unless entity @a[team=Blue] run tellraw @a[team=Red] {"text":"Your opponent has disconnected. The game will be cancelled in 5 seconds.","color":"#ff2e2e"}
execute if score $time.disconnect time matches 100 run tellraw @a[tag=is_admin] {"italic":true,"color":"dark_gray","text":"[DEBUG] Game Reset: 5 seconds"}

execute if score $time.disconnect time matches 80 if entity @a[team=Blue] unless entity @a[team=Red] run tellraw @a[team=Blue] {"text":"Your opponent has disconnected. The game will be cancelled in 4 seconds.","color":"blue"}
execute if score $time.disconnect time matches 80 if entity @a[team=Red] unless entity @a[team=Blue] run tellraw @a[team=Red] {"text":"Your opponent has disconnected. The game will be cancelled in 4 seconds.","color":"#ff2e2e"}
execute if score $time.disconnect time matches 80 run tellraw @a[tag=is_admin] {"italic":true,"color":"dark_gray","text":"[DEBUG] Game Reset: 4 seconds"}

execute if score $time.disconnect time matches 60 if entity @a[team=Blue] unless entity @a[team=Red] run tellraw @a[team=Blue] {"text":"Your opponent has disconnected. The game will be cancelled in 3 seconds.","color":"blue"}
execute if score $time.disconnect time matches 60 if entity @a[team=Red] unless entity @a[team=Blue] run tellraw @a[team=Red] {"text":"Your opponent has disconnected. The game will be cancelled in 3 seconds.","color":"#ff2e2e"}
execute if score $time.disconnect time matches 60 run tellraw @a[tag=is_admin] {"italic":true,"color":"dark_gray","text":"[DEBUG] Game Reset: 3 seconds"}

execute if score $time.disconnect time matches 40 if entity @a[team=Blue] unless entity @a[team=Red] run tellraw @a[team=Blue] {"text":"Your opponent has disconnected. The game will be cancelled in 2 seconds.","color":"blue"}
execute if score $time.disconnect time matches 40 if entity @a[team=Red] unless entity @a[team=Blue] run tellraw @a[team=Red] {"text":"Your opponent has disconnected. The game will be cancelled in 2 seconds.","color":"#ff2e2e"}
execute if score $time.disconnect time matches 40 run tellraw @a[tag=is_admin] {"italic":true,"color":"dark_gray","text":"[DEBUG] Game Reset: 2 seconds"}

execute if score $time.disconnect time matches 20 if entity @a[team=Blue] unless entity @a[team=Red] run tellraw @a[team=Blue] {"text":"Your opponent has disconnected. The game will be cancelled in 1 second.","color":"blue"}
execute if score $time.disconnect time matches 20 if entity @a[team=Red] unless entity @a[team=Blue] run tellraw @a[team=Red] {"text":"Your opponent has disconnected. The game will be cancelled in 1 second.","color":"#ff2e2e"}
execute if score $time.disconnect time matches 20 run tellraw @a[tag=is_admin] {"italic":true,"color":"dark_gray","text":"[DEBUG] Game Reset: 1 seconds"}

execute if score $time.disconnect time matches 0 if entity @a[team=Blue] unless entity @a[team=Red] run function queue:reset_game
execute if score $time.disconnect time matches 0 if entity @a[team=Red] unless entity @a[team=Blue] run function queue:reset_game
