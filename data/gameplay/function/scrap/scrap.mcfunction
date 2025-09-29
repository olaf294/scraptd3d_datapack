execute unless score $scrap_cd cooldown matches ..0 run scoreboard players operation $scrap_cd cooldown -= #cooldown1 cooldown


execute unless score $scrap_cd cooldown matches 1.. run scoreboard players operation $scrap scrap_b += $scrap scrap_s_b
execute unless score $scrap_cd cooldown matches 1.. run scoreboard players operation $scrap scrap_r += $scrap scrap_s_r

#execute if score $scrap scrap_b matches -2147483648..-1 run scoreboard players set $scrap scrap_b 2147483647
#execute if score $scrap scrap_r matches -2147483648..-1 run scoreboard players set $scrap scrap_r 2147483647

execute if score $scrap scrap_s_b matches -2147483648..-1 run scoreboard players set $scrap scrap_s_b 2147483647
execute if score $scrap scrap_s_r matches -2147483648..-1 run scoreboard players set $scrap scrap_s_r 2147483647



execute unless score $scrap_cd cooldown matches 1.. run scoreboard players set $scrap_cd cooldown 50

execute if score $scrap scrap_b matches 1000000000.. run scoreboard players add $scrap scrap_b_billion 1
execute if score $scrap scrap_b matches 1000000000.. run scoreboard players remove $scrap scrap_b 1000000000

execute if score $scrap scrap_r matches 1000000000.. run scoreboard players add $scrap scrap_r_billion 1
execute if score $scrap scrap_r matches 1000000000.. run scoreboard players remove $scrap scrap_r 1000000000
execute unless score $scrap scrap_b_billion matches -2147483648..2147483647 run scoreboard players set $scrap scrap_b_billion 0
execute unless score $scrap scrap_r_billion matches -2147483648..2147483647 run scoreboard players set $scrap scrap_r_billion 0