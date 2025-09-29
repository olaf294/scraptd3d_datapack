# idk what this does
#execute unless score #defense_cd cooldown <= #cooldown0 cooldown run 


# Lag reduced cloning for better performance
execute as @e[type=armor_stand,tag=sb] at @s unless block ~ ~1 ~ netherite_block run clone -44 100 -64 -56 107 -76 ~-6 ~ ~-6
execute as @e[type=armor_stand,tag=ggi] at @s unless block ~ ~1 ~ netherite_block run clone -44 100 -84 -56 105 -96 ~-6 ~ ~-6
execute as @e[type=armor_stand,tag=ast] at @s unless block ~ ~1 ~ netherite_block run clone -54 103 -106 -46 100 -114 ~-4 ~5 ~-4
execute as @e[type=armor_stand,tag=ast] at @s unless block ~ ~1 ~ netherite_block run clone -44 120 -104 -56 124 -116 ~-6 ~ ~-6
execute as @e[type=armor_stand,tag=shb] at @s unless block ~ ~1 ~ netherite_block run clone -44 100 -124 -56 106 -136 ~-6 ~ ~-6
execute as @e[type=armor_stand,tag=dp] at @s unless block ~ ~1 ~ netherite_block run clone -44 100 -144 -56 106 -156 ~-6 ~ ~-6
execute as @e[type=armor_stand,tag=bl] at @s unless block ~ ~1 ~ netherite_block run clone -44 100 -164 -56 105 -176 ~-6 ~ ~-6
execute as @e[type=armor_stand,tag=tt] at @s unless block ~ ~1 ~ netherite_block run clone -56 127 -116 -44 120 -104 ~-6 ~ ~-6
execute as @e[type=armor_stand,tag=ggii] at @s unless block ~ ~1 ~ netherite_block run clone -44 120 -84 -56 124 -96 ~-6 ~ ~-6



#execute as @e[type=armor_stand,tag=ggi] at @s unless block ~ ~1 ~ netherite_block run clone 


# Cooldown for shooting
execute if score #defense_cd cooldown >= #cooldown0 cooldown run scoreboard players operation #defense_cd cooldown -= #cooldown1 cooldown
execute if score #defense_cd cooldown < #cooldown0 cooldown run scoreboard players set #defense_cd cooldown 50

execute if score #defense_cd_10 cooldown >= #cooldown0 cooldown run scoreboard players operation #defense_cd_10 cooldown -= #cooldown1 cooldown
execute if score #defense_cd_10 cooldown < #cooldown0 cooldown run scoreboard players set #defense_cd_10 cooldown 5

execute if score #defense_cd_12 cooldown >= #cooldown0 cooldown run scoreboard players operation #defense_cd_12 cooldown -= #cooldown1 cooldown
execute if score #defense_cd_12 cooldown < #cooldown0 cooldown run scoreboard players set #defense_cd_12 cooldown 42

execute if score #defense_cd_17 cooldown >= #cooldown0 cooldown run scoreboard players operation #defense_cd_17 cooldown -= #cooldown1 cooldown
execute if score #defense_cd_17 cooldown < #cooldown0 cooldown run scoreboard players set #defense_cd_17 cooldown 17

execute if score #defense_cd_dp cooldown >= #cooldown0 cooldown run scoreboard players operation #defense_cd_dp cooldown -= #cooldown1 cooldown
execute if score #defense_cd_dp cooldown < #cooldown0 cooldown run scoreboard players set #defense_cd_dp cooldown 8


# Defense Remover Function
execute as @e[type=armor_stand,tag=defense] at @s unless block ~ ~ ~ purpur_block run kill @s 


# Actually trying now...

# Rotate the Armor Stand to face the barrel, store the result in a Scoreboard
execute as @e[type=armor_stand,tag=defense] at @s run tp @s ~ ~ ~ facing entity @n[type=marker,tag=!defense,distance=..33]

execute as @e[type=armor_stand,tag=defense] store result score @s rotation run data get entity @s Rotation[0]

