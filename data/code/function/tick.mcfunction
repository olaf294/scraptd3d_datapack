# Cooldown Management
execute unless score Cooldown cooldown matches ..0 run scoreboard players operation Cooldown cooldown -= #cooldown1 cooldown
execute unless score Cooldown2 cooldown matches ..0 run scoreboard players operation Cooldown2 cooldown -= #cooldown1 cooldown
execute unless score Cooldown3 cooldown matches ..0 run scoreboard players operation Cooldown3 cooldown -= #cooldown1 cooldown


# Barrel: Circle Blue | Speed: ~1.5 | New Speed: ~0.9
execute align xyz as @e[type=marker,tag=cb] at @s if block ~ ~-2 ~ magenta_glazed_terracotta[facing=east] run tp @s ~-0.36 ~ ~
execute align xyz as @e[type=marker,tag=cb] at @s if block ~ ~-2 ~ magenta_glazed_terracotta[facing=south] run tp @s ~ ~ ~-0.36
execute align xyz as @e[type=marker,tag=cb] at @s if block ~ ~-2 ~ magenta_glazed_terracotta[facing=west] run tp @s ~0.36 ~ ~
execute align xyz as @e[type=marker,tag=cb] at @s if block ~ ~-2 ~ magenta_glazed_terracotta[facing=north] run tp @s ~ ~ ~0.36

# Barrel: Square Pink | Speed: ~1.1 | New Speed: ~0.66
execute align xyz as @e[type=marker,tag=sp] at @s if block ~ ~-2 ~ magenta_glazed_terracotta[facing=east] run tp @s ~-0.264 ~ ~
execute align xyz as @e[type=marker,tag=sp] at @s if block ~ ~-2 ~ magenta_glazed_terracotta[facing=south] run tp @s ~ ~ ~-0.264
execute align xyz as @e[type=marker,tag=sp] at @s if block ~ ~-2 ~ magenta_glazed_terracotta[facing=west] run tp @s ~0.264 ~ ~
execute align xyz as @e[type=marker,tag=sp] at @s if block ~ ~-2 ~ magenta_glazed_terracotta[facing=north] run tp @s ~ ~ ~0.264

# Barrel: Banana Hole | Speed: ~1.4 | New Speed: ~0.84
execute align xyz as @e[type=marker,tag=bh] at @s if block ~ ~-2 ~ magenta_glazed_terracotta[facing=east] run tp @s ~-0.336 ~ ~
execute align xyz as @e[type=marker,tag=bh] at @s if block ~ ~-2 ~ magenta_glazed_terracotta[facing=south] run tp @s ~ ~ ~-0.336
execute align xyz as @e[type=marker,tag=bh] at @s if block ~ ~-2 ~ magenta_glazed_terracotta[facing=west] run tp @s ~0.336 ~ ~
execute align xyz as @e[type=marker,tag=bh] at @s if block ~ ~-2 ~ magenta_glazed_terracotta[facing=north] run tp @s ~ ~ ~0.336

# Barrel: Billboard | Speed: ~1 | New Speed: ~0.6
execute align xyz as @e[type=marker,tag=bb] at @s if block ~ ~-2 ~ magenta_glazed_terracotta[facing=east] run tp @s ~-0.24 ~ ~
execute align xyz as @e[type=marker,tag=bb] at @s if block ~ ~-2 ~ magenta_glazed_terracotta[facing=south] run tp @s ~ ~ ~-0.24
execute align xyz as @e[type=marker,tag=bb] at @s if block ~ ~-2 ~ magenta_glazed_terracotta[facing=west] run tp @s ~0.24 ~ ~
execute align xyz as @e[type=marker,tag=bb] at @s if block ~ ~-2 ~ magenta_glazed_terracotta[facing=north] run tp @s ~ ~ ~0.24

