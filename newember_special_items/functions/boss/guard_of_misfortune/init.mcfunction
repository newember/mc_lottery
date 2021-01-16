function newember_special_items:boss/guard_of_misfortune/spawn
execute as @e[tag=nwbr_missf_guard,sort=nearest,limit=1] store result score @s nwbr_boss_num if entity @e[tag=nwbr_missf_guard]
