scoreboard players set @s rng_lcg_in 0

execute if entity @e[tag=nwbr_classic,distance=..1.5] run scoreboard players set @s rng_lcg_in1 6
execute if entity @e[tag=nwbr_ender,distance=..1.5] run scoreboard players set @s rng_lcg_in1 5
execute if entity @e[tag=nwbr_goldmine,distance=..1.5] run scoreboard players set @s rng_lcg_in1 5
execute if entity @e[tag=nwbr_fancy,distance=..1.5] run scoreboard players set @s rng_lcg_in1 8
execute if entity @e[tag=nwbr_special,tag=!nwbr_ultra,distance=..1.5] run scoreboard players set @s rng_lcg_in1 15
execute if entity @e[tag=nwbr_special,tag=nwbr_ultra,distance=..1.5] run scoreboard players set @s rng_lcg_in1 3

scoreboard players set @s rng_lcg_out -1
function rng:next_int_lcg
function rng:range_lcg
#execute if score #cheat nwbr_math matches 1 run scoreboard players operation @s rng_lcg_out = #cheat math
scoreboard players operation @s nwbr_lot_score = @s rng_lcg_out