# Barrel: Lurid Layered | Speed: ~1.2 | New Speed: ~0.72
execute align xyz as @e[type=marker,tag=ll] at @s if block ~ ~-2 ~ magenta_glazed_terracotta[facing=east] run tp @s ~-0.288 ~ ~
execute align xyz as @e[type=marker,tag=ll] at @s if block ~ ~-2 ~ magenta_glazed_terracotta[facing=south] run tp @s ~ ~ ~-0.288
execute align xyz as @e[type=marker,tag=ll] at @s if block ~ ~-2 ~ magenta_glazed_terracotta[facing=west] run tp @s ~0.288 ~ ~
execute align xyz as @e[type=marker,tag=ll] at @s if block ~ ~-2 ~ magenta_glazed_terracotta[facing=north] run tp @s ~ ~ ~0.288

# Barrel: Coal | Speed: ~0.5 | New Speed: ~0.3
execute align xyz as @e[type=marker,tag=co] at @s if block ~ ~-2 ~ magenta_glazed_terracotta[facing=east] run tp @s ~-0.12 ~ ~
execute align xyz as @e[type=marker,tag=co] at @s if block ~ ~-2 ~ magenta_glazed_terracotta[facing=south] run tp @s ~ ~ ~-0.12
execute align xyz as @e[type=marker,tag=co] at @s if block ~ ~-2 ~ magenta_glazed_terracotta[facing=west] run tp @s ~0.12 ~ ~
execute align xyz as @e[type=marker,tag=co] at @s if block ~ ~-2 ~ magenta_glazed_terracotta[facing=north] run tp @s ~ ~ ~0.12

# Barrel: It's Alive | Speed: ~0.5 | New Speed: ~0.3
execute align xyz as @e[type=marker,tag=ia] at @s if block ~ ~-2 ~ magenta_glazed_terracotta[facing=east] run tp @s ~-0.12 ~ ~
execute align xyz as @e[type=marker,tag=ia] at @s if block ~ ~-2 ~ magenta_glazed_terracotta[facing=south] run tp @s ~ ~ ~-0.12
execute align xyz as @e[type=marker,tag=ia] at @s if block ~ ~-2 ~ magenta_glazed_terracotta[facing=west] run tp @s ~0.12 ~ ~
execute align xyz as @e[type=marker,tag=ia] at @s if block ~ ~-2 ~ magenta_glazed_terracotta[facing=north] run tp @s ~ ~ ~0.12

# Barrel: Danger Zone | Speed: ~1.8 | New Speed: ~1.08
execute align xyz as @e[type=marker,tag=dz] at @s if block ~ ~-2 ~ magenta_glazed_terracotta[facing=east] run tp @s ~-0.432 ~ ~
execute align xyz as @e[type=marker,tag=dz] at @s if block ~ ~-2 ~ magenta_glazed_terracotta[facing=south] run tp @s ~ ~ ~-0.432
execute align xyz as @e[type=marker,tag=dz] at @s if block ~ ~-2 ~ magenta_glazed_terracotta[facing=west] run tp @s ~0.432 ~ ~
execute align xyz as @e[type=marker,tag=dz] at @s if block ~ ~-2 ~ magenta_glazed_terracotta[facing=north] run tp @s ~ ~ ~0.432

# Barrel: Not Black | Speed: ~0.5 | New Speed: ~0.3
execute align xyz as @e[type=marker,tag=nb] at @s if block ~ ~-2 ~ magenta_glazed_terracotta[facing=east] run tp @s ~-0.12 ~ ~
execute align xyz as @e[type=marker,tag=nb] at @s if block ~ ~-2 ~ magenta_glazed_terracotta[facing=south] run tp @s ~ ~ ~-0.12
execute align xyz as @e[type=marker,tag=nb] at @s if block ~ ~-2 ~ magenta_glazed_terracotta[facing=west] run tp @s ~0.12 ~ ~
execute align xyz as @e[type=marker,tag=nb] at @s if block ~ ~-2 ~ magenta_glazed_terracotta[facing=north] run tp @s ~ ~ ~0.12

