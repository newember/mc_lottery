#^-0.89 ^1.7 ^0.07
#init
tag @s remove has_reward

#======================== scores ========================#
execute store result score #0 nwbr_lot_score run execute if entity @e[scores={nwbr_lot_score=0},distance=..1.5]
execute store result score #1 nwbr_lot_score run execute if entity @e[scores={nwbr_lot_score=1},distance=..1.5]
execute store result score #2 nwbr_lot_score run execute if entity @e[scores={nwbr_lot_score=2},distance=..1.5]
execute store result score #3 nwbr_lot_score run execute if entity @e[scores={nwbr_lot_score=3},distance=..1.5]
execute store result score #4 nwbr_lot_score run execute if entity @e[scores={nwbr_lot_score=4},distance=..1.5]
execute store result score #5 nwbr_lot_score run execute if entity @e[scores={nwbr_lot_score=5},distance=..1.5]
execute store result score #6 nwbr_lot_score run execute if entity @e[scores={nwbr_lot_score=6},distance=..1.5]
execute store result score #6 nwbr_lot_score run execute if entity @e[scores={nwbr_lot_score=6},distance=..1.5]
execute store result score #7 nwbr_lot_score run execute if entity @e[scores={nwbr_lot_score=7},distance=..1.5]
execute store result score #8 nwbr_lot_score run execute if entity @e[scores={nwbr_lot_score=8},distance=..1.5]
execute store result score #9 nwbr_lot_score run execute if entity @e[scores={nwbr_lot_score=9},distance=..1.5]
execute store result score #10 nwbr_lot_score run execute if entity @e[scores={nwbr_lot_score=10},distance=..1.5]
execute store result score #11 nwbr_lot_score run execute if entity @e[scores={nwbr_lot_score=11},distance=..1.5]
execute store result score #12 nwbr_lot_score run execute if entity @e[scores={nwbr_lot_score=12},distance=..1.5]
execute store result score #13 nwbr_lot_score run execute if entity @e[scores={nwbr_lot_score=13},distance=..1.5]
execute store result score #14 nwbr_lot_score run execute if entity @e[scores={nwbr_lot_score=14},distance=..1.5]
execute store result score #15 nwbr_lot_score run execute if entity @e[scores={nwbr_lot_score=15},distance=..1.5]

#bonus (fancy #7)
execute as @s[tag=nwbr_fancy] store result score #bonus nwbr_lot_score run execute if entity @e[scores={nwbr_lot_score=7},distance=..1.5,limit=2]
execute as @s[tag=nwbr_fancy] run scoreboard players operation #0 nwbr_lot_score += #bonus nwbr_lot_score
execute as @s[tag=nwbr_fancy] run scoreboard players operation #1 nwbr_lot_score += #bonus nwbr_lot_score
execute as @s[tag=nwbr_fancy] run scoreboard players operation #2 nwbr_lot_score += #bonus nwbr_lot_score
execute as @s[tag=nwbr_fancy] run scoreboard players operation #3 nwbr_lot_score += #bonus nwbr_lot_score
execute as @s[tag=nwbr_fancy] run scoreboard players operation #4 nwbr_lot_score += #bonus nwbr_lot_score
execute as @s[tag=nwbr_fancy] run scoreboard players operation #5 nwbr_lot_score += #bonus nwbr_lot_score
execute as @s[tag=nwbr_fancy] run scoreboard players operation #6 nwbr_lot_score += #bonus nwbr_lot_score

