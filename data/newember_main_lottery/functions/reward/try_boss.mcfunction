scoreboard players set @s rng_lcg_in 1
scoreboard players set @s rng_lcg_in1 200
scoreboard players set @s rng_lcg_out -1
function rng:next_int_lcg
function rng:range_lcg

scoreboard players set @s nwbr_number 0
execute at @a[distance=..32] if score @p nwbr_player_id = @s nwbr_player_id as @p run function newember_basics:effect/fetch/luck
execute at @a[distance=..32] if score @p nwbr_player_id = @s nwbr_player_id as @p run function newember_basics:effect/fetch/unluck
execute at @a[distance=..32] if score @p nwbr_player_id = @s nwbr_player_id run scoreboard players operation @s nwbr_number = @p nwbr_effect_27UL
execute at @a[distance=..32] if score @p nwbr_player_id = @s nwbr_player_id run scoreboard players operation @s nwbr_number -= @p nwbr_effect_26LK
scoreboard players operation @s nwbr_number < #3 nwbr_number
scoreboard players operation @s nwbr_number *= #10 nwbr_number
execute if score #cheat nwbr_math matches 2 run scoreboard players set @s nwbr_number 1000
scoreboard players operation @s nwbr_number > #1 nwbr_number

execute if score @s rng_lcg_out <= @s nwbr_number run summon minecraft:lightning_bolt ^-0.89 ^1.7 ^0.07
execute if score @s rng_lcg_out <= @s nwbr_number at @a[distance=..40] if score @p nwbr_player_id = @s nwbr_player_id run advancement grant @p[distance=..0.1,gamemode=!creative] only newember_main_lottery:lotterie/missf_g_summon
execute if score @s rng_lcg_out <= @s nwbr_number positioned ^-1.89 ^1.7 ^0.07 run function newember_special_items:boss/guard_of_misfortune/init
