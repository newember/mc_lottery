execute as @e[tag=nwbr_missf_guard,scores={nwbr_boss_num=1},limit=1] at @s run bossbar set newember_boss:guard_of_misfortune_1 players @a[distance=..48]
execute as @e[tag=nwbr_missf_guard,scores={nwbr_boss_num=2},limit=1] at @s run bossbar set newember_boss:guard_of_misfortune_2 players @a[distance=..48]
execute as @e[tag=nwbr_missf_guard,scores={nwbr_boss_num=3},limit=1] at @s run bossbar set newember_boss:guard_of_misfortune_3 players @a[distance=..48]
execute as @e[tag=nwbr_missf_guard,scores={nwbr_boss_num=4},limit=1] at @s run bossbar set newember_boss:guard_of_misfortune_4 players @a[distance=..48]
execute as @e[tag=nwbr_missf_guard,scores={nwbr_boss_num=5},limit=1] at @s run bossbar set newember_boss:guard_of_misfortune_5 players @a[distance=..48]
execute as @e[tag=nwbr_missf_guard,scores={nwbr_boss_num=6},limit=1] at @s run bossbar set newember_boss:guard_of_misfortune_6 players @a[distance=..48]
execute as @e[tag=nwbr_missf_guard,scores={nwbr_boss_num=7},limit=1] at @s run bossbar set newember_boss:guard_of_misfortune_7 players @a[distance=..48]
execute as @e[tag=nwbr_missf_guard,scores={nwbr_boss_num=8},limit=1] at @s run bossbar set newember_boss:guard_of_misfortune_8 players @a[distance=..48]
execute as @e[tag=nwbr_missf_guard,scores={nwbr_boss_num=9},limit=1] at @s run bossbar set newember_boss:guard_of_misfortune_9 players @a[distance=..48]
execute as @e[tag=nwbr_missf_guard,scores={nwbr_boss_num=10},limit=1] at @s run bossbar set newember_boss:guard_of_misfortune_10 players @a[distance=..48]


execute as @e[tag=nwbr_missf_guard,scores={nwbr_boss_num=1},limit=1] store result bossbar newember_boss:guard_of_misfortune_1 value run data get entity @s Health 1
execute as @e[tag=nwbr_missf_guard,scores={nwbr_boss_num=2},limit=1] store result bossbar newember_boss:guard_of_misfortune_2 value run data get entity @s Health 1
execute as @e[tag=nwbr_missf_guard,scores={nwbr_boss_num=3},limit=1] store result bossbar newember_boss:guard_of_misfortune_3 value run data get entity @s Health 1
execute as @e[tag=nwbr_missf_guard,scores={nwbr_boss_num=4},limit=1] store result bossbar newember_boss:guard_of_misfortune_4 value run data get entity @s Health 1
execute as @e[tag=nwbr_missf_guard,scores={nwbr_boss_num=5},limit=1] store result bossbar newember_boss:guard_of_misfortune_5 value run data get entity @s Health 1
execute as @e[tag=nwbr_missf_guard,scores={nwbr_boss_num=6},limit=1] store result bossbar newember_boss:guard_of_misfortune_6 value run data get entity @s Health 1
execute as @e[tag=nwbr_missf_guard,scores={nwbr_boss_num=7},limit=1] store result bossbar newember_boss:guard_of_misfortune_7 value run data get entity @s Health 1
execute as @e[tag=nwbr_missf_guard,scores={nwbr_boss_num=8},limit=1] store result bossbar newember_boss:guard_of_misfortune_8 value run data get entity @s Health 1
execute as @e[tag=nwbr_missf_guard,scores={nwbr_boss_num=9},limit=1] store result bossbar newember_boss:guard_of_misfortune_9 value run data get entity @s Health 1
execute as @e[tag=nwbr_missf_guard,scores={nwbr_boss_num=10},limit=1] store result bossbar newember_boss:guard_of_misfortune_10 value run data get entity @s Health 1


execute unless entity @e[tag=nwbr_missf_guard,scores={nwbr_boss_num=1},limit=1] run bossbar set newember_boss:guard_of_misfortune_1 players @p[tag=nwbr_no_one]
execute unless entity @e[tag=nwbr_missf_guard,scores={nwbr_boss_num=2},limit=1] run bossbar set newember_boss:guard_of_misfortune_2 players @p[tag=nwbr_no_one]
execute unless entity @e[tag=nwbr_missf_guard,scores={nwbr_boss_num=3},limit=1] run bossbar set newember_boss:guard_of_misfortune_3 players @p[tag=nwbr_no_one]
execute unless entity @e[tag=nwbr_missf_guard,scores={nwbr_boss_num=4},limit=1] run bossbar set newember_boss:guard_of_misfortune_4 players @p[tag=nwbr_no_one]
execute unless entity @e[tag=nwbr_missf_guard,scores={nwbr_boss_num=5},limit=1] run bossbar set newember_boss:guard_of_misfortune_5 players @p[tag=nwbr_no_one]
execute unless entity @e[tag=nwbr_missf_guard,scores={nwbr_boss_num=6},limit=1] run bossbar set newember_boss:guard_of_misfortune_6 players @p[tag=nwbr_no_one]
execute unless entity @e[tag=nwbr_missf_guard,scores={nwbr_boss_num=7},limit=1] run bossbar set newember_boss:guard_of_misfortune_7 players @p[tag=nwbr_no_one]
execute unless entity @e[tag=nwbr_missf_guard,scores={nwbr_boss_num=8},limit=1] run bossbar set newember_boss:guard_of_misfortune_8 players @p[tag=nwbr_no_one]
execute unless entity @e[tag=nwbr_missf_guard,scores={nwbr_boss_num=9},limit=1] run bossbar set newember_boss:guard_of_misfortune_9 players @p[tag=nwbr_no_one]
execute unless entity @e[tag=nwbr_missf_guard,scores={nwbr_boss_num=10},limit=1] run bossbar set newember_boss:guard_of_misfortune_10 players @p[tag=nwbr_no_one]
