#scoreboard players add in1 math 1
#scoreboard players operation #range math = in1 math
#scoreboard players operation #range math -= in math
#
#scoreboard players operation #m1 math = #range math
#scoreboard players remove #m1 math 1
#function rng:private/next_int_lcg
#scoreboard players operation out math += in math
#
#scoreboard players reset #m1 math
#scoreboard players remove in1 math 1

scoreboard players add @s rng_lcg_in1 1
scoreboard players operation @s rng_lcg_range = @s rng_lcg_in1
scoreboard players operation @s rng_lcg_range -= @s rng_lcg_in

scoreboard players operation @s rng_lcg_m1 = @s rng_lcg_range
scoreboard players remove @s rng_lcg_m1 1
function rng:private/next_int_lcg
scoreboard players operation @s rng_lcg_out += @s rng_lcg_in

scoreboard players reset @s rng_lcg_m1
scoreboard players remove @s rng_lcg_in1 1
