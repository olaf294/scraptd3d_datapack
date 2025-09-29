# Reset current score of captcha for item frames
scoreboard players reset * captcha
scoreboard players reset @a captcha3

# Store the CURRENT rotation
execute as @e[tag=captcha] store result score @s captcha run data get entity @s ItemRotation

# Check correct rotations
execute as @e[tag=captcha] if score @s captcha matches 0 run scoreboard players add @p captcha3 1
execute as @e[tag=captcha] if score @s captcha matches 4 run scoreboard players add @p captcha3 1

# Check if failed
execute unless score @p captcha3 matches 10.. if score @p captcha2 matches -10..4 run tellraw @p [{"text":"Please try again.","color":"dark_red"}]
execute unless score @p captcha3 matches 10.. if score @p captcha2 matches 4 run tellraw @p [{"text":"THIS IS YOUR FINAL ATTEMPT!","color":"dark_red"}]

# Return if too many incorrect attempts
execute unless score @p captcha3 matches 10.. if score @p captcha2 matches 5.. run tellraw @p [{"text":"You currently may not use this method of verification.","color":"dark_red"}]
execute unless score @p captcha3 matches 10.. if score @p captcha2 matches 5.. run return fail

# If okay, check if failed (again)
execute unless score @p captcha3 matches 10.. run scoreboard players add @p captcha2 1

# Check if good
execute if score @p captcha3 matches 10.. unless score @p captcha2 matches 5.. run tellraw @p {"text":"You have passed the captcha!","color":"green"}
execute if score @p captcha3 matches 10.. unless score @p captcha2 matches 5.. run tp @p -100 62 1
execute if score @p captcha3 matches 10.. unless score @p captcha2 matches 5.. run scoreboard players reset @p captcha2

# Generate new
execute as @e[tag=captcha] store result entity @s ItemRotation byte 1 run random value 0..7