#stand
execute as @e[tag=nwbr_lot_main] run function newember_main_lottery:main_stand

#Item
function newember_main_lottery:spawn/replace_classic
function newember_main_lottery:spawn/create/main

scoreboard players enable @a nwtgr_lot_r_btn
scoreboard players set @p nwtgr_lot_r_btn 0

#steal protect
execute if score #modulo#10 nwbr_number matches 5 run function newember_main_lottery:steal_protect/main

#item tp
execute if score #modulo#100 nwbr_number matches 90 as @e[tag=nwbr_stl_tp] at @a if score @p nwbr_player_id = @s nwbr_player_id run tp @s @p

#lootbox
execute as @e[type=minecraft:bat,tag=nwbr_lootbox] at @s run function newember_main_lottery:lootbox/init

#clean
tag @a remove nwbr_stand_found
