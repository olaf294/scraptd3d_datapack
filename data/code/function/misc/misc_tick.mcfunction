# Effects
#effect give @a minecraft:resistance infinite 1 true
effect give @a[tag=!is_admin] weakness infinite 15 true
effect give @a[tag=!is_admin] night_vision infinite 1 true
effect give @a saturation infinite 9 true

#   "clean dirt"
execute as @a at @s if block ~ ~-1 ~ gold_block run give @s dirt[food={nutrition:200,saturation:200,can_always_eat:true},minecraft:item_name='"clean dirt"'] 64
execute as @a at @s if block ~ ~-1 ~ gold_block run tp @s 0 63 0


# Kill below y=35 (or whatever is set)
execute as @a[name=!olaf_294] at @s if predicate code:below_y_35 run kill @s

# Trigger for captcha
execute positioned -100 100 0 run scoreboard players enable @a[x=-100,y=100,z=0,distance=..10] verify
execute positioned -100 100 0 run scoreboard players reset @a[x=-100,y=100,z=0,distance=10..] verify
tellraw @a[scores={verify=684925}] {"text":"Your attempts have been reset! Please retry the captcha.","color":"dark_green"}
scoreboard players reset @a[scores={verify=684925}] captcha2
scoreboard players reset @a[scores={verify=1..}] verify



# Trigger for gamemode
scoreboard players enable @a gamemode
scoreboard players reset @a[team=Blue] gamemode
scoreboard players reset @a[team=Red] gamemode
scoreboard players reset @a[x=-103,y=99,z=-3,dx=8,dy=6,dz=8] gamemode

tellraw @a[scores={gamemode=1}] [{"text":""},{"text":"Change Gamemode","bold":true,"underlined":true,"color":"dark_green"},{"text":"\n"},{"text":"Spectator","color":"gold","click_event":{"action":"run_command","command":"/trigger gamemode set 2"},"hover_event":{"action":"show_text","value":[{"text":"Click to change gamemode"}]}},{"text":"\n"},{"text":"Adventure","color":"#F28740","click_event":{"action":"run_command","command":"/trigger gamemode set 3"},"hover_event":{"action":"show_text","value":[{"text":"Click to change gamemode"}]}}]
gamemode adventure @a[scores={gamemode=3}]
gamemode spectator @a[scores={gamemode=2}]

scoreboard players reset @a[scores={gamemode=1..}] gamemode

# Trigger for platform
scoreboard players enable @a[team=Blue] plat_b
scoreboard players reset @a[team=!Blue] plat_b
scoreboard players enable @a[team=Red] plat_r
scoreboard players reset @a[team=!Red] plat_r

tp @a[team=Blue,scores={plat_b=1..}] 185 128 58 90 0
tp @a[team=Red,scores={plat_r=1..}] 54 128 58 -90 0

scoreboard players reset @a[team=Red,scores={plat_r=1..}] plat_r
scoreboard players reset @a[team=Blue,scores={plat_b=1..}] plat_b


# Trigger for speed
scoreboard players enable @a speed
tellraw @a[scores={speed=6..}] [{"text":""},{"text":"Choose Speed Setting","bold":true,"underlined":true,"color":"dark_green"},{"text":"\n"},{"text":"Speed 0","color":"gold","click_event":{"action":"run_command","command":"/trigger speed set 2"},"hover_event":{"action":"show_text","value":[{"text":"Click to select speed."}]}},{"text":"\n"},{"text":"Speed 2","color":"gold","click_event":{"action":"run_command","command":"/trigger speed set 3"},"hover_event":{"action":"show_text","value":[{"text":"Click to select speed."}]}},{"text":"\n"},{"text":"Speed 4","color":"gold","click_event":{"action":"run_command","command":"/trigger speed set 4"},"hover_event":{"action":"show_text","value":[{"text":"Click to select speed."}]}},{"text":"\n"},{"text":"Speed 6","color":"gold","click_event":{"action":"run_command","command":"/trigger speed set 5"},"hover_event":{"action":"show_text","value":[{"text":"Click to select speed."}]}}]
tellraw @a[scores={speed=1}] [{"text":""},{"text":"Choose Speed Setting","bold":true,"underlined":true,"color":"dark_green"},{"text":"\n"},{"text":"Speed 0","color":"gold","click_event":{"action":"run_command","command":"/trigger speed set 2"},"hover_event":{"action":"show_text","value":[{"text":"Click to select speed."}]}},{"text":"\n"},{"text":"Speed 2","color":"gold","click_event":{"action":"run_command","command":"/trigger speed set 3"},"hover_event":{"action":"show_text","value":[{"text":"Click to select speed."}]}},{"text":"\n"},{"text":"Speed 4","color":"gold","click_event":{"action":"run_command","command":"/trigger speed set 4"},"hover_event":{"action":"show_text","value":[{"text":"Click to select speed."}]}},{"text":"\n"},{"text":"Speed 6","color":"gold","click_event":{"action":"run_command","command":"/trigger speed set 5"},"hover_event":{"action":"show_text","value":[{"text":"Click to select speed."}]}}]

effect clear @a[scores={speed=2..}] speed
tellraw @a[scores={speed=2}] [{"text":"Reset Speed!","color":"green"}]
tellraw @a[scores={speed=3}] [{"text":"Set Speed to ","color":"green"},{"text":"Speed 2","bold":true,"color":"red"}]
effect give @a[scores={speed=3}] speed infinite 1 true
tellraw @a[scores={speed=4}] [{"text":"Set Speed to ","color":"green"},{"text":"Speed 4","bold":true,"color":"red"}]
effect give @a[scores={speed=4}] speed infinite 3 true
tellraw @a[scores={speed=5}] [{"text":"Set Speed to ","color":"green"},{"text":"Speed 6","bold":true,"color":"red"}]
effect give @a[scores={speed=5}] speed infinite 5 true
scoreboard players reset @a[scores={speed=1..}] speed


# Remove Barrels at end
fill -3 63 13 -15 74 25 air
fill 147 63 13 135 74 25 air
# Tutorial Barrel Remove
fill -19 100 484 -7 111 468 air

# Teams
team join Player @a[team=]
execute as 3255ms if entity @s[team=Player] run team join builder 3255ms

# CleanupFast
scoreboard players set @e[type=armor_stand,tag=cleanup_fast] health 250000


particle minecraft:happy_villager -111 61 1 1.5 2 1 0.25 1 normal


# Refresh avaiable barrels
#function gameplay:avaiable/red