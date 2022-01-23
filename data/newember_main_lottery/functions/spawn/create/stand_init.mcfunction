#structure
execute store result score @p nwbr_number run data get entity @p Rotation[0]
execute if entity @s[tag=nwbr_classic_stand] run function newember_main_lottery:spawn/create/classic/structure
execute if entity @s[tag=nwbr_ender_stand] run function newember_main_lottery:spawn/create/ender/structure
execute if entity @s[tag=nwbr_goldmine_stand] run function newember_main_lottery:spawn/create/goldmine/structure
execute if entity @s[tag=nwbr_fancy_stand] run function newember_main_lottery:spawn/create/fancy/structure
execute if entity @s[tag=nwbr_special_stand] run function newember_main_lottery:spawn/create/special/structure
execute if entity @s[tag=nwbr_skin_stand] run function newember_main_lottery:spawn/create/skin/structure
setblock ~ ~1 ~ minecraft:redstone_block
#replace tags
execute if entity @s[tag=nwbr_ender_stand] run tag @e[tag=nwbr_classic,distance=..2] add nwbr_ender
execute if entity @s[tag=nwbr_ender_stand] run tag @e[tag=nwbr_classic,distance=..2] remove nwbr_classic
execute if entity @s[tag=nwbr_fancy_stand] run tag @e[tag=nwbr_classic,distance=..2] add nwbr_fancy
execute if entity @s[tag=nwbr_fancy_stand] run tag @e[tag=nwbr_classic,distance=..2] remove nwbr_classic
execute if entity @s[tag=nwbr_goldmine_stand] run tag @e[tag=nwbr_classic,distance=..2] add nwbr_goldmine
execute if entity @s[tag=nwbr_goldmine_stand] run tag @e[tag=nwbr_classic,distance=..2] remove nwbr_classic
execute if entity @s[tag=nwbr_special_stand] run tag @e[tag=nwbr_classic,distance=..2] add nwbr_special
execute if entity @s[tag=nwbr_special_stand] run tag @e[tag=nwbr_classic,distance=..2] remove nwbr_classic
execute if entity @s[tag=nwbr_skin_stand] run tag @e[tag=nwbr_classic,distance=..2] add nwbr_skin
execute if entity @s[tag=nwbr_skin_stand] run tag @e[tag=nwbr_classic,distance=..2] remove nwbr_classic
#init
scoreboard players operation @e[tag=nwbr_lot_main,limit=1,distance=..1] nwbr_lot_owner = @p nwbr_player_id
execute as @e[tag=nwbr_lot_main,limit=1,distance=..1] at @s run function newember_basics:set_lot_id
advancement grant @p only newember_main_lottery:lotterie/spawn_stand
scoreboard players set @e[tag=nwbr_lot_main,distance=..1.2,limit=1] nwbr_lot_timer -1
