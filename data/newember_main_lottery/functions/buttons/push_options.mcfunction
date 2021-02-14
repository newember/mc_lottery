function newember_main_lottery:buttons/reset_options

########## player conflict prevention ##########
execute store result score @s nwbr_number run execute if entity @a[distance=..5.5]
execute if entity @s[scores={nwbr_number=2..}] run tellraw @a[distance=..5.5] ["",{"text":"trop de joueurs proches","color":"red","hoverEvent":{"action":"show_text","contents":["",{"text":"les gestes barrières tout ça t'a vu","color":"gold"}]}}]
execute if entity @s[scores={nwbr_number=2..}] run tag @s add nwbr_player_near

execute store result score @s nwbr_number run execute if score @p nwbr_player_id = @s nwbr_lot_owner
execute if entity @s[scores={nwbr_number=0}] run tag @s add nwbr_not_owner

########## quick maths everyday man's on the block ##########
function newember_main_lottery:result/fetch_to_retrieve

########## tellraw ##########
execute as @s[tag=!nwbr_player_near,tag=!nwbr_classic,tag=!nwbr_not_owner] run tellraw @p ["",{"text":"Cliquer sur une option : ","color":"white","insertion":"Clique sur une option, pas ici tête de noeud : ","hoverEvent":{"action":"show_text","contents":[""]}},{"text":"[Désinstaller la boutique] ","color":"#FF0000","clickEvent":{"action":"run_command","value":"/trigger nwtgr_lot_r_btn set 1"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Pour la replacer ailleurs","color":"red"}]}},{"text":"[récupérer les mises (","color":"#1AFB00","clickEvent":{"action":"run_command","value":"/trigger nwtgr_lot_r_btn set 2"}},{"score":{"name":"@s","objective":"nwbr_number"},"color":"#1AFB00","insertion":"/trigger nwtgr_lot_r_btn set 2"},{"text":") ]","color":"#1AFB00","insertion":"/trigger nwtgr_lot_r_btn set 2"}]
execute as @s[tag=!nwbr_player_near,tag=nwbr_classic] run tellraw @p ["",{"text":"Cliquer sur une option : ","color":"white","insertion":"Clique sur une option, pas ici tête de noeud : ","hoverEvent":{"action":"show_text","contents":[""]}},{"text":"[Désinstaller la boutique] ","color":"#FF0000","clickEvent":{"action":"run_command","value":"/trigger nwtgr_lot_r_btn set 1"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Pour la replacer ailleurs","color":"red"}]}}]

execute as @s[tag=!nwbr_player_near,tag=!nwbr_classic,tag=nwbr_not_owner] run tellraw @p ["",{"text":"Cette lotterie n'est pas la tienne","color":"#FF0000","insertion":"On touche pas aux affaires des autres","hoverEvent":{"action":"show_text","contents":[""]}}]


execute as @s[tag=!nwbr_player_near] run scoreboard players operation @p nwbr_lot_id = @s nwbr_lot_id

#- remove -#
tag @s remove nwbr_player_near
tag @s remove nwbr_not_owner
