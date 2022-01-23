function newember_main_lottery:buttons/reset_start
tag @s remove nwbr_xred

########## player conflict prevention ##########
execute store result score @s nwbr_number run execute if entity @a[distance=..5.5]
execute if entity @s[scores={nwbr_number=2..}] run tellraw @a[distance=..5.5] ["",{"text":"trop de joueurs proches","color":"red","hoverEvent":{"action":"show_text","contents":["",{"text":"les gestes barrières tout ça t'a vu","color":"gold"}]}}]
execute if entity @s[scores={nwbr_number=2..}] run tag @s add nwbr_player_near
########## test prices ##########
#- all -#
execute at @s[tag=!nwbr_player_near] store result score @s nwbr_number run clear @p minecraft:diamond 0
#- classic -#
execute at @s[tag=nwbr_classic] store result score @s nwbr_number run execute if entity @s[tag=!nwbr_player_near,scores={nwbr_number=1..}]
#- ender -#
execute at @s[tag=nwbr_ender] store result score @s nwbr_number run execute if entity @s[tag=!nwbr_player_near,scores={nwbr_number=2..}]
#- goldmine -#
execute at @s[tag=nwbr_goldmine] store result score @s nwbr_number run execute if entity @s[tag=!nwbr_player_near,scores={nwbr_number=2..}]
#- fancy -#
execute at @s[tag=nwbr_fancy] store result score @s nwbr_number run execute if entity @s[tag=!nwbr_player_near,scores={nwbr_number=4..}]
#- special -#
execute at @s[tag=nwbr_special] store result score @s nwbr_number run execute if entity @s[tag=!nwbr_player_near,scores={nwbr_number=3..}]
#- skin -#
execute at @s[tag=nwbr_skin] store result score @s nwbr_number run execute if entity @s[tag=!nwbr_player_near,scores={nwbr_number=2..}]

execute at @s[tag=nwbr_classic,scores={nwbr_number=0},tag=!nwbr_player_near] run tellraw @p ["",{"text":"tu as besoin de payer un diamant","color":"aqua","hoverEvent":{"action":"show_text","contents":["",{"text":"t'a cru c'était gratuit ?","color":"dark_aqua"}]}}]
execute at @s[tag=nwbr_ender,scores={nwbr_number=0},tag=!nwbr_player_near] run tellraw @p ["",{"text":"tu as besoin de payer 2 diamants","color":"aqua","hoverEvent":{"action":"show_text","contents":["",{"text":"t'a cru c'était gratuit ?","color":"dark_aqua"}]}}]
execute at @s[tag=nwbr_goldmine,scores={nwbr_number=0},tag=!nwbr_player_near] run tellraw @p ["",{"text":"tu as besoin de payer 2 diamants","color":"aqua","hoverEvent":{"action":"show_text","contents":["",{"text":"t'a cru c'était gratuit ?","color":"dark_aqua"}]}}]
execute at @s[tag=nwbr_fancy,scores={nwbr_number=0},tag=!nwbr_player_near] run tellraw @p ["",{"text":"tu as besoin de payer 4 diamants","color":"aqua","hoverEvent":{"action":"show_text","contents":["",{"text":"t'a cru c'était gratuit ?","color":"dark_aqua"}]}}]
execute at @s[tag=nwbr_special,scores={nwbr_number=0},tag=!nwbr_player_near] run tellraw @p ["",{"text":"tu as besoin de payer 3 diamants","color":"aqua","hoverEvent":{"action":"show_text","contents":["",{"text":"t'a cru c'était gratuit ?","color":"dark_aqua"}]}}]
execute at @s[tag=nwbr_skin,scores={nwbr_number=0},tag=!nwbr_player_near] run tellraw @p ["",{"text":"tu as besoin de payer 2 diamants","color":"aqua","hoverEvent":{"action":"show_text","contents":["",{"text":"t'a cru c'était gratuit ?","color":"dark_aqua"}]}}]


########## test multiple active stands ##########
scoreboard players set @p nwbr_math 0
execute unless score #cheat nwbr_math matches 1.. as @e[tag=nwbr_lot_main,scores={nwbr_lot_timer=0..}] if score @p nwbr_player_id = @s nwbr_player_id run scoreboard players add @p nwbr_math 1
execute if score @p nwbr_math matches 3.. run tag @s add nwbr_many_stands

