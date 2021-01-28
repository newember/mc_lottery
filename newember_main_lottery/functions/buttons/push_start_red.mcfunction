function newember_main_lottery:buttons/reset_start

########## player conflict prevention ##########
execute store result score @s nwbr_number run execute if entity @a[distance=..5.5]
execute if entity @s[scores={nwbr_number=2..}] run tellraw @a[distance=..5.5] ["",{"text":"trop de joueurs proches","color":"red","hoverEvent":{"action":"show_text","contents":["",{"text":"les gestes barrières tout ça t'a vu","color":"gold"}]}}]
execute if entity @s[scores={nwbr_number=2..}] run tag @s add nwbr_player_near
########## test prices ##########
#- all -#
execute as @s[tag=!nwbr_player_near] store result score @s nwbr_number run clear @p minecraft:paper{"ticket_special":{"red":1b}} 0
#- special -#
scoreboard players set @s[tag=!nwbr_special] nwbr_number 0
execute as @s[tag=nwbr_special] store result score @s nwbr_number run execute if entity @s[tag=!nwbr_player_near,scores={nwbr_number=1..}]

########## setup ##########
#- others -#
execute unless entity @s[tag=nwbr_special] run tellraw @p ["",{"text":"le ","color":"red"},{"text":"ticket spécial rouge","color":"#e31212"},{"text":" n'est valide que sur la lotterie spécial","color":"red"}]
#- special -#
execute as @s[tag=nwbr_special,scores={nwbr_number=1}] run clear @p minecraft:paper{"ticket_special":{"red":1b}} 1
execute as @s[tag=nwbr_player_near] run tellraw @p ["",{"text":"trop de joueurs proches","color":"aqua","hoverEvent":{"action":"show_text","contents":["",{"text":"Les gestes Barrières","color":"dark_red","bold":true}]}}]

#- all -#
execute as @s[scores={nwbr_number=1}] run advancement grant @p only newember_main_lottery:lotterie/root
scoreboard players operation @s[scores={nwbr_number=1}] nwbr_player_id = @p nwbr_player_id
scoreboard players set @s[scores={nwbr_number=1}] nwbr_lot_timer 0
tag @s[scores={nwbr_number=1}] add nwbr_xred

#- remove -#
tag @s remove nwbr_player_near
