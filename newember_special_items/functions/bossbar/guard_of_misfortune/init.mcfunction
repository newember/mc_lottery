scoreboard players set @s nwbr_math 0
scoreboard players set @s nwbr_boss_num 0
function newember_special_items:bossbar/guard_of_misfortune/test_for_disp_recursiv
execute if score @s nwbr_math matches 31.. run scoreboard players set @s nwbr_math 0
scoreboard players operation @s nwbr_boss_num = @s nwbr_math