#execute as @e[type=armor_stand,tag=sb] at @s if entity @n[type=armor_stand,tag=!defense,distance=..33] run setblock ^ ^15 ^13 redstone_block
#execute as @e[type=armor_stand,tag=sb] at @s if entity @n[type=armor_stand,tag=!defense,distance=..33] run setblock ^-1 ^15 ^13 air
#execute as @e[type=armor_stand,tag=sb] at @s if entity @n[type=armor_stand,tag=!defense,distance=..33] run setblock ^1 ^15 ^13 air
#execute as @e[type=armor_stand,tag=sb] at @s if entity @n[type=armor_stand,tag=!defense,distance=..33] run setblock ^ ^15 ^14 air
#execute as @e[type=armor_stand,tag=sb] at @s if entity @n[type=armor_stand,tag=!defense,distance=..33] run setblock ^ ^15 ^15 air



# Rotation Cloning
execute as @e[type=armor_stand,tag=sb] at @s if entity @n[type=marker,tag=!defense,tag=!air,distance=..33] if score @s rotation <= #NEE rotation if score @s rotation > #NNE rotation run clone -36 107 -76 -24 104 -64 ~-6 ~4 ~-6
execute as @e[type=armor_stand,tag=sb] at @s if entity @n[type=marker,tag=!defense,tag=!air,distance=..33] if score @s rotation <= #SEE rotation if score @s rotation > #NEE rotation run clone -44 104 -64 -56 107 -76 ~-6 ~4 ~-6
execute as @e[type=armor_stand,tag=sb] at @s if entity @n[type=marker,tag=!defense,tag=!air,distance=..33] if score @s rotation <= #SSE rotation if score @s rotation > #SEE rotation run clone 84 107 -76 96 104 -64 ~-6 ~4 ~-6
execute as @e[type=armor_stand,tag=sb] at @s if entity @n[type=marker,tag=!defense,tag=!air,distance=..33] if score @s rotation <= #SSW rotation if score @s rotation > #SSE rotation run clone 64 107 -76 76 104 -64 ~-6 ~4 ~-6
execute as @e[type=armor_stand,tag=sb] at @s if entity @n[type=marker,tag=!defense,tag=!air,distance=..33] if score @s rotation <= #SWW rotation if score @s rotation > #SSW rotation run clone 44 107 -76 56 104 -64 ~-6 ~4 ~-6
execute as @e[type=armor_stand,tag=sb] at @s if entity @n[type=marker,tag=!defense,tag=!air,distance=..33] if score @s rotation <= #NWW rotation if score @s rotation > #SWW rotation run clone 24 107 -76 36 104 -64 ~-6 ~4 ~-6
execute as @e[type=armor_stand,tag=sb] at @s if entity @n[type=marker,tag=!defense,tag=!air,distance=..33] if score @s rotation <= #NNW rotation if score @s rotation > #NWW rotation run clone 4 107 -76 16 104 -64 ~-6 ~4 ~-6

# The final rotation (North Rotation)
execute as @e[type=armor_stand,tag=sb] at @s if entity @n[type=marker,tag=!defense,tag=!air,distance=..33] if score @s rotation < #NNE rotation if score @s rotation >= #Nneg rotation run clone -16 107 -76 -4 104 -64 ~-6 ~4 ~-6
execute as @e[type=armor_stand,tag=sb] at @s if entity @n[type=marker,tag=!defense,tag=!air,distance=..33] if score @s rotation > #NNW rotation if score @s rotation <= #Npos rotation run clone -16 107 -76 -4 104 -64 ~-6 ~4 ~-6



