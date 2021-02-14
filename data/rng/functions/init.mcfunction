scoreboard objectives add dist dummy
scoreboard objectives add math dummy

scoreboard objectives add rng_lcg_dist dummy
scoreboard objectives add rng_lcg_math dummy
scoreboard objectives add rng_lcg_in dummy
scoreboard objectives add rng_lcg_in1 dummy
scoreboard objectives add rng_lcg_out dummy
scoreboard objectives add rng_lcg_range dummy
scoreboard objectives add rng_lcg_m1 dummy
scoreboard objectives add rng_lcg_temp dummy

scoreboard players reset * dist

scoreboard objectives add constant dummy
scoreboard players set #2 constant 2
scoreboard players set #lcg constant 1103515245

execute unless score #lcg math matches ..0 unless score #lcg math matches 1.. run function rng:uuid_reset
