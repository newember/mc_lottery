########## quick maths everyday man's on the block ##########
scoreboard players operation @s nwbr_number = @s nwbr_lot_toclaim
scoreboard players operation @s nwbr_number *= #3 nwbr_number
execute as @s[tag=nwbr_classic] store result score @s nwbr_number run scoreboard players operation @s nwbr_number *= #1 nwbr_number
execute as @s[tag=nwbr_ender] store result score @s nwbr_number run scoreboard players operation @s nwbr_number *= #2 nwbr_number
execute as @s[tag=nwbr_goldmine] store result score @s nwbr_number run scoreboard players operation @s nwbr_number *= #2 nwbr_number
execute as @s[tag=nwbr_fancy] store result score @s nwbr_number run scoreboard players operation @s nwbr_number *= #4 nwbr_number
execute as @s[tag=nwbr_special] store result score @s nwbr_number run scoreboard players operation @s nwbr_number *= #2 nwbr_number
scoreboard players operation @s nwbr_math = @s nwbr_number
scoreboard players operation @s nwbr_math %= #10 nwbr_number
scoreboard players operation @s nwbr_number -= @s nwbr_math
scoreboard players operation @s nwbr_number /= #10 nwbr_number
