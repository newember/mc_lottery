############ Main Timer ############
scoreboard players add timer nwbr_number 1
execute if score timer nwbr_number matches 72000.. run scoreboard players set timer nwbr_number 0

scoreboard players operation #modulo#100 nwbr_number = timer nwbr_number
scoreboard players operation #modulo#100 nwbr_number %= #100 nwbr_number

scoreboard players operation #modulo#10 nwbr_number = timer nwbr_number
scoreboard players operation #modulo#10 nwbr_number %= #10 nwbr_number

scoreboard players operation #modulo#50 nwbr_number = timer nwbr_number
scoreboard players operation #modulo#50 nwbr_number %= #50 nwbr_number

############ time control ############
execute store result score #time nwbr_number run time query daytime
execute if score #time nwbr_number matches 17950..23050 run scoreboard players set #goto#Midnight nwbr_number 0
execute if score #time nwbr_number matches 950..9050 run scoreboard players set #goto#Day nwbr_number 0

execute if score #goto#Midnight nwbr_number matches 1.. run time add 50
execute if score #goto#Day nwbr_number matches 1.. run time add 50
execute if score #goto#Midnight nwbr_number matches 2.. run time add 50
execute if score #goto#Day nwbr_number matches 2.. run time add 50
execute if score #goto#Midnight nwbr_number matches 3.. run time add 100
execute if score #goto#Day nwbr_number matches 3.. run time add 100

execute if score #goto#Midnight nwbr_number matches 1.. run scoreboard players add #total#timeAdded nwbr_number 50
execute if score #goto#Day nwbr_number matches 1.. run scoreboard players add #total#timeAdded nwbr_number 50
execute if score #goto#Midnight nwbr_number matches 2.. run scoreboard players add #total#timeAdded nwbr_number 50
execute if score #goto#Day nwbr_number matches 2.. run scoreboard players add #total#timeAdded nwbr_number 50
execute if score #goto#Midnight nwbr_number matches 3.. run scoreboard players add #total#timeAdded nwbr_number 100
execute if score #goto#Day nwbr_number matches 3.. run scoreboard players add #total#timeAdded nwbr_number 100

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