# Rotations but for Gatling Gun I
execute as @e[type=armor_stand,tag=ggi] at @s if entity @n[type=marker,tag=!defense,tag=!air,distance=..26.4] if score @s rotation <= #NEE rotation if score @s rotation > #NNE rotation run clone -36 106 -96 -24 102 -84 ~-6 ~2 ~-6
execute as @e[type=armor_stand,tag=ggi] at @s if entity @n[type=marker,tag=!defense,tag=!air,distance=..26.4] if score @s rotation <= #SEE rotation if score @s rotation > #NEE rotation run clone -44 102 -84 -56 106 -96 ~-6 ~2 ~-6
execute as @e[type=armor_stand,tag=ggi] at @s if entity @n[type=marker,tag=!defense,tag=!air,distance=..26.4] if score @s rotation <= #SSE rotation if score @s rotation > #SEE rotation run clone 84 106 -96 96 102 -84 ~-6 ~2 ~-6
execute as @e[type=armor_stand,tag=ggi] at @s if entity @n[type=marker,tag=!defense,tag=!air,distance=..26.4] if score @s rotation <= #SSW rotation if score @s rotation > #SSE rotation run clone 64 106 -96 76 102 -84 ~-6 ~2 ~-6
execute as @e[type=armor_stand,tag=ggi] at @s if entity @n[type=marker,tag=!defense,tag=!air,distance=..26.4] if score @s rotation <= #SWW rotation if score @s rotation > #SSW rotation run clone 44 106 -96 56 102 -84 ~-6 ~2 ~-6
execute as @e[type=armor_stand,tag=ggi] at @s if entity @n[type=marker,tag=!defense,tag=!air,distance=..26.4] if score @s rotation <= #NWW rotation if score @s rotation > #SWW rotation run clone 24 106 -96 36 102 -84 ~-6 ~2 ~-6
execute as @e[type=armor_stand,tag=ggi] at @s if entity @n[type=marker,tag=!defense,tag=!air,distance=..26.4] if score @s rotation <= #NNW rotation if score @s rotation > #NWW rotation run clone 4 106 -96 16 102 -84 ~-6 ~2 ~-6

# The final rotation (North Rotation) (Gatling Gun I)
execute as @e[type=armor_stand,tag=ggi] at @s if entity @n[type=marker,tag=!defense,tag=!air,distance=..26.4] if score @s rotation < #NNE rotation if score @s rotation >= #Nneg rotation run clone -16 106 -96 -4 102 -84 ~-6 ~2 ~-6
execute as @e[type=armor_stand,tag=ggi] at @s if entity @n[type=marker,tag=!defense,tag=!air,distance=..26.4] if score @s rotation > #NNW rotation if score @s rotation <= #Npos rotation run clone -16 106 -96 -4 102 -84 ~-6 ~2 ~-6



# Rotations but for Airstrike
execute as @e[type=armor_stand,tag=ast] at @s if entity @n[type=marker,tag=!defense,distance=..33] if score @s rotation <= #NEE rotation if score @s rotation > #NNE rotation run clone -34 103 -106 -26 100 -114 ~-4 ~5 ~-4
execute as @e[type=armor_stand,tag=ast] at @s if entity @n[type=marker,tag=!defense,distance=..33] if score @s rotation <= #SEE rotation if score @s rotation > #NEE rotation run clone -54 103 -106 -46 100 -114 ~-4 ~5 ~-4
execute as @e[type=armor_stand,tag=ast] at @s if entity @n[type=marker,tag=!defense,distance=..33] if score @s rotation <= #SSE rotation if score @s rotation > #SEE rotation run clone 14 103 -106 6 100 -114 ~-4 ~5 ~-4
execute as @e[type=armor_stand,tag=ast] at @s if entity @n[type=marker,tag=!defense,distance=..33] if score @s rotation <= #SSW rotation if score @s rotation > #SSE rotation run clone 74 103 -106 66 100 -114 ~-4 ~5 ~-4
execute as @e[type=armor_stand,tag=ast] at @s if entity @n[type=marker,tag=!defense,distance=..33] if score @s rotation <= #SWW rotation if score @s rotation > #SSW rotation run clone 54 103 -106 46 100 -114 ~-4 ~5 ~-4
execute as @e[type=armor_stand,tag=ast] at @s if entity @n[type=marker,tag=!defense,distance=..33] if score @s rotation <= #NWW rotation if score @s rotation > #SWW rotation run clone 34 103 -106 26 100 -114 ~-4 ~5 ~-4
execute as @e[type=armor_stand,tag=ast] at @s if entity @n[type=marker,tag=!defense,distance=..33] if score @s rotation <= #NNW rotation if score @s rotation > #NWW rotation run clone 94 103 -106 86 100 -114 ~-4 ~5 ~-4