# Barrel: Swiss | Speed: ~0.4 | New Speed: ~0.24
execute align xyz as @e[type=marker,tag=sw] at @s if block ~ ~-2 ~ magenta_glazed_terracotta[facing=east] run tp @s ~-0.16 ~ ~
execute align xyz as @e[type=marker,tag=sw] at @s if block ~ ~-2 ~ magenta_glazed_terracotta[facing=south] run tp @s ~ ~ ~-0.16
execute align xyz as @e[type=marker,tag=sw] at @s if block ~ ~-2 ~ magenta_glazed_terracotta[facing=west] run tp @s ~0.16 ~ ~
execute align xyz as @e[type=marker,tag=sw] at @s if block ~ ~-2 ~ magenta_glazed_terracotta[facing=north] run tp @s ~ ~ ~0.16

# Barrel: Inception | Speed: ~0.75 | New Speed: ~0.45
execute align xyz as @e[type=marker,tag=in] at @s if block ~ ~-2 ~ magenta_glazed_terracotta[facing=east] run tp @s ~-0.18 ~ ~
execute align xyz as @e[type=marker,tag=in] at @s if block ~ ~-2 ~ magenta_glazed_terracotta[facing=south] run tp @s ~ ~ ~-0.18
execute align xyz as @e[type=marker,tag=in] at @s if block ~ ~-2 ~ magenta_glazed_terracotta[facing=west] run tp @s ~0.18 ~ ~
execute align xyz as @e[type=marker,tag=in] at @s if block ~ ~-2 ~ magenta_glazed_terracotta[facing=north] run tp @s ~ ~ ~0.18

# Barrel: Mobile Delivery | Speed: ~2 | New Speed: ~1.2
execute align xyz as @e[type=marker,tag=md] at @s if block ~ ~-2 ~ magenta_glazed_terracotta[facing=east] run tp @s ~-0.48 ~ ~
execute align xyz as @e[type=marker,tag=md] at @s if block ~ ~-2 ~ magenta_glazed_terracotta[facing=south] run tp @s ~ ~ ~-0.48
execute align xyz as @e[type=marker,tag=md] at @s if block ~ ~-2 ~ magenta_glazed_terracotta[facing=west] run tp @s ~0.48 ~ ~
execute align xyz as @e[type=marker,tag=md] at @s if block ~ ~-2 ~ magenta_glazed_terracotta[facing=north] run tp @s ~ ~ ~0.48

# Barrel: Christmas | Speed: ~0.5 | New Speed: ~0.3
execute align xyz as @e[type=marker,tag=chri] at @s if block ~ ~-2 ~ magenta_glazed_terracotta[facing=east] run tp @s ~-0.12 ~ ~
execute align xyz as @e[type=marker,tag=chri] at @s if block ~ ~-2 ~ magenta_glazed_terracotta[facing=south] run tp @s ~ ~ ~-0.12
execute align xyz as @e[type=marker,tag=chri] at @s if block ~ ~-2 ~ magenta_glazed_terracotta[facing=west] run tp @s ~0.12 ~ ~
execute align xyz as @e[type=marker,tag=chri] at @s if block ~ ~-2 ~ magenta_glazed_terracotta[facing=north] run tp @s ~ ~ ~0.12

# Barrel: Hot Stuff | Speed: ~1 | New Speed: ~0.6
execute align xyz as @e[type=marker,tag=hs] at @s if block ~ ~-2 ~ magenta_glazed_terracotta[facing=east] run tp @s ~-0.24 ~ ~
execute align xyz as @e[type=marker,tag=hs] at @s if block ~ ~-2 ~ magenta_glazed_terracotta[facing=south] run tp @s ~ ~ ~-0.24
execute align xyz as @e[type=marker,tag=hs] at @s if block ~ ~-2 ~ magenta_glazed_terracotta[facing=west] run tp @s ~0.24 ~ ~
execute align xyz as @e[type=marker,tag=hs] at @s if block ~ ~-2 ~ magenta_glazed_terracotta[facing=north] run tp @s ~ ~ ~0.24

