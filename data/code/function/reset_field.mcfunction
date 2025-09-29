kill @e[type=minecraft:armor_stand]
kill @e[type=marker]
summon armor_stand 71.5 63 -0.5 {Tags:["cleanup_fast"]}
summon armor_stand 221.5 63 -0.5 {Tags:["cleanup_fast"]}
scoreboard players set @e[type=armor_stand,tag=cleanup_fast] health 2147483647