#bonus (special #14)
execute as @s[tag=nwbr_special] store result score #bonus nwbr_lot_score run execute if entity @e[scores={nwbr_lot_score=14},distance=..1.5,limit=2]
execute as @s[tag=nwbr_special] run scoreboard players operation #0 nwbr_lot_score += #bonus nwbr_lot_score
execute as @s[tag=nwbr_special] run scoreboard players operation #1 nwbr_lot_score += #bonus nwbr_lot_score
execute as @s[tag=nwbr_special] run scoreboard players operation #2 nwbr_lot_score += #bonus nwbr_lot_score
execute as @s[tag=nwbr_special] run scoreboard players operation #3 nwbr_lot_score += #bonus nwbr_lot_score
execute as @s[tag=nwbr_special] run scoreboard players operation #4 nwbr_lot_score += #bonus nwbr_lot_score
execute as @s[tag=nwbr_special] run scoreboard players operation #5 nwbr_lot_score += #bonus nwbr_lot_score
execute as @s[tag=nwbr_special] run scoreboard players operation #6 nwbr_lot_score += #bonus nwbr_lot_score
execute as @s[tag=nwbr_special] run scoreboard players operation #7 nwbr_lot_score += #bonus nwbr_lot_score
execute as @s[tag=nwbr_special] run scoreboard players operation #8 nwbr_lot_score += #bonus nwbr_lot_score
execute as @s[tag=nwbr_special] run scoreboard players operation #9 nwbr_lot_score += #bonus nwbr_lot_score
execute as @s[tag=nwbr_special] run scoreboard players operation #10 nwbr_lot_score += #bonus nwbr_lot_score
execute as @s[tag=nwbr_special] run scoreboard players operation #11 nwbr_lot_score += #bonus nwbr_lot_score
execute as @s[tag=nwbr_special] run scoreboard players operation #12 nwbr_lot_score += #bonus nwbr_lot_score
execute as @s[tag=nwbr_special] run scoreboard players operation #13 nwbr_lot_score += #bonus nwbr_lot_score

execute as @s[tag=nwbr_special,tag=nwbr_ultra] run scoreboard players operation #2 nwbr_lot_score += #3 nwbr_lot_score


#======================== rewards ========================#
#classic
execute as @s[tag=nwbr_classic] if score #0 nwbr_lot_score matches 3 run tag @s add has_reward
execute as @s[tag=nwbr_classic] if score #1 nwbr_lot_score matches 3 run tag @s add has_reward
execute as @s[tag=nwbr_classic] if score #2 nwbr_lot_score matches 3 run tag @s add has_reward
execute as @s[tag=nwbr_classic] if score #3 nwbr_lot_score matches 3 run tag @s add has_reward
execute as @s[tag=nwbr_classic] if score #4 nwbr_lot_score matches 3 run tag @s add has_reward
execute as @s[tag=nwbr_classic] if score #5 nwbr_lot_score matches 3 run tag @s add has_reward
execute as @s[tag=nwbr_classic] if score #6 nwbr_lot_score matches 3 run tag @s add has_reward

#ender
execute as @s[tag=nwbr_ender] if score #0 nwbr_lot_score matches 3 run tag @s add has_reward
execute as @s[tag=nwbr_ender] if score #1 nwbr_lot_score matches 3 run tag @s add has_reward
execute as @s[tag=nwbr_ender] if score #2 nwbr_lot_score matches 3 run tag @s add has_reward
execute as @s[tag=nwbr_ender] if score #3 nwbr_lot_score matches 3 run tag @s add has_reward
execute as @s[tag=nwbr_ender] if score #4 nwbr_lot_score matches 3 run tag @s add has_reward
execute as @s[tag=nwbr_ender] if score #5 nwbr_lot_score matches 3 run tag @s add has_reward

#goldmine
execute as @s[tag=nwbr_goldmine] if score #0 nwbr_lot_score matches 3 run tag @s add has_reward
execute as @s[tag=nwbr_goldmine] if score #1 nwbr_lot_score matches 3 run tag @s add has_reward
execute as @s[tag=nwbr_goldmine] if score #2 nwbr_lot_score matches 3 run tag @s add has_reward
execute as @s[tag=nwbr_goldmine] if score #3 nwbr_lot_score matches 3 run tag @s add has_reward
execute as @s[tag=nwbr_goldmine] if score #4 nwbr_lot_score matches 3 run tag @s add has_reward
execute as @s[tag=nwbr_goldmine] if score #5 nwbr_lot_score matches 3 run tag @s add has_reward