# Barrel: Not Too Fresh | Speed: ~1.5 | New Speed: ~0.9
execute align xyz as @e[type=marker,tag=ntf] at @s if block ~ ~-2 ~ magenta_glazed_terracotta[facing=east] run tp @s ~-0.36 ~ ~
execute align xyz as @e[type=marker,tag=ntf] at @s if block ~ ~-2 ~ magenta_glazed_terracotta[facing=south] run tp @s ~ ~ ~-0.36
execute align xyz as @e[type=marker,tag=ntf] at @s if block ~ ~-2 ~ magenta_glazed_terracotta[facing=west] run tp @s ~0.36 ~ ~
execute align xyz as @e[type=marker,tag=ntf] at @s if block ~ ~-2 ~ magenta_glazed_terracotta[facing=north] run tp @s ~ ~ ~0.36

# Barrel: Chrome | Speed: ~1.2 | New Speed: ~0.72
execute align xyz as @e[type=marker,tag=chro] at @s if block ~ ~-2 ~ magenta_glazed_terracotta[facing=east] run tp @s ~-0.288 ~ ~
execute align xyz as @e[type=marker,tag=chro] at @s if block ~ ~-2 ~ magenta_glazed_terracotta[facing=south] run tp @s ~ ~ ~-0.288
execute align xyz as @e[type=marker,tag=chro] at @s if block ~ ~-2 ~ magenta_glazed_terracotta[facing=west] run tp @s ~0.288 ~ ~
execute align xyz as @e[type=marker,tag=chro] at @s if block ~ ~-2 ~ magenta_glazed_terracotta[facing=north] run tp @s ~ ~ ~0.288

# Barrel: Thor | Speed: ~1 | New Speed: ~0.6
execute align xyz as @e[type=marker,tag=th] at @s if block ~ ~-2 ~ magenta_glazed_terracotta[facing=east] run tp @s ~-0.24 ~ ~
execute align xyz as @e[type=marker,tag=th] at @s if block ~ ~-2 ~ magenta_glazed_terracotta[facing=south] run tp @s ~ ~ ~-0.24
execute align xyz as @e[type=marker,tag=th] at @s if block ~ ~-2 ~ magenta_glazed_terracotta[facing=west] run tp @s ~0.24 ~ ~
execute align xyz as @e[type=marker,tag=th] at @s if block ~ ~-2 ~ magenta_glazed_terracotta[facing=north] run tp @s ~ ~ ~0.24




# Specific Deletion with damage | Damage Taking Player: Red
execute align xyz as @e[type=marker,tag=cb] at @s if block ~ ~-3 ~ pink_glazed_terracotta run scoreboard players remove $health health_r 25
execute align xyz as @e[type=marker,tag=cb] at @s if block ~ ~-3 ~ pink_glazed_terracotta run kill @s

execute align xyz as @e[type=marker,tag=sp] at @s if block ~ ~-3 ~ pink_glazed_terracotta run scoreboard players remove $health health_r 50
execute align xyz as @e[type=marker,tag=sp] at @s if block ~ ~-3 ~ pink_glazed_terracotta run kill @s

execute align xyz as @e[type=marker,tag=bh] at @s if block ~ ~-3 ~ pink_glazed_terracotta run scoreboard players remove $health health_r 50
execute align xyz as @e[type=marker,tag=bh] at @s if block ~ ~-3 ~ pink_glazed_terracotta run kill @s

execute align xyz as @e[type=marker,tag=bb] at @s if block ~ ~-3 ~ pink_glazed_terracotta run scoreboard players remove $health health_r 50
execute align xyz as @e[type=marker,tag=bb] at @s if block ~ ~-3 ~ pink_glazed_terracotta run kill @s

execute align xyz as @e[type=marker,tag=ll] at @s if block ~ ~-3 ~ pink_glazed_terracotta run scoreboard players remove $health health_r 50
execute align xyz as @e[type=marker,tag=ll] at @s if block ~ ~-3 ~ pink_glazed_terracotta run kill @s

execute align xyz as @e[type=marker,tag=co] at @s if block ~ ~-3 ~ pink_glazed_terracotta run scoreboard players remove $health health_r 100
execute align xyz as @e[type=marker,tag=co] at @s if block ~ ~-3 ~ pink_glazed_terracotta run kill @s