# The final rotation (North Rotation) (Airstrike)
execute as @e[type=armor_stand,tag=ast] at @s if entity @n[type=marker,tag=!defense,distance=..33] if score @s rotation < #NNE rotation if score @s rotation >= #Nneg rotation run clone -14 103 -106 -6 100 -114 ~-4 ~5 ~-4
execute as @e[type=armor_stand,tag=ast] at @s if entity @n[type=marker,tag=!defense,distance=..33] if score @s rotation > #NNW rotation if score @s rotation <= #Npos rotation run clone -14 103 -106 -6 100 -114 ~-4 ~5 ~-4



# Rotations but for Shooting Box
execute as @e[type=armor_stand,tag=shb] at @s if entity @n[type=marker,tag=!defense,tag=!air,distance=..33] if score @s rotation <= #NEE rotation if score @s rotation > #NNE rotation run clone -36 106 -136 -24 104 -124 ~-6 ~4 ~-6
execute as @e[type=armor_stand,tag=shb] at @s if entity @n[type=marker,tag=!defense,tag=!air,distance=..33] if score @s rotation <= #SEE rotation if score @s rotation > #NEE rotation run clone -44 104 -124 -56 106 -136 ~-6 ~4 ~-6
execute as @e[type=armor_stand,tag=shb] at @s if entity @n[type=marker,tag=!defense,tag=!air,distance=..33] if score @s rotation <= #SSE rotation if score @s rotation > #SEE rotation run clone 84 106 -136 96 104 -124 ~-6 ~4 ~-6
execute as @e[type=armor_stand,tag=shb] at @s if entity @n[type=marker,tag=!defense,tag=!air,distance=..33] if score @s rotation <= #SSW rotation if score @s rotation > #SSE rotation run clone 64 106 -136 76 104 -124 ~-6 ~4 ~-6
execute as @e[type=armor_stand,tag=shb] at @s if entity @n[type=marker,tag=!defense,tag=!air,distance=..33] if score @s rotation <= #SWW rotation if score @s rotation > #SSW rotation run clone 44 106 -136 56 104 -124 ~-6 ~4 ~-6
execute as @e[type=armor_stand,tag=shb] at @s if entity @n[type=marker,tag=!defense,tag=!air,distance=..33] if score @s rotation <= #NWW rotation if score @s rotation > #SWW rotation run clone 24 106 -136 36 104 -124 ~-6 ~4 ~-6
execute as @e[type=armor_stand,tag=shb] at @s if entity @n[type=marker,tag=!defense,tag=!air,distance=..33] if score @s rotation <= #NNW rotation if score @s rotation > #NWW rotation run clone 4 106 -136 16 104 -124 ~-6 ~4 ~-6

# The final rotation (North Rotation) (Shooting Box)
execute as @e[type=armor_stand,tag=shb] at @s if entity @n[type=marker,tag=!defense,tag=!air,distance=..33] if score @s rotation < #NNE rotation if score @s rotation >= #Nneg rotation run clone -16 106 -136 -4 104 -124 ~-6 ~4 ~-6
execute as @e[type=armor_stand,tag=shb] at @s if entity @n[type=marker,tag=!defense,tag=!air,distance=..33] if score @s rotation > #NNW rotation if score @s rotation <= #Npos rotation run clone -16 106 -136 -4 104 -124 ~-6 ~4 ~-6



