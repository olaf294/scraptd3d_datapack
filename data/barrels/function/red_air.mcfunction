$execute if score $scrap scrap_r matches $(cost).. unless score Cooldown cooldown > #cooldown0 cooldown run summon marker 221 63 -1 {Tags:["$(tag)","barrel","air"]}
$execute if score $scrap scrap_r matches $(cost).. unless score Cooldown cooldown > #cooldown0 cooldown run scoreboard players set $scrap_r buy 1
$execute if score $scrap scrap_r matches $(cost).. unless score Cooldown cooldown > #cooldown0 cooldown run scoreboard players add $scrap scrap_s_r $(scrap_s)
$execute if score $scrap scrap_r matches $(cost).. unless score Cooldown cooldown > #cooldown0 cooldown run scoreboard players remove $scrap scrap_r $(cost)
execute if score $scrap_r buy matches 1 unless score Cooldown cooldown > #cooldown0 cooldown run scoreboard players set Cooldown cooldown 50
scoreboard players set $scrap_r buy 0

$execute positioned 221 64 -1 run scoreboard players set @n[type=marker,distance=..2,tag=$(tag)] health $(health)

execute unless score $scrap scrap_r_billion matches 1.. unless score Cooldown cooldown > #cooldown0 cooldown run return 0

# spawn barrel if player has billion
$execute if score $scrap scrap_r_billion matches 1.. unless score $scrap scrap_r matches $(cost).. unless score Cooldown cooldown > #cooldown0 cooldown run summon marker 221 63 -1 {Tags:["$(tag)","barrel","air"]}
# add scrap per second
$execute if score $scrap scrap_r_billion matches 1.. unless score $scrap scrap_r matches $(cost).. unless score Cooldown cooldown > #cooldown0 cooldown run scoreboard players add $scrap scrap_s_r $(scrap_s)
# remove a billion
$execute if score $scrap scrap_r_billion matches 1.. unless score $scrap scrap_r matches $(cost).. unless score Cooldown cooldown > #cooldown0 cooldown run scoreboard players remove $scrap scrap_r_billion 1
# convert the billion into normal
$execute if score $scrap scrap_r_billion matches 1.. unless score $scrap scrap_r matches $(cost).. unless score Cooldown cooldown > #cooldown0 cooldown run scoreboard players add $scrap scrap_r 1000000000
# set the thingy idk
$execute if score $scrap scrap_r_billion matches 1.. unless score $scrap scrap_r matches $(cost).. unless score Cooldown cooldown > #cooldown0 cooldown run scoreboard players set $scrap_r buy 1
# take cost
$execute unless score Cooldown cooldown > #cooldown0 cooldown run scoreboard players remove $scrap scrap_r $(cost)
# set cooldown
execute unless score Cooldown cooldown > #cooldown0 cooldown run scoreboard players set Cooldown cooldown 50


scoreboard players set $scrap_b buy 0

$execute positioned 221 64 -1 run scoreboard players set @n[type=marker,distance=..2,tag=$(tag)] health $(health)