execute align xyz as @e[type=marker,tag=ia] at @s if block ~ ~-3 ~ pink_glazed_terracotta run scoreboard players remove $health health_r 50
execute align xyz as @e[type=marker,tag=ia] at @s if block ~ ~-3 ~ pink_glazed_terracotta run kill @s

execute align xyz as @e[type=marker,tag=dz] at @s if block ~ ~-3 ~ pink_glazed_terracotta run scoreboard players remove $health health_r 50
execute align xyz as @e[type=marker,tag=dz] at @s if block ~ ~-3 ~ pink_glazed_terracotta run kill @s

execute align xyz as @e[type=marker,tag=nb] at @s if block ~ ~-3 ~ pink_glazed_terracotta run scoreboard players remove $health health_r 50
execute align xyz as @e[type=marker,tag=nb] at @s if block ~ ~-3 ~ pink_glazed_terracotta run kill @s

execute align xyz as @e[type=marker,tag=sw] at @s if block ~ ~-3 ~ pink_glazed_terracotta run scoreboard players remove $health health_r 50
execute align xyz as @e[type=marker,tag=sw] at @s if block ~ ~-3 ~ pink_glazed_terracotta run kill @s

execute align xyz as @e[type=marker,tag=in] at @s if block ~ ~-3 ~ pink_glazed_terracotta run scoreboard players remove $health health_r 50
execute align xyz as @e[type=marker,tag=in] at @s if block ~ ~-3 ~ pink_glazed_terracotta run kill @s

execute align xyz as @e[type=marker,tag=md] at @s if block ~ ~-3 ~ pink_glazed_terracotta run scoreboard players remove $health health_r 25
execute align xyz as @e[type=marker,tag=md] at @s if block ~ ~-3 ~ pink_glazed_terracotta run kill @s

execute align xyz as @e[type=marker,tag=chri] at @s if block ~ ~-3 ~ pink_glazed_terracotta run scoreboard players remove $health health_r 150
execute align xyz as @e[type=marker,tag=chri] at @s if block ~ ~-3 ~ pink_glazed_terracotta run kill @s

execute align xyz as @e[type=marker,tag=hs] at @s if block ~ ~-3 ~ pink_glazed_terracotta run scoreboard players remove $health health_r 200
execute align xyz as @e[type=marker,tag=hs] at @s if block ~ ~-3 ~ pink_glazed_terracotta run kill @s

execute align xyz as @e[type=marker,tag=ntf] at @s if block ~ ~-3 ~ pink_glazed_terracotta run scoreboard players remove $health health_r 100
execute align xyz as @e[type=marker,tag=ntf] at @s if block ~ ~-3 ~ pink_glazed_terracotta run kill @s

execute align xyz as @e[type=marker,tag=chro] at @s if block ~ ~-3 ~ pink_glazed_terracotta run scoreboard players remove $health health_r 200
execute align xyz as @e[type=marker,tag=chro] at @s if block ~ ~-3 ~ pink_glazed_terracotta run kill @s

execute align xyz as @e[type=marker,tag=th] at @s if block ~ ~-3 ~ pink_glazed_terracotta run scoreboard players remove $health health_r 50
execute align xyz as @e[type=marker,tag=th] at @s if block ~ ~-3 ~ pink_glazed_terracotta run kill @s



# Specific Deletion with damage | Damage Taking Player: Blue
execute align xyz as @e[type=marker,tag=cb] at @s if block ~ ~-3 ~ light_blue_glazed_terracotta run scoreboard players remove $health health_b 25
execute align xyz as @e[type=marker,tag=cb] at @s if block ~ ~-3 ~ light_blue_glazed_terracotta run kill @s

execute align xyz as @e[type=marker,tag=sp] at @s if block ~ ~-3 ~ light_blue_glazed_terracotta run scoreboard players remove $health health_b 50
execute align xyz as @e[type=marker,tag=sp] at @s if block ~ ~-3 ~ light_blue_glazed_terracotta run kill @s

