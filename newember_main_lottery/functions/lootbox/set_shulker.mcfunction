scoreboard players set @s rng_lcg_in 1
scoreboard players set @s rng_lcg_in1 16
scoreboard players set @s rng_lcg_out -1
function rng:next_int_lcg
function rng:range_lcg

execute if score @s rng_lcg_out matches 1 run setblock ~ ~ ~ minecraft:white_shulker_box
execute if score @s rng_lcg_out matches 2 run setblock ~ ~ ~ minecraft:orange_shulker_box
execute if score @s rng_lcg_out matches 3 run setblock ~ ~ ~ minecraft:magenta_shulker_box
execute if score @s rng_lcg_out matches 4 run setblock ~ ~ ~ minecraft:light_blue_shulker_box
execute if score @s rng_lcg_out matches 5 run setblock ~ ~ ~ minecraft:yellow_shulker_box
execute if score @s rng_lcg_out matches 6 run setblock ~ ~ ~ minecraft:lime_shulker_box
execute if score @s rng_lcg_out matches 7 run setblock ~ ~ ~ minecraft:pink_shulker_box
execute if score @s rng_lcg_out matches 8 run setblock ~ ~ ~ minecraft:gray_shulker_box
execute if score @s rng_lcg_out matches 9 run setblock ~ ~ ~ minecraft:light_gray_shulker_box
execute if score @s rng_lcg_out matches 10 run setblock ~ ~ ~ minecraft:cyan_shulker_box
execute if score @s rng_lcg_out matches 11 run setblock ~ ~ ~ minecraft:purple_shulker_box
execute if score @s rng_lcg_out matches 12 run setblock ~ ~ ~ minecraft:blue_shulker_box
execute if score @s rng_lcg_out matches 13 run setblock ~ ~ ~ minecraft:brown_shulker_box
execute if score @s rng_lcg_out matches 14 run setblock ~ ~ ~ minecraft:green_shulker_box
execute if score @s rng_lcg_out matches 15 run setblock ~ ~ ~ minecraft:red_shulker_box
execute if score @s rng_lcg_out matches 16 run setblock ~ ~ ~ minecraft:black_shulker_box
