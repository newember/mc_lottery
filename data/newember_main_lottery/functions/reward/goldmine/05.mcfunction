tag @s add has_reward
summon minecraft:item ^-0.89 ^1.7 ^0.07 {Item:{id:"minecraft:music_disc_11",Count:1}}
particle minecraft:dust 0.1 0.1 0.1 2 ^-0.89 ^1.7 ^0.07 0.1 0.1 0.1 1 5 force @a
execute as @s at @a if score @p nwbr_player_id = @s nwbr_player_id run playsound minecraft:music_disc.11 block @p ~ ~ ~ 10000 1 1
execute as @s at @a if score @p nwbr_player_id = @s nwbr_player_id run effect give @p minecraft:blindness 75 0
execute as @s at @a if score @p nwbr_player_id = @s nwbr_player_id run effect give @p minecraft:slowness 75 0
execute as @s at @a if score @p nwbr_player_id = @s nwbr_player_id run effect give @p minecraft:mining_fatigue 75 1
