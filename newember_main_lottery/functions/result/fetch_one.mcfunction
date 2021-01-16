scoreboard players set in math 0

execute as @e[tag=nwbr_classic,distance=..2] run scoreboard players set in1 math 6
execute as @e[tag=nwbr_ender,distance=..2] run scoreboard players set in1 math 5
execute as @e[tag=nwbr_goldmine,distance=..2] run scoreboard players set in1 math 5
execute as @e[tag=nwbr_fancy,distance=..2] run scoreboard players set in1 math 8
execute as @e[tag=nwbr_special,distance=..2] run scoreboard players set in1 math 15

scoreboard players set out math -1
function rng:next_int_lcg
function rng:range_lcg
execute if score #cheat nwbr_math matches 1 run scoreboard players operation out math = #cheat math
scoreboard players operation @s nwbr_lot_score = out math
