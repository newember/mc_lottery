execute as @e[type=minecraft:bat,tag=nwbr_classic_stand] at @s run function newember_main_lottery:spawn/summon/item/classic
execute as @e[type=minecraft:bat,tag=nwbr_ender_stand] at @s run function newember_main_lottery:spawn/summon/item/ender
execute as @e[type=minecraft:bat,tag=nwbr_fancy_stand] at @s run function newember_main_lottery:spawn/summon/item/fancy
execute as @e[type=minecraft:bat,tag=nwbr_goldmine_stand] at @s run function newember_main_lottery:spawn/summon/item/goldmine
execute as @e[type=minecraft:bat,tag=nwbr_skin_stand] at @s run function newember_main_lottery:spawn/summon/item/skin
execute as @e[type=minecraft:bat,tag=nwbr_special_stand] at @s run function newember_main_lottery:spawn/summon/item/special
execute as @e[tag=nwbr_disp_lot,distance=..1.5] unless score @s nwbr_lot_id matches 1.. run kill @s
