clear @s minecraft:ocelot_spawn_egg 1
scoreboard players remove @s nwbr_number 1
execute at @s run function newember_main_lottery:spawn/give/skin_stand
execute as @s[scores={nwbr_number=1..}] align y at @s run function newember_main_lottery:spawn/replace_skin_player_iterate
