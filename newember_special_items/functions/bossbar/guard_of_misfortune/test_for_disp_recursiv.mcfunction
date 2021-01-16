scoreboard players add @s nwbr_math 1
scoreboard players set @s nwbr_number 0
execute at @e[tag=nwbr_missf_guard] if score @e[tag=nwbr_missf_guard,sort=nearest,limit=1] nwbr_boss_num = @s nwbr_math run scoreboard players set @s nwbr_number 1
execute unless score @s nwbr_number matches 0 run function newember_special_items:bossbar/guard_of_misfortune/test_for_disp_recursiv