execute align xyz as @e[type=marker,tag=bh] at @s if block ~ ~-3 ~ light_blue_glazed_terracotta run scoreboard players remove $health health_b 50
execute align xyz as @e[type=marker,tag=bh] at @s if block ~ ~-3 ~ light_blue_glazed_terracotta run kill @s

execute align xyz as @e[type=marker,tag=bb] at @s if block ~ ~-3 ~ light_blue_glazed_terracotta run scoreboard players remove $health health_b 50
execute align xyz as @e[type=marker,tag=bb] at @s if block ~ ~-3 ~ light_blue_glazed_terracotta run kill @s

execute align xyz as @e[type=marker,tag=ll] at @s if block ~ ~-3 ~ light_blue_glazed_terracotta run scoreboard players remove $health health_b 50
execute align xyz as @e[type=marker,tag=ll] at @s if block ~ ~-3 ~ light_blue_glazed_terracotta run kill @s

execute align xyz as @e[type=marker,tag=co] at @s if block ~ ~-3 ~ light_blue_glazed_terracotta run scoreboard players remove $health health_b 100
execute align xyz as @e[type=marker,tag=co] at @s if block ~ ~-3 ~ light_blue_glazed_terracotta run kill @s

execute align xyz as @e[type=marker,tag=ia] at @s if block ~ ~-3 ~ light_blue_glazed_terracotta run scoreboard players remove $health health_b 50
execute align xyz as @e[type=marker,tag=ia] at @s if block ~ ~-3 ~ light_blue_glazed_terracotta run kill @s

execute align xyz as @e[type=marker,tag=dz] at @s if block ~ ~-3 ~ light_blue_glazed_terracotta run scoreboard players remove $health health_b 50
execute align xyz as @e[type=marker,tag=dz] at @s if block ~ ~-3 ~ light_blue_glazed_terracotta run kill @s

execute align xyz as @e[type=marker,tag=nb] at @s if block ~ ~-3 ~ light_blue_glazed_terracotta run scoreboard players remove $health health_b 50
execute align xyz as @e[type=marker,tag=nb] at @s if block ~ ~-3 ~ light_blue_glazed_terracotta run kill @s

execute align xyz as @e[type=marker,tag=sw] at @s if block ~ ~-3 ~ light_blue_glazed_terracotta run scoreboard players remove $health health_b 50
execute align xyz as @e[type=marker,tag=sw] at @s if block ~ ~-3 ~ light_blue_glazed_terracotta run kill @s

execute align xyz as @e[type=marker,tag=in] at @s if block ~ ~-3 ~ light_blue_glazed_terracotta run scoreboard players remove $health health_b 50
execute align xyz as @e[type=marker,tag=in] at @s if block ~ ~-3 ~ light_blue_glazed_terracotta run kill @s

execute align xyz as @e[type=marker,tag=md] at @s if block ~ ~-3 ~ light_blue_glazed_terracotta run scoreboard players remove $health health_b 25
execute align xyz as @e[type=marker,tag=md] at @s if block ~ ~-3 ~ light_blue_glazed_terracotta run kill @s

execute align xyz as @e[type=marker,tag=chri] at @s if block ~ ~-3 ~ light_blue_glazed_terracotta run scoreboard players remove $health health_b 150
execute align xyz as @e[type=marker,tag=chri] at @s if block ~ ~-3 ~ light_blue_glazed_terracotta run kill @s

execute align xyz as @e[type=marker,tag=hs] at @s if block ~ ~-3 ~ light_blue_glazed_terracotta run scoreboard players remove $health health_b 200
execute align xyz as @e[type=marker,tag=hs] at @s if block ~ ~-3 ~ light_blue_glazed_terracotta run kill @s

execute align xyz as @e[type=marker,tag=ntf] at @s if block ~ ~-3 ~ light_blue_glazed_terracotta run scoreboard players remove $health health_b 100
execute align xyz as @e[type=marker,tag=ntf] at @s if block ~ ~-3 ~ light_blue_glazed_terracotta run kill @s

