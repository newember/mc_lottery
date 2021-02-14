tag @p add nwbr_stand_found

#Prevent already using
execute as @s[scores={nwbr_lot_timer=0..}] run tellraw @p {"text":"La lotterie est en cours d'utilisation","color":"red","hoverEvent":{"action":"show_text","contents":{"text":"Deso je fait qu'un truc à la fois","color":"#DAD1B6"}}}

#Uninstall
execute as @s[scores={nwbr_lot_timer=-1},tag=!nwbr_classic] if score @p nwtgr_lot_r_btn matches 1 if score @p nwbr_player_id = @s nwbr_lot_owner run function newember_main_lottery:buttons/options_uninstall
execute as @s[scores={nwbr_lot_timer=-1},tag=!nwbr_classic] if score @p nwtgr_lot_r_btn matches 1 unless score @p nwbr_player_id = @s nwbr_lot_owner run tellraw @p {"text":"Cette lotterie n'est pas à toi... Tu serai pas en train d'essayer de tricher là par hasard ?","color":"dark_red","hoverEvent":{"action":"show_text","contents":{"text":"petit filou","color":"#7801FC"}}}
execute as @s[scores={nwbr_lot_timer=-1},tag=nwbr_classic] if score @p nwtgr_lot_r_btn matches 1 run function newember_main_lottery:buttons/options_uninstall

#Get money
execute as @s[scores={nwbr_lot_timer=-1}] if score @p nwtgr_lot_r_btn matches 2 if score @p nwbr_player_id = @s nwbr_lot_owner run function newember_main_lottery:buttons/options_retrieve
execute as @s[scores={nwbr_lot_timer=-1}] if score @p nwtgr_lot_r_btn matches 2 unless score @p nwbr_player_id = @s nwbr_lot_owner run tellraw @p {"text":"Cette lotterie n'est pas à toi... Tu serai pas en train d'essayer de tricher là par hasard ?","color":"dark_red","hoverEvent":{"action":"show_text","contents":{"text":"petit filou","color":"#7801FC"}}}

#Stats
execute as @s[scores={nwbr_lot_timer=-1}] if score @p nwtgr_lot_r_btn matches 3 run function newember_main_lottery:buttons/options_stats