# Rotations but for Double Pain
execute as @e[type=armor_stand,tag=dp] at @s if entity @n[type=marker,tag=!defense,distance=..33] if score @s rotation <= #NEE rotation if score @s rotation > #NNE rotation run clone -36 106 -156 -24 104 -144 ~-6 ~4 ~-6
execute as @e[type=armor_stand,tag=dp] at @s if entity @n[type=marker,tag=!defense,distance=..33] if score @s rotation <= #SEE rotation if score @s rotation > #NEE rotation run clone -56 106 -156 -44 104 -144 ~-6 ~4 ~-6
execute as @e[type=armor_stand,tag=dp] at @s if entity @n[type=marker,tag=!defense,distance=..33] if score @s rotation <= #SSE rotation if score @s rotation > #SEE rotation run clone 84 106 -156 96 104 -144 ~-6 ~4 ~-6
execute as @e[type=armor_stand,tag=dp] at @s if entity @n[type=marker,tag=!defense,distance=..33] if score @s rotation <= #SSW rotation if score @s rotation > #SSE rotation run clone 64 106 -156 76 104 -144 ~-6 ~4 ~-6
execute as @e[type=armor_stand,tag=dp] at @s if entity @n[type=marker,tag=!defense,distance=..33] if score @s rotation <= #SWW rotation if score @s rotation > #SSW rotation run clone 44 106 -156 56 104 -144 ~-6 ~4 ~-6
execute as @e[type=armor_stand,tag=dp] at @s if entity @n[type=marker,tag=!defense,distance=..33] if score @s rotation <= #NWW rotation if score @s rotation > #SWW rotation run clone 24 106 -156 36 104 -144 ~-6 ~4 ~-6
execute as @e[type=armor_stand,tag=dp] at @s if entity @n[type=marker,tag=!defense,distance=..33] if score @s rotation <= #NNW rotation if score @s rotation > #NWW rotation run clone 4 106 -156 16 104 -144 ~-6 ~4 ~-6

# The final rotation (North Rotation) (Double Pain)
execute as @e[type=armor_stand,tag=dp] at @s if entity @n[type=marker,tag=!defense,distance=..33] if score @s rotation < #NNE rotation if score @s rotation >= #Nneg rotation run clone -16 106 -156 -4 104 -144 ~-6 ~4 ~-6
execute as @e[type=armor_stand,tag=dp] at @s if entity @n[type=marker,tag=!defense,distance=..33] if score @s rotation > #NNW rotation if score @s rotation <= #Npos rotation run clone -16 106 -156 -4 104 -144 ~-6 ~4 ~-6



# Rotations but for Blue Laser
execute as @e[type=armor_stand,tag=bl] at @s if entity @n[type=marker,tag=!defense,tag=!air,distance=..33] if score @s rotation <= #NEE rotation if score @s rotation > #NNE rotation run clone -36 105 -176 -24 103 -164 ~-6 ~3 ~-6
execute as @e[type=armor_stand,tag=bl] at @s if entity @n[type=marker,tag=!defense,tag=!air,distance=..33] if score @s rotation <= #SEE rotation if score @s rotation > #NEE rotation run clone -56 105 -176 -44 103 -164 ~-6 ~3 ~-6
execute as @e[type=armor_stand,tag=bl] at @s if entity @n[type=marker,tag=!defense,tag=!air,distance=..33] if score @s rotation <= #SSE rotation if score @s rotation > #SEE rotation run clone 84 105 -176 96 103 -164 ~-6 ~3 ~-6
execute as @e[type=armor_stand,tag=bl] at @s if entity @n[type=marker,tag=!defense,tag=!air,distance=..33] if score @s rotation <= #SSW rotation if score @s rotation > #SSE rotation run clone 64 105 -176 76 103 -164 ~-6 ~3 ~-6
execute as @e[type=armor_stand,tag=bl] at @s if entity @n[type=marker,tag=!defense,tag=!air,distance=..33] if score @s rotation <= #SWW rotation if score @s rotation > #SSW rotation run clone 44 105 -176 56 103 -164 ~-6 ~3 ~-6
execute as @e[type=armor_stand,tag=bl] at @s if entity @n[type=marker,tag=!defense,tag=!air,distance=..33] if score @s rotation <= #NWW rotation if score @s rotation > #SWW rotation run clone 24 105 -176 36 103 -164 ~-6 ~3 ~-6
execute as @e[type=armor_stand,tag=bl] at @s if entity @n[type=marker,tag=!defense,tag=!air,distance=..33] if score @s rotation <= #NNW rotation if score @s rotation > #NWW rotation run clone 4 105 -176 16 103 -164 ~-6 ~3 ~-6

