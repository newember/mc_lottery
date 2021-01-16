############ Main Timer ############
scoreboard players add timer nwbr_number 1
execute if score timer nwbr_number matches 72000.. run scoreboard players set timer nwbr_number 0

scoreboard players operation #modulo#100 nwbr_number = timer nwbr_number
scoreboard players operation #modulo#100 nwbr_number %= #100 nwbr_number

scoreboard players operation #modulo#10 nwbr_number = timer nwbr_number
scoreboard players operation #modulo#10 nwbr_number %= #10 nwbr_number

scoreboard players operation #modulo#50 nwbr_number = timer nwbr_number
scoreboard players operation #modulo#50 nwbr_number %= #50 nwbr_number

############ player ids ############
execute if score #modulo#100 nwbr_number matches 0 run scoreboard players add @a nwbr_player_id 0
execute if score #modulo#100 nwbr_number matches 0 as @a[scores={nwbr_player_id=0},limit=1] run function newember_basics:set_self_id

############ lottery ############
function newember_main_lottery:main

############ special items ############
function newember_special_items:main

#- lot ids -#
scoreboard players operation #modulo nwbr_number = timer nwbr_number
scoreboard players operation #modulo nwbr_number %= #100 nwbr_number
execute if score #modulo#100 nwbr_number matches 20 run scoreboard players add @e[tag=nwbr_lot_main] nwbr_lot_id 0
execute if score #modulo#100 nwbr_number matches 20 as @e[tag=nwbr_lot_main,scores={nwbr_lot_id=0},limit=1] run function newember_basics:set_lot_id
