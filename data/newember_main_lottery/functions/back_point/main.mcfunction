execute as @e[tag=nwbr_back_point,tag=nwbr_active] at @a if score @s nwbr_player_id = @p nwbr_player_id run tp @p @s
execute as @e[tag=nwbr_back_point,tag=nwbr_active] at @s if score @s nwbr_player_id = @p nwbr_player_id run effect clear @p minecraft:levitation
execute as @e[tag=nwbr_back_point,tag=nwbr_active] at @s if score @s nwbr_player_id = @p nwbr_player_id run effect clear @p minecraft:mining_fatigue
execute as @e[tag=nwbr_back_point,tag=nwbr_active] at @s if score @s nwbr_player_id = @p nwbr_player_id run kill @s

#time spent in special dimension
execute in newember_ultra_vfx:red positioned 0 0 0 run tag @a[distance=0..,tag=!nwbr_dim_rescue] add nwbr_sp_dim
execute in newember_ultra_vfx:purple positioned 0 0 0 run tag @a[distance=0..,tag=!nwbr_dim_rescue] add nwbr_sp_dim
scoreboard players set @a[tag=!nwbr_sp_dim] nwbr_time_spdim 0
scoreboard players add @a[tag=nwbr_sp_dim] nwbr_time_spdim 1
tag @a[tag=nwbr_sp_dim] remove nwbr_sp_dim
execute as @a[scores={nwbr_time_spdim=120..},tag=!nwbr_dim_rescue] at @s run function newember_main_lottery:back_point/rescue
tag @a[scores={nwbr_time_spdim=120..},tag=!nwbr_dim_rescue] add nwbr_dim_rescue

execute as @e[tag=nwbr_rescue_point] at @s unless block ~ ~-1 ~ air at @a[tag=nwbr_dim_rescue] if score @p nwbr_player_id = @s nwbr_player_id run tp @p @s
execute as @e[tag=nwbr_rescue_point] at @a[tag=nwbr_dim_rescue,distance=..50] if score @p nwbr_player_id = @s nwbr_player_id if score @s nwbr_math matches 0 run forceload remove ~ ~ 
execute as @e[tag=nwbr_rescue_point] at @a[tag=nwbr_dim_rescue,distance=..50] if score @p nwbr_player_id = @s nwbr_player_id run tag @p remove nwbr_dim_rescue
execute as @e[tag=nwbr_rescue_point] at @a[distance=..50] if score @p nwbr_player_id = @s nwbr_player_id run kill @s