# The final rotation (North Rotation) (Blue Laser)
execute as @e[type=armor_stand,tag=bl] at @s if entity @n[type=marker,tag=!defense,distance=..33] if score @s rotation < #NNE rotation if score @s rotation >= #Nneg rotation run clone -16 105 -176 -4 103 -164 ~-6 ~3 ~-6
execute as @e[type=armor_stand,tag=bl] at @s if entity @n[type=marker,tag=!defense,distance=..33] if score @s rotation > #NNW rotation if score @s rotation <= #Npos rotation run clone -16 105 -176 -4 103 -164 ~-6 ~3 ~-6



# Tesla Tower is so simple!
execute as @e[type=armor_stand,tag=tt] at @s unless block ~ ~1 ~ netherite_block run clone -56 127 -116 -44 120 -104 ~-6 ~ ~-6



# Rotations but for Gatling Gun II
execute as @e[type=armor_stand,tag=ggii] at @s if entity @n[type=marker,tag=!defense,tag=!air,distance=..33] if score @s rotation <= #NEE rotation if score @s rotation > #NNE rotation run clone -36 124 -96 -24 122 -84 ~-6 ~2 ~-6
execute as @e[type=armor_stand,tag=ggii] at @s if entity @n[type=marker,tag=!defense,tag=!air,distance=..33] if score @s rotation <= #SEE rotation if score @s rotation > #NEE rotation run clone -44 122 -84 -56 124 -96 ~-6 ~2 ~-6
execute as @e[type=armor_stand,tag=ggii] at @s if entity @n[type=marker,tag=!defense,tag=!air,distance=..33] if score @s rotation <= #SSE rotation if score @s rotation > #SEE rotation run clone 84 124 -96 96 122 -84 ~-6 ~2 ~-6
execute as @e[type=armor_stand,tag=ggii] at @s if entity @n[type=marker,tag=!defense,tag=!air,distance=..33] if score @s rotation <= #SSW rotation if score @s rotation > #SSE rotation run clone 64 124 -96 76 122 -84 ~-6 ~2 ~-6
execute as @e[type=armor_stand,tag=ggii] at @s if entity @n[type=marker,tag=!defense,tag=!air,distance=..33] if score @s rotation <= #SWW rotation if score @s rotation > #SSW rotation run clone 44 124 -96 56 122 -84 ~-6 ~2 ~-6
execute as @e[type=armor_stand,tag=ggii] at @s if entity @n[type=marker,tag=!defense,tag=!air,distance=..33] if score @s rotation <= #NWW rotation if score @s rotation > #SWW rotation run clone 24 124 -96 36 122 -84 ~-6 ~2 ~-6
execute as @e[type=armor_stand,tag=ggii] at @s if entity @n[type=marker,tag=!defense,tag=!air,distance=..33] if score @s rotation <= #NNW rotation if score @s rotation > #NWW rotation run clone 4 124 -96 16 122 -84 ~-6 ~2 ~-6

# The final rotation (North Rotation) (Gatling Gun I)
execute as @e[type=armor_stand,tag=ggii] at @s if entity @n[type=marker,tag=!defense,tag=!air,distance=..33] if score @s rotation < #NNE rotation if score @s rotation >= #Nneg rotation run clone -16 124 -96 -4 122 -84 ~-6 ~2 ~-6
execute as @e[type=armor_stand,tag=ggii] at @s if entity @n[type=marker,tag=!defense,tag=!air,distance=..33] if score @s rotation > #NNW rotation if score @s rotation <= #Npos rotation run clone -16 124 -96 -4 122 -84 ~-6 ~2 ~-6





        # Shooting
        #execute as @e[type=armor_stand,tag=sb] at @s if entity @n[type=armor_stand,tag=!defense,distance=..33] run particle angry_villager ^ ^ ^15 0.4 0.4 6 0.05 100 force
        #execute as @e[type=armor_stand,tag=sb] at @s if entity @n[type=armor_stand,tag=!defense,distance=..33] if score @s rotation <= #SEE rotation if score @s rotation > #NEE rotation run particle angry_villager ^ ^5 ^15 6 0.3 0.3 0 100 force
        #execute as @e[type=armor_stand,tag=sb] at @s if entity @n[type=armor_stand,tag=!defense,distance=..33] if score @s rotation <= #SSW rotation if score @s rotation > #SSE rotation run particle angry_villager ^ ^5 ^15 0.3 0.3 6 0 100 force