#fancy
execute as @s[tag=nwbr_fancy] if score #0 nwbr_lot_score matches 3 run tag @s add has_reward
execute as @s[tag=nwbr_fancy] if score #1 nwbr_lot_score matches 3 run tag @s add has_reward
execute as @s[tag=nwbr_fancy] if score #2 nwbr_lot_score matches 3 run tag @s add has_reward
execute as @s[tag=nwbr_fancy] if score #3 nwbr_lot_score matches 3 run tag @s add has_reward
execute as @s[tag=nwbr_fancy] if score #4 nwbr_lot_score matches 3 run tag @s add has_reward
execute as @s[tag=nwbr_fancy] if score #5 nwbr_lot_score matches 3 run tag @s add has_reward
execute as @s[tag=nwbr_fancy] if score #6 nwbr_lot_score matches 3 run tag @s add has_reward
execute as @s[tag=nwbr_fancy] if score #7 nwbr_lot_score matches 3 run tag @s add has_reward

#special
execute as @s[tag=nwbr_special,tag=!nwbr_ultra] if score #0 nwbr_lot_score matches 3 run tag @s add has_reward
execute as @s[tag=nwbr_special,tag=!nwbr_ultra] if score #1 nwbr_lot_score matches 3 run tag @s add has_reward
execute as @s[tag=nwbr_special,tag=!nwbr_ultra] if score #2 nwbr_lot_score matches 3 run tag @s add has_reward
execute as @s[tag=nwbr_special,tag=!nwbr_ultra] if score #3 nwbr_lot_score matches 3 run tag @s add has_reward
execute as @s[tag=nwbr_special,tag=!nwbr_ultra] if score #4 nwbr_lot_score matches 3 run tag @s add has_reward
execute as @s[tag=nwbr_special,tag=!nwbr_ultra] if score #5 nwbr_lot_score matches 3 run tag @s add has_reward
execute as @s[tag=nwbr_special,tag=!nwbr_ultra] if score #6 nwbr_lot_score matches 3 run tag @s add has_reward
execute as @s[tag=nwbr_special,tag=!nwbr_ultra] if score #7 nwbr_lot_score matches 3 run function newember_main_lottery:reward/special/07
execute as @s[tag=nwbr_special,tag=!nwbr_ultra] if score #8 nwbr_lot_score matches 3 run tag @s add has_reward
execute as @s[tag=nwbr_special,tag=!nwbr_ultra] if score #9 nwbr_lot_score matches 3 run tag @s add has_reward
execute as @s[tag=nwbr_special,tag=!nwbr_ultra] if score #10 nwbr_lot_score matches 3 run tag @s add has_reward
execute as @s[tag=nwbr_special,tag=!nwbr_ultra] if score #11 nwbr_lot_score matches 3 run tag @s add has_reward
execute as @s[tag=nwbr_special,tag=!nwbr_ultra] if score #12 nwbr_lot_score matches 3 run tag @s add has_reward
execute as @s[tag=nwbr_special,tag=!nwbr_ultra] if score #13 nwbr_lot_score matches 3 run tag @s add has_reward
execute as @s[tag=nwbr_special,tag=!nwbr_ultra] if score #14 nwbr_lot_score matches 3 run tag @s add has_reward

# - ultra
execute as @s[tag=nwbr_special,tag=nwbr_ultra] if score #0 nwbr_lot_score matches 1.. run tag @s add has_reward
execute as @s[tag=nwbr_special,tag=nwbr_ultra] if score #1 nwbr_lot_score matches 1.. if score #0 nwbr_lot_score matches 0 run tag @s add has_reward
execute as @s[tag=nwbr_special,tag=nwbr_ultra] if score #2 nwbr_lot_score matches 3 run tag @s add has_reward
