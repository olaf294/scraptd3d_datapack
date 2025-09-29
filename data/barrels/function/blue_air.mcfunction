$execute if score $scrap scrap_b matches $(cost).. unless score Cooldown2 cooldown > #cooldown0 cooldown run summon marker 71 63 -1 {Tags:["$(tag)","barrel","air"]}
$execute if score $scrap scrap_b matches $(cost).. unless score Cooldown2 cooldown > #cooldown0 cooldown run scoreboard players set $scrap_b buy 1
$execute if score $scrap scrap_b matches $(cost).. unless score Cooldown2 cooldown > #cooldown0 cooldown run scoreboard players add $scrap scrap_s_b $(scrap_s)
$execute if score $scrap scrap_b matches $(cost).. unless score Cooldown2 cooldown > #cooldown0 cooldown run scoreboard players remove $scrap scrap_b $(cost)
execute if score $scrap_b buy matches 1 unless score Cooldown2 cooldown > #cooldown0 cooldown run scoreboard players set Cooldown2 cooldown 50
scoreboard players set $scrap_b buy 0

$execute positioned 71 63 -1 run scoreboard players set @n[type=marker,distance=..2,tag=$(tag)] health $(health)

execute unless score $scrap scrap_b_billion matches 1.. unless score Cooldown2 cooldown > #cooldown0 cooldown run return 0

# spawn barrel if player has billion
$execute if score $scrap scrap_b_billion matches 1.. unless score $scrap scrap_b matches $(cost).. unless score Cooldown2 cooldown > #cooldown0 cooldown run summon marker 71 63 -1 {Tags:["$(tag)","barrel","air"]}
# add scrap per second
$execute if score $scrap scrap_b_billion matches 1.. unless score $scrap scrap_b matches $(cost).. unless score Cooldown2 cooldown > #cooldown0 cooldown run scoreboard players add $scrap scrap_s_b $(scrap_s)
# remove a billion
$execute if score $scrap scrap_b_billion matches 1.. unless score $scrap scrap_b matches $(cost).. unless score Cooldown2 cooldown > #cooldown0 cooldown run scoreboard players remove $scrap scrap_b_billion 1
# convert the billion into normal
$execute if score $scrap scrap_b_billion matches 1.. unless score $scrap scrap_b matches $(cost).. unless score Cooldown2 cooldown > #cooldown0 cooldown run scoreboard players add $scrap scrap_b 1000000000
# set the thingy idk
$execute if score $scrap scrap_b_billion matches 1.. unless score $scrap scrap_b matches $(cost).. unless score Cooldown2 cooldown > #cooldown0 cooldown run scoreboard players set $scrap_b buy 1
# take cost
$execute unless score Cooldown2 cooldown > #cooldown0 cooldown run scoreboard players remove $scrap scrap_b $(cost)
# set cooldown
execute unless score Cooldown2 cooldown > #cooldown0 cooldown run scoreboard players set Cooldown2 cooldown 50


scoreboard players set $scrap_b buy 0

$execute positioned 71 63 -1 run scoreboard players set @n[type=marker,distance=..2,tag=$(tag)] health $(health)