# Health Reduction of Barrels
execute as @e[type=armor_stand,tag=sb] at @s if entity @n[type=marker,tag=!defense,tag=!air,distance=..33] run execute as @e[type=marker,tag=!defense,limit=1] if score #defense_cd cooldown <= #cooldown0 cooldown run scoreboard players operation @e[type=marker,sort=furthest,limit=1,tag=!defense,tag=!air,distance=..33] health -= #SBGGdmg health
execute as @e[type=marker,tag=!defense,scores={health=..0}] at @s if score @s health < #cooldown0 cooldown run fill ~-6 ~ ~-6 ~6 ~11 ~6 air
execute as @e[type=marker,tag=!defense,sort=nearest,limit=1] at @s if score @s health < #cooldown0 cooldown run particle minecraft:dust_plume ~ ~3 ~ 3 2 3 0 250 force
execute as @e[type=marker,tag=!defense] at @n[type=armor_stand,tag=sb] if score @s health <= #cooldown0 cooldown run kill @e[type=marker,tag=!defense,scores={health=..-1}]

execute as @e[type=armor_stand,tag=ggi] at @s if entity @n[type=marker,tag=!defense,tag=!air,distance=..26.4] run execute as @e[type=marker,tag=!defense,limit=1] if score #defense_cd_10 cooldown <= #cooldown0 cooldown run scoreboard players operation @e[type=marker,sort=furthest,limit=1,tag=!defense,tag=!air,distance=..26.4] health -= #SBGGdmg health
execute as @e[type=marker,tag=!defense,scores={health=..0}] at @s if score @s health < #cooldown0 cooldown run fill ~-6 ~ ~-6 ~6 ~11 ~6 air
execute as @e[type=marker,tag=!defense,sort=nearest,limit=1] at @s if score @s health < #cooldown0 cooldown run particle minecraft:dust_plume ~ ~3 ~ 3 2 3 0 250 force
execute as @e[type=marker,tag=!defense] at @n[type=armor_stand,tag=ggi] if score @s health <= #cooldown0 cooldown run kill @e[type=marker,tag=!defense,scores={health=..-1}]

execute as @e[type=armor_stand,tag=ast] at @s if entity @n[type=marker,tag=!defense,distance=..33] run execute as @e[type=marker,tag=!defense,limit=1] if score #defense_cd_12 cooldown <= #cooldown0 cooldown run scoreboard players operation @e[type=marker,sort=furthest,limit=1,tag=!defense,distance=..33] health -= #ASTdmg health
execute as @e[type=marker,tag=!defense,scores={health=..0}] at @s if score @s health < #cooldown0 cooldown run fill ~-6 ~ ~-6 ~6 ~11 ~6 air
execute as @e[type=marker,tag=!defense,sort=nearest,limit=1] at @s if score @s health < #cooldown0 cooldown run particle minecraft:dust_plume ~ ~3 ~ 3 2 3 0 250 force
execute as @e[type=marker,tag=!defense] at @n[type=armor_stand,tag=ast] if score @s health <= #cooldown0 cooldown run kill @e[type=marker,tag=!defense,scores={health=..-1}]

execute as @e[type=armor_stand,tag=shb] at @s if entity @n[type=marker,tag=!defense,tag=!air,distance=..33] run execute as @e[type=marker,tag=!defense,limit=1] if score #defense_cd_17 cooldown <= #cooldown0 cooldown run scoreboard players operation @e[type=marker,sort=furthest,limit=1,tag=!defense,tag=!air,distance=..33] health -= #SHBdmg health
execute as @e[type=marker,tag=!defense,scores={health=..0}] at @s if score @s health < #cooldown0 cooldown run fill ~-6 ~ ~-6 ~6 ~11 ~6 air
execute as @e[type=marker,tag=!defense,sort=nearest,limit=1] at @s if score @s health < #cooldown0 cooldown run particle minecraft:dust_plume ~ ~3 ~ 3 2 3 0 250 force
execute as @e[type=marker,tag=!defense] at @n[type=armor_stand,tag=shb] if score @s health <= #cooldown0 cooldown run kill @e[type=marker,tag=!defense,scores={health=..-1}]

