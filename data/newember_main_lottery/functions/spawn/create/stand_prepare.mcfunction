#stand trop proche
execute if entity @e[distance=..4,tag=nwbr_disp_lot] run tag @s add nwbr_stand_near
execute if entity @s[tag=nwbr_stand_near] run tellraw @a[distance=..5.5] ["",{"text":"Un stand est dejà trop proche","color":"red","hoverEvent":{"action":"show_text","contents":["",{"text":"t'es trop proche en fait bg","color":"gold"}]}}]

#trop de joueurs proches
execute store result score @s nwbr_number run execute if entity @a[distance=..6]
execute if entity @s[scores={nwbr_number=2..}] run tag @s add nwbr_player_near
execute if entity @s[tag=nwbr_player_near] run tellraw @a[distance=..5.5] ["",{"text":"trop de joueurs proches","color":"red","hoverEvent":{"action":"show_text","contents":["",{"text":"les gestes barrières tout ça t'a vu","color":"gold"}]}}]

#summon armorstands
function newember_main_lottery:spawn/summon/armorstand/stand_main

#blocs génants
execute at @e[tag=nwbr_lot_main,distance=..2.5,limit=1] run function newember_main_lottery:spawn/create/check_size_3
execute if entity @s[tag=nwbr_no_room] run tellraw @a[distance=..5.5] ["",{"text":"des blocs gênent l'apparition","color":"red","hoverEvent":{"action":"show_text","contents":["",{"text":"faut qu'c'est propre","color":"gold"}]}}]

execute if entity @s[tag=!nwbr_no_room,tag=!nwbr_player_near,tag=!nwbr_stand_near] run function newember_main_lottery:spawn/create/stand_init
execute unless entity @s[tag=!nwbr_no_room,tag=!nwbr_player_near,tag=!nwbr_stand_near] run function newember_main_lottery:spawn/create/stand_cancel

kill @s


#tentative
#execute facing entity @p eyes positioned ^ ^ ^0.70710678118654752440084436210485 align xyz positioned ~0.5 ~ ~0.5 facing entity @p feet align y positioned as @p positioned ~ ~-1 ~ rotated ~90 0 run function newember_main_lottery:spawn/create/check_air_3wide
#execute if entity @p[scores={math=..10}] run tellraw @a[distance=..5.5] ["",{"text":"des blocs genent l'apparition","color":"red","hoverEvent":{"action":"show_text","contents":["",{"text":"les gestes barrières tout ça t'a vu","color":"gold"}]}}]