execute align xyz as @e[type=marker,tag=chro] at @s if block ~ ~-3 ~ light_blue_glazed_terracotta run scoreboard players remove $health health_b 200
execute align xyz as @e[type=marker,tag=chro] at @s if block ~ ~-3 ~ light_blue_glazed_terracotta run kill @s

execute align xyz as @e[type=marker,tag=th] at @s if block ~ ~-3 ~ light_blue_glazed_terracotta run scoreboard players remove $health health_b 50
execute align xyz as @e[type=marker,tag=th] at @s if block ~ ~-3 ~ light_blue_glazed_terracotta run kill @s






# Cloning/Structure Placement as movement illusion
#execute align xz as @e[type=marker,tag=cb] at @s unless block ~ ~ ~ waxed_copper_block run clone -56 111 -56 -44 100 -44 ~-6 ~ ~-6
execute align xz as @e[type=marker,tag=cb] at @s unless block ~ ~ ~ waxed_copper_block run place template scraptd:cb ~-6 ~ ~-6

#execute align xz as @e[type=marker,tag=sp] at @s unless block ~ ~ ~ waxed_copper_block run clone -24 111 -56 -36 100 -44 ~-6 ~ ~-6
execute align xz as @e[type=marker,tag=sp] at @s unless block ~ ~ ~ waxed_copper_block run place template scraptd:sp ~-6 ~ ~-6

#execute align xz as @e[type=marker,tag=bh] at @s unless block ~ ~ ~ waxed_copper_block run clone -16 100 -44 -4 111 -56 ~-6 ~ ~-6
execute align xz as @e[type=marker,tag=bh] at @s unless block ~ ~ ~ waxed_copper_block run place template scraptd:bh ~-6 ~ ~-6

#execute align xz as @e[type=marker,tag=bb] at @s unless block ~ ~ ~ waxed_copper_block run clone 16 111 -56 4 100 -44 ~-6 ~ ~-6
execute align xz as @e[type=marker,tag=bb] at @s unless block ~ ~ ~ waxed_copper_block run place template scraptd:bb ~-6 ~ ~-6

#execute align xz as @e[type=marker,tag=ll] at @s unless block ~ ~ ~ waxed_copper_block run clone 24 100 -44 36 111 -56 ~-6 ~ ~-6
execute align xz as @e[type=marker,tag=ll] at @s unless block ~ ~ ~ waxed_copper_block run place template scraptd:ll ~-6 ~ ~-6

#execute align xz as @e[type=marker,tag=co] at @s unless block ~ ~ ~ waxed_copper_block run clone 44 100 -44 56 111 -56 ~-6 ~ ~-6
execute align xz as @e[type=marker,tag=co] at @s unless block ~ ~ ~ waxed_copper_block run place template scraptd:co ~-6 ~ ~-6

#execute align xz as @e[type=marker,tag=ia] at @s unless block ~ ~ ~ waxed_copper_block run clone 64 100 -44 76 111 -56 ~-6 ~ ~-6
execute align xz as @e[type=marker,tag=ia] at @s unless block ~ ~ ~ waxed_copper_block run place template scraptd:ia ~-6 ~ ~-6

#execute align xz as @e[type=marker,tag=dz] at @s unless block ~ ~ ~ waxed_copper_block run clone 84 100 -46 92 111 -58 ~-4.5 ~ ~-6
execute align xz as @e[type=marker,tag=dz] at @s unless block ~ ~ ~ waxed_copper_block run place template scraptd:dz ~-4.5 ~ ~-6

#execute align xz as @e[type=marker,tag=nb] at @s unless block ~ ~ ~ waxed_copper_block run clone 114 111 -56 106 100 -44 ~-4 ~ ~-6
execute align xz as @e[type=marker,tag=nb] at @s unless block ~ ~ ~ waxed_copper_block run place template scraptd:nb ~-4.5 ~ ~-6

