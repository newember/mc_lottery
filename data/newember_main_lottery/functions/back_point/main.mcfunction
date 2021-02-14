execute as @e[tag=nwbr_back_point,tag=nwbr_active] at @a if score @s nwbr_player_id = @p nwbr_player_id run tp @p @s
execute as @e[tag=nwbr_back_point,tag=nwbr_active] at @s if score @s nwbr_player_id = @p nwbr_player_id run effect clear @p minecraft:levitation
execute as @e[tag=nwbr_back_point,tag=nwbr_active] at @s if score @s nwbr_player_id = @p nwbr_player_id run effect clear @p minecraft:mining_fatigue
execute as @e[tag=nwbr_back_point,tag=nwbr_active] at @s if score @s nwbr_player_id = @p nwbr_player_id run kill @s
