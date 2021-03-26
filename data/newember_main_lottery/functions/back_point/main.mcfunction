execute as @e[tag=nwbr_back_point,tag=nwbr_active] at @a if score @s nwbr_player_id = @p nwbr_player_id run tp @p @s
execute as @e[tag=nwbr_back_point,tag=nwbr_active] at @s if score @s nwbr_player_id = @p nwbr_player_id run effect clear @p minecraft:levitation
execute as @e[tag=nwbr_back_point,tag=nwbr_active] at @s if score @s nwbr_player_id = @p nwbr_player_id run effect clear @p minecraft:mining_fatigue
execute as @e[tag=nwbr_back_point,tag=nwbr_active] at @s if score @s nwbr_player_id = @p nwbr_player_id run kill @s

#time spent in special dimension
execute in newember_ultra_vfx:red positioned 0 0 0 run tag @a[distance=0..,tag=!nwbr_dim_rescue] add nwbr_sp_dim
execute in newember_ultra_vfx:purple positioned 0 0 0 run tag @a[distance=0..,tag=!nwbr_dim_rescue] add nwbr_sp_dim
scoreboard players add @a[tag=nwbr_sp_dim] nwbr_time_spdim 1
tag @a[tag=nwbr_sp_dim] remove nwbr_sp_dim
execute as @a[scores={nwbr_time_spdim=240..},tag=!nwbr_dim_rescue] at @s run function newember_main_lottery:back_point/rescue
tag @a[scores={nwbr_time_spdim=240..},tag=!nwbr_dim_rescue] add nwbr_dim_rescue
