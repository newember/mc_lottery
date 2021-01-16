scoreboard players set in math 1
scoreboard players set in1 math 20
scoreboard players set out math -1
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
execute if score out math <= @s nwbr_number run tag @s add nwbr_retry
execute if score out math <= @s nwbr_number run scoreboard players add @s nwbr_effect_26LK 1
scoreboard players operation @s nwbr_math = @s nwbr_effect_26LK
scoreboard players operation @s nwbr_math %= #2 nwbr_number
scoreboard players operation @s nwbr_number = @s nwbr_effect_26LK
scoreboard players operation @s nwbr_number /= #2 nwbr_number
scoreboard players add @s nwbr_number 1
execute if score @s nwbr_math matches 0 at @a[distance=..20] if score @p nwbr_player_id = @s nwbr_player_id run title @p actionbar ["",{"text":"!","obfuscated":true,"color":"aqua"},{"text":"!","obfuscated":true,"color":"#0079FF"},{"text":"!","obfuscated":true,"color":"light_purple"},{"text":" L","color":"#00770F"},{"text":"o","color":"#009713"},{"text":"o","color":"#00A615"},{"text":"t ","color":"#00BF18"},{"text":"m","color":"#00D71B"},{"text":"u","color":"#00E81D"},{"text":"l","color":"#00FB20"},{"text":"t","color":"#52FB00"},{"text":"i","color":"#6AFB00"},{"text":"p","color":"#97FB00"},{"text":"l","color":"#B7FE23"},{"text":"i","color":"#D2FF22"},{"text":"e","color":"#F4FF22"},{"text":"r ","color":"#FFE322"},{"text":" x","bold":true,"color":"gold"},{"score":{"name":"@s","objective":"nwbr_number"},"bold":true,"color":"gold"},{"text":" ","color":"light_purple"},{"text":"!","obfuscated":true,"color":"light_purple"},{"text":"!","obfuscated":true,"color":"#0D86FF"},{"text":"!","obfuscated":true,"color":"aqua"}]
