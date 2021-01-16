clear @s minecraft:trader_llama_spawn_egg 1
scoreboard players remove @s nwbr_number 1
function newember_main_lottery:spawn/give/classic_stand
execute as @s[scores={nwbr_number=1..}] align y at @s run function newember_main_lottery:spawn/replace_classic_player_iterate
