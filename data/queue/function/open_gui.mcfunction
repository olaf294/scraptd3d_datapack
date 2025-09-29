inventory @s block -112 62 1
say test
execute as @a[advancements={gameplay:right_click=true}] run inventory @s block -112 62 1
execute as @a[advancements={gameplay:right_click=true}] run say test0
execute as @a[advancements={gameplay:right_click=true}] run function queue:join_queue
say test1
say test2
advancement revoke @s only gameplay:right_click