execute as @e[type=armor_stand,tag=dp] at @s if entity @n[type=marker,tag=!defense,distance=..33] run execute as @e[type=marker,tag=!defense,limit=1] if score #defense_cd_dp cooldown <= #cooldown0 cooldown run scoreboard players operation @e[type=marker,sort=furthest,limit=1,tag=!defense,distance=..33] health -= #DPdmg health
execute as @e[type=marker,tag=!defense,scores={health=..0}] at @s if score @s health < #cooldown0 cooldown run fill ~-6 ~ ~-6 ~6 ~11 ~6 air
execute as @e[type=marker,tag=!defense,sort=nearest,limit=1] at @s if score @s health < #cooldown0 cooldown run particle minecraft:dust_plume ~ ~3 ~ 3 2 3 0 250 force
execute as @e[type=marker,tag=!defense] at @n[type=armor_stand,tag=dp] if score @s health <= #cooldown0 cooldown run kill @e[type=marker,tag=!defense,scores={health=..-1}]

execute as @e[type=armor_stand,tag=bl] at @s if entity @n[type=marker,tag=!defense,tag=!air,distance=..33] run execute as @e[type=marker,tag=!defense,limit=1] if score #defense_cd cooldown <= #cooldown0 cooldown run scoreboard players operation @e[type=marker,sort=furthest,limit=1,tag=!defense,tag=!air,distance=..33] health -= #BLdmg health
execute as @e[type=marker,tag=!defense,scores={health=..0}] at @s if score @s health < #cooldown0 cooldown run fill ~-6 ~ ~-6 ~6 ~11 ~6 air
execute as @e[type=marker,tag=!defense,sort=nearest,limit=1] at @s if score @s health < #cooldown0 cooldown run particle minecraft:dust_plume ~ ~3 ~ 3 2 3 0 250 force
execute as @e[type=marker,tag=!defense] at @n[type=armor_stand,tag=bl] if score @s health <= #cooldown0 cooldown run kill @e[type=marker,tag=!defense,scores={health=..-1}]

execute as @e[type=armor_stand,tag=tt] at @s if entity @n[type=marker,tag=!defense,distance=..33] run execute as @e[type=marker,tag=!defense,limit=1] if score #defense_cd_10 cooldown <= #cooldown0 cooldown run scoreboard players operation @e[type=marker,sort=furthest,limit=1,tag=!defense,distance=..33] health -= #TTdmg health
execute as @e[type=marker,tag=!defense,scores={health=..0}] at @s if score @s health < #cooldown0 cooldown run fill ~-6 ~ ~-6 ~6 ~11 ~6 air
execute as @e[type=marker,tag=!defense,sort=nearest,limit=1] at @s if score @s health < #cooldown0 cooldown run particle minecraft:dust_plume ~ ~3 ~ 3 2 3 0 250 force
execute as @e[type=marker,tag=!defense] at @n[type=armor_stand,tag=tt] if score @s health <= #cooldown0 cooldown run kill @e[type=marker,tag=!defense,scores={health=..-1}]

execute as @e[type=armor_stand,tag=ggii] at @s if entity @n[type=marker,tag=!defense,tag=!air,distance=..33] run execute as @e[type=marker,tag=!defense,limit=1] if score #defense_cd_10 cooldown <= #cooldown0 cooldown run scoreboard players operation @e[type=marker,sort=furthest,limit=1,tag=!defense,tag=!air,distance=..33] health -= #GGIIdmg health
execute as @e[type=marker,tag=!defense,scores={health=..0}] at @s if score @s health < #cooldown0 cooldown run fill ~-6 ~ ~-6 ~6 ~11 ~6 air
execute as @e[type=marker,tag=!defense,sort=nearest,limit=1] at @s if score @s health < #cooldown0 cooldown run particle minecraft:dust_plume ~ ~3 ~ 3 2 3 0 250 force
execute as @e[type=marker,tag=!defense] at @n[type=armor_stand,tag=ggii] if score @s health <= #cooldown0 cooldown run kill @e[type=marker,tag=!defense,scores={health=..-1}]
