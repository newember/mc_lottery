scoreboard players set @s rng_lcg_in 1
scoreboard players set @s rng_lcg_in1 20
scoreboard players set @s rng_lcg_out -1
function rng:next_int_lcg
function rng:range_lcg

scoreboard players set @s nwbr_number 0
execute at @a[distance=..32] if score @p nwbr_player_id = @s nwbr_player_id as @p run function newember_basics:effect/fetch/luck
execute at @a[distance=..32] if score @p nwbr_player_id = @s nwbr_player_id as @p run function newember_basics:effect/fetch/unluck
execute at @a[distance=..32] if score @p nwbr_player_id = @s nwbr_player_id run scoreboard players operation @s nwbr_number = @p nwbr_effect_26LK
execute at @a[distance=..32] if score @p nwbr_player_id = @s nwbr_player_id run scoreboard players operation @s nwbr_number -= @p nwbr_effect_27UL
scoreboard players operation @s nwbr_number < #3 nwbr_number
execute as @s[tag=!nwbr_special] run scoreboard players operation @s nwbr_number *= #4 nwbr_number
execute as @s[tag=nwbr_special] run scoreboard players operation @s nwbr_number *= #6 nwbr_number
execute as @s[tag=nwbr_special] run scoreboard players remove @s nwbr_number 2
scoreboard players operation @s nwbr_number > #1 nwbr_number
execute if score @s rng_lcg_out <= @s nwbr_number run tag @s add nwbr_retry
execute if score @s rng_lcg_out <= @s nwbr_number run scoreboard players add @s nwbr_step_09 20
execute if score @s rng_lcg_out <= @s nwbr_number run scoreboard players add @s nwbr_effect_26LK 1
scoreboard players operation @s nwbr_math = @s nwbr_effect_26LK
scoreboard players operation @s nwbr_math %= #2 nwbr_number
scoreboard players operation @s nwbr_number = @s nwbr_effect_26LK
scoreboard players operation @s nwbr_number /= #2 nwbr_number
scoreboard players add @s nwbr_number 1
execute at @s[tag=nwbr_retry] if score @s nwbr_math matches 0 at @a[distance=..20] if score @p nwbr_player_id = @s nwbr_player_id run title @p actionbar ["",{"text":"l","bold":true,"italic":true,"color":"#256A00"},{"text":"o","bold":true,"italic":true,"color":"#2F8600"},{"text":"o","bold":true,"italic":true,"color":"#318C00"},{"text":"t ","bold":true,"italic":true,"color":"#339300"},{"text":"m","bold":true,"italic":true,"color":"#359900"},{"text":"u","bold":true,"italic":true,"color":"#389F00"},{"text":"l","bold":true,"italic":true,"color":"#389F00"},{"text":"t","bold":true,"italic":true,"color":"#3AA800"},{"text":"i","bold":true,"italic":true,"color":"#3EB000"},{"text":"p","bold":true,"italic":true,"color":"#42BB00"},{"text":"l","bold":true,"italic":true,"color":"#45C600"},{"text":"i","bold":true,"italic":true,"color":"#49D000"},{"text":"e","bold":true,"italic":true,"color":"#49D000"},{"text":"r ","bold":true,"italic":true,"color":"#4EDD00"},{"text":"x","bold":true,"italic":true,"color":"#52EA00"},{"score":{"name":"@s","objective":"nwbr_number"},"bold":true,"color":"#4EDD00"}]