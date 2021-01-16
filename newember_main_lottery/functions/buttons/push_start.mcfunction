function newember_main_lottery:buttons/reset_start

########## player conflict prevention ##########
execute store result score @s nwbr_number run execute if entity @a[distance=..5.5]
execute if entity @s[scores={nwbr_number=2..}] run tellraw @a[distance=..5.5] ["",{"text":"trop de joueurs proches","color":"red","hoverEvent":{"action":"show_text","contents":["",{"text":"les gestes barrières tout ça t'a vu","color":"gold"}]}}]
execute if entity @s[scores={nwbr_number=2..}] run tag @s add nwbr_player_near
########## test prices ##########
#- all -#
execute as @s[tag=!nwbr_player_near] store result score @s nwbr_number run clear @p minecraft:diamond 0
#- classic -#
execute as @s[tag=nwbr_classic] store result score @s nwbr_number run execute if entity @s[tag=!nwbr_player_near,scores={nwbr_number=1..}]
#- ender -#
execute as @s[tag=nwbr_ender] store result score @s nwbr_number run execute if entity @s[tag=!nwbr_player_near,scores={nwbr_number=2..}]
#- goldmine -#
execute as @s[tag=nwbr_goldmine] store result score @s nwbr_number run execute if entity @s[tag=!nwbr_player_near,scores={nwbr_number=2..}]
#- fancy -#
execute as @s[tag=nwbr_fancy] store result score @s nwbr_number run execute if entity @s[tag=!nwbr_player_near,scores={nwbr_number=4..}]
#- special -#
execute as @s[tag=nwbr_special] store result score @s nwbr_number run execute if entity @s[tag=!nwbr_player_near,scores={nwbr_number=3..}]

########## setup ##########
#- classic -#
execute as @s[tag=nwbr_classic,scores={nwbr_number=0},tag=!nwbr_player_near] run tellraw @p ["",{"text":"tu as besoin de payer un diamant","color":"aqua","hoverEvent":{"action":"show_text","contents":["",{"text":"t'a cru c'était gratuit ?","color":"dark_aqua"}]}}]
execute as @s[tag=nwbr_classic,scores={nwbr_number=1}] run clear @p minecraft:diamond 1
execute as @s[tag=nwbr_classic,scores={nwbr_number=1}] run scoreboard players add @p nwbr_lot_spent 1
#- ender -#
execute as @s[tag=nwbr_ender,scores={nwbr_number=0},tag=!nwbr_player_near] run tellraw @p ["",{"text":"tu as besoin de payer 2 diamants","color":"aqua","hoverEvent":{"action":"show_text","contents":["",{"text":"t'a cru c'était gratuit ?","color":"dark_aqua"}]}}]
execute as @s[tag=nwbr_ender,scores={nwbr_number=1}] run clear @p minecraft:diamond 2
execute as @s[tag=nwbr_ender,scores={nwbr_number=1}] run scoreboard players add @p nwbr_lot_spent 2
#- goldmine -#
execute as @s[tag=nwbr_goldmine,scores={nwbr_number=0},tag=!nwbr_player_near] run tellraw @p ["",{"text":"tu as besoin de payer 2 diamants","color":"aqua","hoverEvent":{"action":"show_text","contents":["",{"text":"t'a cru c'était gratuit ?","color":"dark_aqua"}]}}]
execute as @s[tag=nwbr_goldmine,scores={nwbr_number=1}] run clear @p minecraft:diamond 2
execute as @s[tag=nwbr_goldmine,scores={nwbr_number=1}] run scoreboard players add @p nwbr_lot_spent 2
#- fancy -#
execute as @s[tag=nwbr_fancy,scores={nwbr_number=0},tag=!nwbr_player_near] run tellraw @p ["",{"text":"tu as besoin de payer 4 diamants","color":"aqua","hoverEvent":{"action":"show_text","contents":["",{"text":"t'a cru c'était gratuit ?","color":"dark_aqua"}]}}]
execute as @s[tag=nwbr_fancy,scores={nwbr_number=1}] run clear @p minecraft:diamond 4
execute as @s[tag=nwbr_fancy,scores={nwbr_number=1}] run scoreboard players add @p nwbr_lot_spent 4
#- special -#
execute as @s[tag=nwbr_special,scores={nwbr_number=0},tag=!nwbr_player_near] run tellraw @p ["",{"text":"tu as besoin de payer 3 diamants","color":"aqua","hoverEvent":{"action":"show_text","contents":["",{"text":"t'a cru c'était gratuit ?","color":"dark_aqua"}]}}]
execute as @s[tag=nwbr_special,scores={nwbr_number=1}] run clear @p minecraft:diamond 3
execute as @s[tag=nwbr_special,scores={nwbr_number=1}] run scoreboard players add @p nwbr_lot_spent 3

#- all -#
execute as @s[scores={nwbr_number=1}] run advancement grant @p only newember_main_lottery:lotterie/root
scoreboard players operation @s[scores={nwbr_number=1}] nwbr_player_id = @p nwbr_player_id
scoreboard players set @s[scores={nwbr_number=1}] nwbr_lot_timer 0

#- remove -#
tag @s remove nwbr_player_near
