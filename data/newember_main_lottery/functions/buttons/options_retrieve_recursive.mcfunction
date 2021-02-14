give @p minecraft:diamond
scoreboard players remove @s nwbr_number 1
execute if score @s nwbr_number matches 1.. run function newember_main_lottery:buttons/options_retrieve_recursive
