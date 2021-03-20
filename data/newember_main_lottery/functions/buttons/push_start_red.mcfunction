function newember_main_lottery:buttons/reset_start
tag @s remove nwbr_xred

########## player conflict prevention ##########
execute store result score @s nwbr_number run execute if entity @a[distance=..5.5]
execute if entity @s[scores={nwbr_number=2..}] run tellraw @a[distance=..5.5] ["",{"text":"trop de joueurs proches","color":"red","hoverEvent":{"action":"show_text","contents":["",{"text":"les gestes barrières tout ça t'a vu","color":"gold"}]}}]
execute if entity @s[scores={nwbr_number=2..}] run tag @s add nwbr_player_near
########## test prices ##########
#- all -#
execute at @s[tag=!nwbr_player_near] store result score @s nwbr_number run clear @p minecraft:paper{"ticket_special":{"red":1b}} 0
#- special -#
scoreboard players set @s[tag=!nwbr_special] nwbr_number 0
execute at @s[tag=nwbr_special] store result score @s nwbr_number run execute if entity @s[tag=!nwbr_player_near,scores={nwbr_number=1..}]

#- others -#
execute at @s as @e[tag=nwbr_lot_main,scores={nwbr_lot_timer=0..}] if score @p nwbr_player_id = @s nwbr_player_id run tag @e[tag=nwbr_lot_main,distance=0] add nwbr_many_stands
execute if entity @s[tag=nwbr_many_stands] run scoreboard players set @s nwbr_number 0
execute at @s[tag=nwbr_many_stands] run tellraw @p ["",{"text":"vous ne pouvez pas utiliser de tickets spéciaux lorsque vous utiliser une autre lotterie","color":"red","hoverEvent":{"action":"show_text","contents":["",{"text":"Pas de confit de conflits","color":"aqua","bold":true}]}}]

execute unless entity @s[tag=nwbr_special] run tellraw @p ["",{"text":"le ","color":"red"},{"text":"ticket spécial rouge","color":"#e31212"},{"text":" n'est valide que sur la lotterie spécial","color":"red"}]
execute unless entity @s[tag=nwbr_special] run scoreboard players set @s nwbr_number 0

########## setup ##########
execute at @s[scores={nwbr_number=1}] run clear @p minecraft:paper{"ticket_special":{"red":1b}} 1

#- all -#
execute at @s[scores={nwbr_number=1}] run advancement grant @p only newember_main_lottery:lotterie/root
scoreboard players operation @s[scores={nwbr_number=1}] nwbr_player_id = @p nwbr_player_id
execute at @s[scores={nwbr_number=1}] run function newember_main_lottery:special_ticket/red_stand/init

#- remove -#
tag @s remove nwbr_player_near
tag @s remove nwbr_many_stands
tag @s remove nwbr_same_stands
