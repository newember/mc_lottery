scoreboard players set @p nwbr_math 0
scoreboard players set @p nwbr_boss_num 0
function newember_special_items:bossbar/guard_of_misfortune/test_for_disp_recursiv
execute if score @p nwbr_math matches 31.. run scoreboard players set @p nwbr_math 0
scoreboard players operation @p nwbr_boss_num = @p nwbr_math
