# Note to any people viewing: This is a recreation of ScrapTD by Schrott Games. 
# You can learn more here: https://official-scrap-2.fandom.com/wiki/ScrapTD


# Note to self: Whitespaces will break stuff!


# Gamerule Settings
gamerule doMobSpawning false
gamerule mobGriefing false
gamerule doFireTick false
gamerule doImmediateRespawn true
gamerule keepInventory true
gamerule fallDamage false
gamerule showDeathMessages false
gamerule announceAdvancements false
gamerule doVinesSpread false
gamerule commandModificationBlockLimit 50000

# Spawn
setworldspawn -100 61 1 90

# Load Code
tellraw @a[tag=is_admin] {"color": "blue", "text": "The Code be Load"}
title @a[tag=is_admin] times 5 17 5
title @a[tag=is_admin] title ""
title @a[tag=is_admin] subtitle {"text":"The Code is Load","color":"dark_green"}
title @a[tag=!is_admin] actionbar {"color": "green", "text": "Datapack loaded!"}

# Time Settings
time set 582

# Scoreboard Settings
scoreboard objectives add cooldown dummy
scoreboard objectives add rotation dummy
scoreboard objectives add health dummy
scoreboard objectives add gamemode trigger
scoreboard objectives add speed trigger
scoreboard objectives add captcha dummy
scoreboard objectives add captcha2 dummy
scoreboard objectives add captcha3 dummy
scoreboard objectives add verify trigger
scoreboard objectives add leave_detect dummy
scoreboard objectives add plat_b trigger
scoreboard objectives add plat_r trigger
scoreboard objectives add scrap_b dummy
scoreboard objectives add scrap_r dummy
scoreboard objectives add scrap_s_b dummy
scoreboard objectives add scrap_s_r dummy
scoreboard objectives add health_b dummy
scoreboard objectives add health_r dummy
scoreboard objectives add trophies dummy
scoreboard objectives add trophies_add dummy
scoreboard objectives add time dummy
scoreboard objectives add scrap_b_billion dummy
scoreboard objectives add scrap_r_billion dummy
scoreboard objectives add scrap_0_billion_b dummy
scoreboard objectives add scrap_0_billion_r dummy
scoreboard objectives add buy dummy



# Scoreboard Values for non-defense
scoreboard players set Cooldown cooldown 0
scoreboard players set Cooldown2 cooldown 0
scoreboard players set Cooldown3 cooldown 0
scoreboard players set #cooldown0 cooldown 0
scoreboard players set #cooldown1 cooldown 1
scoreboard players set damage cooldown 0
scoreboard players set #defense_cd cooldown 50
scoreboard players set #defense_cd_10 cooldown 5
scoreboard players set #defense_cd_12 cooldown 42
scoreboard players set #defense_cd_17 cooldown 17
scoreboard players set #defense_cd_dp cooldown 8



# Scoreboard Values for rotations
scoreboard players set #NNE rotation -157
scoreboard players set #NEE rotation -112
scoreboard players set #SEE rotation -67
scoreboard players set #SSE rotation -22
scoreboard players set #SSW rotation 22
scoreboard players set #SWW rotation 67
scoreboard players set #NWW rotation 112
scoreboard players set #NNW rotation 157
scoreboard players set #Npos rotation 180
scoreboard players set #Nneg rotation -180

# Scoreboard Values for Health Reduction
scoreboard players set #SBGGdmg health 50
scoreboard players set #ASTdmg health 1000
scoreboard players set #SHBdmg health 1400
scoreboard players set #DPdmg health 1000
scoreboard players set #BLdmg health 30000
scoreboard players set #TTdmg health 6000
scoreboard players set #GGIIdmg health 17500

# Force-load sprite table
forceload add -60 -40 120 -138

# Force-load the field
forceload add 241 117 -16 -8


# Team
team add Player
team modify Player collisionRule never
team modify Player friendlyFire false


# Reload Counter
scoreboard objectives add counter_reload dummy
scoreboard players add $reloads counter_reload 1
tellraw @a[tag=is_admin] [{"text":"This is reload #","color":"red"},"",{"score": {"name": "$reloads", "objective": "counter_reload"}, "color":"red"}]

scoreboard objectives modify health displayname {"underlined":true,"text":"Barrel Health","color":"green","bold":true}

# Queue Stuff
bossbar add queue:general {"text":"Waiting for other players..."}
bossbar set queue:general color white
bossbar set queue:general max 2
bossbar set queue:general style progress
bossbar set queue:general value 0
bossbar set queue:general visible true


team add queue {"text":"<Queued>"}
team modify queue prefix {"text":"(Queued) ","color":"dark_gray"}
#team empty queue

scoreboard objectives add queue.queue dummy "Queue-related scores"
scoreboard players set $queue.increment queue.queue 1


# Team 2 (bruh)
team add Blue {"text":"(Blue)","color":"blue"}
team modify Blue color blue
team modify Blue prefix {"text":"[Blue] ","color":"blue"}

team add Red {"text":"(Red)","color":"red"}
team modify Red color red
team modify Red prefix {"text":"[Red] ","color":"red"}



# Builder
team add builder
team modify builder color gold
    #team modify builder prefix [{"text":"[Builder] ","color":"gold"}]
execute unless entity @a[name=3255ms,team=Red] run team join builder 3255ms
execute unless entity @a[name=3255ms,team=Blue] run team join builder 3255ms
team modify builder prefix [{"color":"#5786F8","text":"["},{"color":"#517DF8","text":"B"},{"color":"#4B73F8","text":"u"},{"color":"#466AF9","text":"i"},{"color":"#4061F9","text":"l"},{"color":"#3A57F9","text":"d"},{"color":"#344EF9","text":"e"},{"color":"#2F45FA","text":"r"},{"color":"#2332FA","text":"] "}]


# Scrap Styles 
scoreboard objectives modify scrap_b numberformat styled {"color":"aqua","bold":false}
scoreboard objectives modify scrap_r numberformat styled {"color":"red","bold":false}
scoreboard objectives modify scrap_s_b numberformat styled {"color":"aqua","bold":false}
scoreboard objectives modify scrap_s_r numberformat styled {"color":"red","bold":false}


















# Initialize Sprite Table
function code:init