scoreboard players set @a leave_detect 0

execute as @a if score @s leave_detect matches 0 run scoreboard players set @s leave_detect 2
execute as @a if score @s leave_detect matches 1 run scoreboard players set @s leave_detect 0
execute as @a if score @s leave_detect matches 2 run scoreboard players set @s leave_detect 1

execute as @a[scores={leave_detect=0}] run tellraw @a "something happened "