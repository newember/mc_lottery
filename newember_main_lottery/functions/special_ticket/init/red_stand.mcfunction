execute in newember_ultra_vfx:red store success score @s chk_frc_loaded_d run forceload query ~ ~
execute store success score @s chk_frc_loaded run forceload query ~ ~

execute in newember_ultra_vfx:red run forceload add ~ ~
forceload add ~ ~

tag @s add nwbr_xred
execute at @s[tag=nwbr_south] in newember_ultra_vfx:red positioned ~ 5 ~ run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",posX:-1,posY:0,posZ:-1,name:"newember_main_lottery:special/red/stand_south",ignoreEntities:1}
execute at @s[tag=nwbr_west] in newember_ultra_vfx:red positioned ~ 5 ~ run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",posX:0,posY:0,posZ:-1,name:"newember_main_lottery:special/red/stand_west",ignoreEntities:1}
execute at @s[tag=nwbr_north] in newember_ultra_vfx:red positioned ~ 5 ~ run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",posX:-1,posY:0,posZ:0,name:"newember_main_lottery:special/red/stand_north",ignoreEntities:1}
execute at @s[tag=nwbr_east] in newember_ultra_vfx:red positioned ~ 5 ~ run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",posX:-1,posY:0,posZ:-1,name:"newember_main_lottery:special/red/stand_east",ignoreEntities:1}
execute in newember_ultra_vfx:red positioned ~ 5 ~ run setblock ~ ~1 ~ minecraft:redstone_block

execute at @s[tag=nwbr_south] in newember_ultra_vfx:red positioned ~ 5 ~ run function newember_main_lottery:spawn/summon/armorstand/stand_south
execute at @s[tag=nwbr_west] in newember_ultra_vfx:red positioned ~ 5 ~ run function newember_main_lottery:spawn/summon/armorstand/stand_west
execute at @s[tag=nwbr_north] in newember_ultra_vfx:red positioned ~ 5 ~ run function newember_main_lottery:spawn/summon/armorstand/stand_north
execute at @s[tag=nwbr_east] in newember_ultra_vfx:red positioned ~ 5 ~ run function newember_main_lottery:spawn/summon/armorstand/stand_east
execute in newember_ultra_vfx:red positioned ~ 5 ~ run tag @e[distance=..2.5,tag=nwbr_disp_lot] add nwbr_disp_sec
execute in newember_ultra_vfx:red positioned ~ 5 ~ run tag @e[distance=..2.5,tag=nwbr_disp_lot] remove nwbr_lot_main
execute in newember_ultra_vfx:red positioned ~ 5 ~ run tag @e[distance=..2.5,tag=nwbr_disp_lot] remove nwbr_disp_lot

fill ^-1 ^1 ^1 ^ ^1 ^-1 minecraft:nether_wart_block replace minecraft:crying_obsidian
fill ^-1 ^2 ^1 ^ ^2 ^-1 minecraft:red_stained_glass replace minecraft:lime_stained_glass
fill ^-1 ^3 ^1 ^ ^3 ^-1 minecraft:red_carpet replace minecraft:purple_carpet

effect give @p minecraft:blindness 3 0 true

execute as @e[tag=nwbr_back_point] if score @p nwbr_player_id = @s nwbr_player_id run kill @s
execute at @p run summon minecraft:armor_stand ~ ~ ~ {Tags:["nwbr_back_point"],NoAI:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Invisible:1b}
execute at @p run data modify entity @e[distance=0,tag=nwbr_back_point,limit=1] Rotation set from entity @p Rotation
execute at @p run scoreboard players operation @e[distance=0,tag=nwbr_back_point] nwbr_player_id = @p nwbr_player_id
execute at @p run scoreboard players operation @e[distance=0,tag=nwbr_back_point] nwbr_lot_id = @s nwbr_lot_id

function newember_main_lottery:init_stand
