function ui_elements:fillers {"coords":"-112 62 1","item":"black_stained_glass_pane"}
function ui_elements:fillers {"coords":"-112 71 4","item":"black_stained_glass_pane"}

clear @a *[custom_data={fillers:true}]
clear @a *[custom_data={fillers:true}]

execute as @a if items entity @s container.* *[custom_data={ui:true}] run clear @s *[custom_data={ui:true}]
execute as @a if items entity @s weapon.* *[custom_data={ui:true}] run clear @s *[custom_data={ui:true}]


function ui_elements:template {\
"coords":"-112 62 1",\
"slot":"13",\
"item":"lime_concrete",\
"nbold":"true",\
"nitalic":"false",\
"nobfuscated":"false",\
"nstrikethrough":"false",\
"nunderlined":"false",\
"name":"Join Queue",\
"lbold":"false",\
"litalic":"false",\
"lobfuscated":"false",\
"lstrikethrough":"false",\
"lunderlined":"false",\
"lore":"Click to join the queue!",\
"bnbold":"true",\
"bnitalic":"false",\
"bnobfuscated":"false",\
"bnstrikethrough":"false",\
"bncolor":"#ff6600",\
"bnunderlined":"false",\
"blockname":"Start Game",\
"command":"function queue:join_queue",\
"ncolor":"green",\
"lcolor":"dark_green"}


#function ui_elements:template {\
"coords":"-112 62 1",\
"slot":"14",\
"item":"red_concrete",\
"nbold":"true",\
"nitalic":"false",\
"nobfuscated":"false",\
"nstrikethrough":"false",\
"nunderlined":"false",\
"name":"Play as: Red",\
"lbold":"false",\
"litalic":"false",\
"lobfuscated":"false",\
"lstrikethrough":"false",\
"lunderlined":"false",\
"lore":"Click to join the red team.",\
"bnbold":"true",\
"bnitalic":"false",\
"bnobfuscated":"false",\
"bnstrikethrough":"false",\
"bncolor":"#ff6600",\
"bnunderlined":"false",\
"blockname":"Team Selector",\
"command":"function ui_elements:commands/click_red",\
"ncolor":"dark_red",\
#"lcolor":"red"}


function ui_elements:template {\
"coords":"-112 62 1",\
"slot":"15",\
"item":"knowledge_book",\
"nbold":"true",\
"nitalic":"false",\
"nobfuscated":"false",\
"nstrikethrough":"false",\
"nunderlined":"false",\
"name":"Tutorial",\
"lbold":"false",\
"litalic":"false",\
"lobfuscated":"false",\
"lstrikethrough":"false",\
"lunderlined":"false",\
"lore":"Click to go to the tutorial.",\
"bnbold":"true",\
"bnitalic":"false",\
"bnobfuscated":"false",\
"bnstrikethrough":"false",\
"bncolor":"#ff6600",\
"bnunderlined":"false",\
"blockname":"Start Game",\
"command":"function gameplay:tutorial",\
"ncolor":"yellow",\
"lcolor":"yellow"}


# Compass for queue
item replace entity @a[team=!Red] hotbar.8 with compass[item_name='"Join Queue"',lore=['"Click to join the queue."'],custom_data={ui_2:true},food={nutrition:0,saturation:0,can_always_eat:true},consumable={consume_seconds:2147483647,animation:"none",has_consume_particles:false}] 1
execute as @a if items entity @s player.cursor *[custom_data={ui_2:true}] run item replace entity @s[team=!Blue,team=!Red] player.cursor with air
execute as @a if items entity @s weapon.offhand *[custom_data={ui_2:true}] run item replace entity @s[team=!Blue,team=!Red] weapon.offhand with air

clear @a[team=Red] *[custom_data={ui_2:true}]
clear @a[team=Blue] *[custom_data={ui_2:true}]

item replace entity @a[team=Blue] hotbar.8 with warped_pressure_plate[item_name='"Go back to platform"',lore=['"Click to go back to your platform."'],custom_data={ui_3:true},food={nutrition:0,saturation:0,can_always_eat:true},consumable={consume_seconds:2147483647,animation:"none",has_consume_particles:false}] 1
item replace entity @a[team=Red] hotbar.8 with mangrove_pressure_plate[item_name='"Go back to platform"',lore=['"Click to go back to your platform."'],custom_data={ui_4:true},food={nutrition:0,saturation:0,can_always_eat:true},consumable={consume_seconds:2147483647,animation:"none",has_consume_particles:false}] 1
item replace entity @a[team=Blue] hotbar.7 with birch_pressure_plate[item_name='"Go to field"',lore=['"Click to snap down onto the field."'],custom_data={ui_5:true},food={nutrition:0,saturation:0,can_always_eat:true},consumable={consume_seconds:2147483647,animation:"none",has_consume_particles:false}] 1
item replace entity @a[team=Red] hotbar.7 with birch_pressure_plate[item_name='"Go to field"',lore=['"Click to snap down onto the field."'],custom_data={ui_6:true},food={nutrition:0,saturation:0,can_always_eat:true},consumable={consume_seconds:2147483647,animation:"none",has_consume_particles:false}] 1


#execute as @a if items entity @s player.cursor *[custom_data={ui_3:true}] run item replace entity @s[team=!Blue,team=!Red] player.cursor with air
#execute as @a if items entity @s weapon.offhand *[custom_data={ui_3:true}] run item replace entity @s[team=!Blue,team=!Red] weapon.offhand with air


clear @a[team=!Blue] *[custom_data={ui_3:1b}]
clear @a[team=!Red] *[custom_data={ui_4:1b}]

clear @a[team=!Blue] *[custom_data={ui_5:1b}]
clear @a[team=!Red] *[custom_data={ui_6:1b}]
