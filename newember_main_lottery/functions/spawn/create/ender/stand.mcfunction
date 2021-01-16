execute store result score @s nwbr_number run data get entity @s Rotation[0]


#south
execute if score @s nwbr_number matches 315..360 run function newember_main_lottery:summon/stand_south
execute if score @s nwbr_number matches 315..360 run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",posX:-1,posY:0,posZ:-1,name:"newember_main_lottery:ender/stand_south",ignoreEntities:1}

#still south (lol)
execute if score @s nwbr_number matches -45..45 run function newember_main_lottery:summon/stand_south
execute if score @s nwbr_number matches -45..45 run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",posX:-1,posY:0,posZ:-1,name:"newember_main_lottery:ender/stand_south",ignoreEntities:1}

#west (kanye)
execute if score @s nwbr_number matches 45..135 run function newember_main_lottery:summon/stand_west
execute if score @s nwbr_number matches 45..135 run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",posX:0,posY:0,posZ:-1,name:"newember_main_lottery:ender/stand_west",ignoreEntities:1}

#north
execute if score @s nwbr_number matches 135..225 run function newember_main_lottery:summon/stand_north
execute if score @s nwbr_number matches 135..225 run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",posX:-1,posY:0,posZ:0,name:"newember_main_lottery:ender/stand_north",ignoreEntities:1}

#east
execute if score @s nwbr_number matches 225..315 run function newember_main_lottery:summon/stand_east
execute if score @s nwbr_number matches 225..315 run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",posX:-1,posY:0,posZ:-1,name:"newember_main_lottery:ender/stand_east",ignoreEntities:1}

#ET CEST REPARTIT PARCE QUE CA VA DE -360 A 360, C REPARTIT POUR UN TOUR LITTERALEMENT M D R JADORE MINECRAFT C SUPER C BIEN CODE ET TOUT JADORE GENRE VRAIMMENT HEIN

#south
#execute if score @s nwbr_number matches -45..0 run function newember_main_lottery:summon/stand_south
#execute if score @s nwbr_number matches -45..0 run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",posX:-1,posY:0,posZ:-1,name:"newember_main_lottery:ender/stand_south",ignoreEntities:1}

#south
execute if score @s nwbr_number matches -360..-315 run function newember_main_lottery:summon/stand_south
execute if score @s nwbr_number matches -360..-315 run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",posX:-1,posY:0,posZ:-1,name:"newember_main_lottery:ender/stand_south",ignoreEntities:1}

#west
execute if score @s nwbr_number matches -315..-225 run function newember_main_lottery:summon/stand_west
execute if score @s nwbr_number matches -315..-225 run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",posX:0,posY:0,posZ:-1,name:"newember_main_lottery:ender/stand_west",ignoreEntities:1}

#north
execute if score @s nwbr_number matches -225..-135 run function newember_main_lottery:summon/stand_north
execute if score @s nwbr_number matches -225..-135 run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",posX:-1,posY:0,posZ:0,name:"newember_main_lottery:ender/stand_north",ignoreEntities:1}

#east
execute if score @s nwbr_number matches -135..-45 run function newember_main_lottery:summon/stand_east
execute if score @s nwbr_number matches -135..-45 run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",posX:-1,posY:0,posZ:-1,name:"newember_main_lottery:ender/stand_east",ignoreEntities:1}

#active structure
setblock ~ ~1 ~ minecraft:redstone_block

#replace tags
tag @e[tag=nwbr_classic,distance=..2] add nwbr_ender
tag @e[tag=nwbr_classic,distance=..2] remove nwbr_classic

#set owner
scoreboard players operation @e[tag=nwbr_lot_main,limit=1,sort=nearest] nwbr_lot_owner = @p nwbr_player_id
advancement grant @p only newember_main_lottery:lotterie/spawn_stand