#execute align xz as @e[type=marker,tag=sw] at @s unless block ~ ~ ~ waxed_copper_block run clone -44 131 -56 -56 120 -44 ~-6 ~ ~-6
execute align xz as @e[type=marker,tag=sw] at @s unless block ~ ~ ~ waxed_copper_block run place template scraptd:sw ~-6 ~ ~-6

#execute align xz as @e[type=marker,tag=in] at @s unless block ~ ~ ~ waxed_copper_block run clone -34 120 -44 -26 131 -56 ~-4 ~ ~-6
execute align xz as @e[type=marker,tag=in] at @s unless block ~ ~ ~ waxed_copper_block run place template scraptd:in ~-4.5 ~ ~-6

#execute align xz as @e[type=marker,tag=md] at @s unless block ~ ~ ~ waxed_copper_block run clone -4 131 -56 -16 120 -44 ~-6 ~ ~-6
execute align xz as @e[type=marker,tag=md] at @s unless block ~ ~ ~ waxed_copper_block run place template scraptd:md ~-6 ~ ~-6

execute align xz as @e[type=marker,tag=chri] at @s unless block ~ ~ ~ waxed_copper_block run place template scraptd:chri ~-6 ~ ~-6

execute align xz as @e[type=marker,tag=hs] at @s unless block ~ ~ ~ waxed_copper_block run place template scraptd:hs ~-6 ~ ~-6

execute align xz as @e[type=marker,tag=ntf] at @s unless block ~ ~ ~ waxed_copper_block run place template scraptd:ntf ~-6 ~ ~-6

execute align xz as @e[type=marker,tag=chro] at @s unless block ~ ~ ~ waxed_copper_block run place template scraptd:chro ~-6 ~ ~-6

execute align xz as @e[type=marker,tag=th] at @s unless block ~ ~ ~ waxed_copper_block run place template scraptd:th ~-6 ~ ~-6



# Clean-Up Armor Stand Logic
execute align xz as @e[type=armor_stand,tag=cleanup_fast] at @s run fill ~-6 ~ ~-6 ~6 ~12 ~6 air

execute align xyz as @e[type=armor_stand,tag=cleanup_fast] at @s if block ~ ~-2 ~ magenta_glazed_terracotta[facing=east] run tp @s ~-2.125 ~ ~
execute align xyz as @e[type=armor_stand,tag=cleanup_fast] at @s if block ~ ~-2 ~ magenta_glazed_terracotta[facing=south] run tp @s ~ ~ ~-2.125
execute align xyz as @e[type=armor_stand,tag=cleanup_fast] at @s if block ~ ~-2 ~ magenta_glazed_terracotta[facing=west] run tp @s ~2.1 ~ ~
execute align xyz as @e[type=armor_stand,tag=cleanup_fast] at @s if block ~ ~-2 ~ magenta_glazed_terracotta[facing=north] run tp @s ~ ~ ~2.1


# Barrel Delete
execute align xyz as @e[type=armor_stand] at @s if block ~ ~-3 ~ red_glazed_terracotta run kill @s
execute align xyz as @e[type=marker] at @s if block ~ ~-3 ~ red_glazed_terracotta run kill @s



execute at @e[type=marker,tag=barrel] as @n[type=marker,tag=barrel] run title @a[distance=..7.5,tag=!is_admin] title ""
execute at @e[type=marker,tag=barrel] as @n[type=marker,tag=barrel] run title @a[distance=..7.5,tag=!is_admin] subtitle {"text":"You are too close to the barrels!","color":"#ffff00"}
execute at @e[type=marker,tag=barrel] as @n[type=marker,tag=barrel] run title @a[distance=..7.5] actionbar {"text":"You are too close to the barrels!","color":"#ff0000"}
execute at @e[type=marker,tag=barrel] as @n[type=marker,tag=barrel] run tp @a[distance=..7.5,tag=!is_admin,team=Blue] 185 128 58 90.0 0.0
execute at @e[type=marker,tag=barrel] as @n[type=marker,tag=barrel] run tp @a[distance=..7.5,tag=!is_admin,team=Red] 55 128 58 -90.0 0.0