execute unless score #cheat nwbr_math matches 1.. at @s[tag=nwbr_classic] as @e[tag=nwbr_lot_main,tag=nwbr_classic,scores={nwbr_lot_timer=0..}] if score @p nwbr_player_id = @s nwbr_player_id run tag @e[tag=nwbr_lot_main,distance=0] add nwbr_same_stands
execute unless score #cheat nwbr_math matches 1.. at @s[tag=nwbr_ender] as @e[tag=nwbr_lot_main,tag=nwbr_ender,scores={nwbr_lot_timer=0..}] if score @p nwbr_player_id = @s nwbr_player_id run tag @e[tag=nwbr_lot_main,distance=0] add nwbr_same_stands
execute unless score #cheat nwbr_math matches 1.. at @s[tag=nwbr_goldmine] as @e[tag=nwbr_lot_main,tag=nwbr_goldmine,scores={nwbr_lot_timer=0..}] if score @p nwbr_player_id = @s nwbr_player_id run tag @e[tag=nwbr_lot_main,distance=0] add nwbr_same_stands
execute unless score #cheat nwbr_math matches 1.. at @s[tag=nwbr_fancy] as @e[tag=nwbr_lot_main,tag=nwbr_fancy,scores={nwbr_lot_timer=0..}] if score @p nwbr_player_id = @s nwbr_player_id run tag @e[tag=nwbr_lot_main,distance=0] add nwbr_same_stands
execute unless score #cheat nwbr_math matches 1.. at @s[tag=nwbr_special] as @e[tag=nwbr_lot_main,tag=nwbr_special,scores={nwbr_lot_timer=0..}] if score @p nwbr_player_id = @s nwbr_player_id run tag @e[tag=nwbr_lot_main,distance=0] add nwbr_same_stands
execute unless score #cheat nwbr_math matches 1.. at @s[tag=nwbr_skin] as @e[tag=nwbr_lot_main,tag=nwbr_skin,scores={nwbr_lot_timer=0..}] if score @p nwbr_player_id = @s nwbr_player_id run tag @e[tag=nwbr_lot_main,distance=0] add nwbr_same_stands

execute unless entity @s[tag=!nwbr_many_stands,tag=!nwbr_same_stands] run scoreboard players set @s nwbr_number 0
execute if entity @s[tag=nwbr_many_stands] run tellraw @a[distance=..5.5] ["",{"text":"vous ne pouvez pas lancer plus de 3 lotterie simultanément","color":"red","hoverEvent":{"action":"show_text","contents":["",{"text":"multitache mais pas trop","color":"yellow"}]}}]
execute if entity @s[tag=nwbr_same_stands] run tellraw @a[distance=..5.5] ["",{"text":"vous ne pouvez pas lancer 2 fois le même type de lotterie","color":"red","hoverEvent":{"action":"show_text","contents":["",{"text":"varie les plaisir","color":"light_purple"}]}}]


########## setup ##########
#- classic -#
execute at @s[tag=nwbr_classic,scores={nwbr_number=1}] run clear @p minecraft:diamond 1
execute at @s[tag=nwbr_classic,scores={nwbr_number=1}] run scoreboard players add @p nwbr_lot_spent 1
#- ender -#
execute at @s[tag=nwbr_ender,scores={nwbr_number=1}] run clear @p minecraft:diamond 2
execute at @s[tag=nwbr_ender,scores={nwbr_number=1}] run scoreboard players add @p nwbr_lot_spent 2
#- goldmine -#
execute at @s[tag=nwbr_goldmine,scores={nwbr_number=1}] run clear @p minecraft:diamond 2
execute at @s[tag=nwbr_goldmine,scores={nwbr_number=1}] run scoreboard players add @p nwbr_lot_spent 2
#- fancy -#
execute at @s[tag=nwbr_fancy,scores={nwbr_number=1}] run clear @p minecraft:diamond 4
execute at @s[tag=nwbr_fancy,scores={nwbr_number=1}] run scoreboard players add @p nwbr_lot_spent 4
#- special -#
execute at @s[tag=nwbr_special,scores={nwbr_number=1}] run clear @p minecraft:diamond 3
execute at @s[tag=nwbr_special,scores={nwbr_number=1}] run scoreboard players add @p nwbr_lot_spent 3
#- skin -#
execute at @s[tag=nwbr_skin,scores={nwbr_number=1}] run clear @p minecraft:diamond 2
execute at @s[tag=nwbr_skin,scores={nwbr_number=1}] run scoreboard players add @p nwbr_lot_spent 2

#- all -#
execute at @s[scores={nwbr_number=1}] run advancement grant @p only newember_main_lottery:lotterie/root
scoreboard players operation @s[scores={nwbr_number=1}] nwbr_player_id = @p nwbr_player_id
execute at @s[scores={nwbr_number=1}] run function newember_main_lottery:init_stand

#- remove -#
tag @s remove nwbr_player_near
tag @s remove nwbr_many_stands
tag @s remove nwbr_same_stands
