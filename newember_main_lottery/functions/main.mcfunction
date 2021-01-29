#stand
execute as @e[tag=nwbr_lot_main] at @s run function newember_main_lottery:main_stand

#Item
function newember_main_lottery:spawn/replace_classic
function newember_main_lottery:spawn/create/main

#button start
execute as @e[tag=nwbr_lot_main,scores={nwbr_lot_timer=-1}] at @s positioned ^-1 ^1 ^-1 if entity @e[type=minecraft:arrow,distance=..0.8] run function newember_main_lottery:buttons/reset_start
execute as @e[tag=nwbr_lot_main,scores={nwbr_lot_timer=-1}] at @s positioned ^-1 ^1 ^-1 if entity @e[type=minecraft:spectral_arrow,distance=..0.8] run function newember_main_lottery:buttons/reset_start
execute if score #modulo#10 nwbr_number matches 0 as @e[tag=nwbr_lot_main,scores={nwbr_lot_timer=-1}] at @s positioned ^-1 ^1 ^-1 if block ~ ~ ~ #minecraft:buttons[powered=true] unless data entity @p SelectedItem.tag.ticket_special run function newember_main_lottery:buttons/push_start
execute if score #modulo#10 nwbr_number matches 0 as @e[tag=nwbr_lot_main,scores={nwbr_lot_timer=-1}] at @s positioned ^-1 ^1 ^-1 if block ~ ~ ~ #minecraft:buttons[powered=true] if data entity @p SelectedItem.tag.ticket_special.red run function newember_main_lottery:buttons/push_start_red


#button options
execute as @e[tag=nwbr_lot_main,scores={nwbr_lot_timer=-1}] at @s positioned ^-1 ^1 ^1 if entity @e[type=minecraft:arrow,distance=..0.8] run function newember_main_lottery:buttons/reset_options
execute as @e[tag=nwbr_lot_main,scores={nwbr_lot_timer=-1}] at @s positioned ^-1 ^1 ^1 if entity @e[type=minecraft:spectral_arrow,distance=..0.8] run function newember_main_lottery:buttons/reset_options
execute if score #modulo#10 nwbr_number matches 0 as @e[tag=nwbr_lot_main,scores={nwbr_lot_timer=-1}] at @s positioned ^-1 ^1 ^1 if block ~ ~ ~ #minecraft:buttons[powered=true] run function newember_main_lottery:buttons/push_options

#triggers
execute as @a[scores={nwtgr_lot_r_btn=1..}] at @s as @e[tag=nwbr_lot_main,distance=..100] if score @p nwbr_lot_id = @s nwbr_lot_id run function newember_main_lottery:buttons/triggers_options
execute as @a[scores={nwtgr_lot_r_btn=1..},tag=!nwbr_stand_found] at @s run tellraw @p {"text":"La lotterie n'existe plus ou est trop loin.","color":"red","hoverEvent":{"action":"show_text","contents":{"text":"Partie un jooour, sans retoooour","color":"#91C8FF"}}}

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
