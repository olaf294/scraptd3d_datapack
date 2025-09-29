execute if score $scrap scrap_r_billion matches 2.. unless score Cooldown cooldown > #cooldown0 cooldown run summon marker 221 63 0 {Tags:["chro","barrel"]}
execute if score $scrap scrap_r_billion matches 2.. unless score Cooldown cooldown > #cooldown0 cooldown run scoreboard players add $scrap scrap_s_r 120000000
execute if score $scrap scrap_r_billion matches 2.. unless score Cooldown cooldown > #cooldown0 cooldown run scoreboard players remove $scrap scrap_r_billion 2
execute if score $scrap scrap_r_billion matches 2.. unless score Cooldown cooldown > #cooldown0 cooldown run scoreboard players set Cooldown cooldown 50

execute positioned 221 64 -1 run scoreboard players set @n[type=marker,distance=..2,tag=chro] health 2000000