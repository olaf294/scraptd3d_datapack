$execute unless score Cooldown3 cooldown > #cooldown0 cooldown run summon marker 13 100 474 {Tags:["$(tag)","tutorial","barrel"]}
execute unless score Cooldown3 cooldown > #cooldown0 cooldown run scoreboard players set Cooldown3 cooldown 50
$execute positioned 13 100 474 run scoreboard players set @n[type=marker,distance=..2,tag=$(tag)] health $(health)