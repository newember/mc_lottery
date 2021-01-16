#stand trop proche
execute if entity @e[distance=..3,type=minecraft:armor_stand,tag=nwbr_disp_lot] run tag @s add nwbr_stand_near
execute if entity @s[tag=nwbr_stand_near] run tellraw @a[distance=..5.5] ["",{"text":"Un stand est dejà trop proche","color":"red","hoverEvent":{"action":"show_text","contents":["",{"text":"t'es trop proche en fait bg","color":"gold"}]}}]
execute if entity @s[tag=nwbr_stand_near] run function newember_main_lottery:spawn/summon/item_goldmine

#trop de joueurs proches
execute store result score @s nwbr_number run execute if entity @a[distance=..5.5]
execute if entity @s[scores={nwbr_number=2..}] run tellraw @a[distance=..5.5] ["",{"text":"trop de joueurs proches","color":"red","hoverEvent":{"action":"show_text","contents":["",{"text":"les gestes barrières tout ça t'a vu","color":"gold"}]}}]
execute if entity @s[scores={nwbr_number=2..}] run function newember_main_lottery:spawn/summon/item_fancy

execute as @s[tag=!nwbr_stand_near,scores={nwbr_number=..1}] as @p run function newember_main_lottery:spawn/create/goldmine/stand
execute as @s[tag=!nwbr_stand_near,scores={nwbr_number=..1}] run scoreboard players set @e[tag=nwbr_lot_main,distance=..1] nwbr_lot_timer -1
kill @s
