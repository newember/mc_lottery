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
execute as @s[tag=nwbr_classic] if score #0 nwbr_lot_score matches 3 run function newember_main_lottery:reward/classic/00
execute as @s[tag=nwbr_classic] if score #1 nwbr_lot_score matches 3 run function newember_main_lottery:reward/classic/01
execute as @s[tag=nwbr_classic] if score #2 nwbr_lot_score matches 3 run function newember_main_lottery:reward/classic/02
execute as @s[tag=nwbr_classic] if score #3 nwbr_lot_score matches 3 run function newember_main_lottery:reward/classic/03
execute as @s[tag=nwbr_classic] if score #4 nwbr_lot_score matches 3 run function newember_main_lottery:reward/classic/04
execute as @s[tag=nwbr_classic] if score #5 nwbr_lot_score matches 3 run function newember_main_lottery:reward/classic/05
execute as @s[tag=nwbr_classic] if score #6 nwbr_lot_score matches 3 run function newember_main_lottery:reward/classic/06

#ender
execute as @s[tag=nwbr_ender] if score #0 nwbr_lot_score matches 3 run function newember_main_lottery:reward/ender/00
execute as @s[tag=nwbr_ender] if score #1 nwbr_lot_score matches 3 run function newember_main_lottery:reward/ender/01
execute as @s[tag=nwbr_ender] if score #2 nwbr_lot_score matches 3 run function newember_main_lottery:reward/ender/02
execute as @s[tag=nwbr_ender] if score #3 nwbr_lot_score matches 3 run function newember_main_lottery:reward/ender/03
execute as @s[tag=nwbr_ender] if score #4 nwbr_lot_score matches 3 run function newember_main_lottery:reward/ender/04
execute as @s[tag=nwbr_ender] if score #5 nwbr_lot_score matches 3 run function newember_main_lottery:reward/ender/05

#goldmine
execute as @s[tag=nwbr_goldmine] if score #0 nwbr_lot_score matches 3 run function newember_main_lottery:reward/goldmine/00
execute as @s[tag=nwbr_goldmine] if score #1 nwbr_lot_score matches 3 run function newember_main_lottery:reward/goldmine/01
execute as @s[tag=nwbr_goldmine] if score #2 nwbr_lot_score matches 3 run function newember_main_lottery:reward/goldmine/02
execute as @s[tag=nwbr_goldmine] if score #3 nwbr_lot_score matches 3 run function newember_main_lottery:reward/goldmine/03
execute as @s[tag=nwbr_goldmine] if score #4 nwbr_lot_score matches 3 run function newember_main_lottery:reward/goldmine/04
execute as @s[tag=nwbr_goldmine] if score #5 nwbr_lot_score matches 3 run function newember_main_lottery:reward/goldmine/05

#fancy
execute as @s[tag=nwbr_fancy] if score #0 nwbr_lot_score matches 3 run function newember_main_lottery:reward/fancy/00
execute as @s[tag=nwbr_fancy] if score #1 nwbr_lot_score matches 3 run function newember_main_lottery:reward/fancy/01
execute as @s[tag=nwbr_fancy] if score #2 nwbr_lot_score matches 3 run function newember_main_lottery:reward/fancy/02
execute as @s[tag=nwbr_fancy] if score #3 nwbr_lot_score matches 3 run function newember_main_lottery:reward/fancy/03
execute as @s[tag=nwbr_fancy] if score #4 nwbr_lot_score matches 3 run function newember_main_lottery:reward/fancy/04
execute as @s[tag=nwbr_fancy] if score #5 nwbr_lot_score matches 3 run function newember_main_lottery:reward/fancy/05
execute as @s[tag=nwbr_fancy] if score #6 nwbr_lot_score matches 3 run function newember_main_lottery:reward/fancy/06
execute as @s[tag=nwbr_fancy] if score #7 nwbr_lot_score matches 3 run function newember_main_lottery:reward/fancy/07

#special
execute as @s[tag=nwbr_special,tag=!nwbr_ultra] if score #0 nwbr_lot_score matches 3 run function newember_main_lottery:reward/special/00
execute as @s[tag=nwbr_special,tag=!nwbr_ultra] if score #1 nwbr_lot_score matches 3 run function newember_main_lottery:reward/special/01
execute as @s[tag=nwbr_special,tag=!nwbr_ultra] if score #2 nwbr_lot_score matches 3 run function newember_main_lottery:reward/special/02
execute as @s[tag=nwbr_special,tag=!nwbr_ultra] if score #3 nwbr_lot_score matches 3 run function newember_main_lottery:reward/special/03
execute as @s[tag=nwbr_special,tag=!nwbr_ultra] if score #4 nwbr_lot_score matches 3 run function newember_main_lottery:reward/special/04
execute as @s[tag=nwbr_special,tag=!nwbr_ultra] if score #5 nwbr_lot_score matches 3 run function newember_main_lottery:reward/special/05
execute as @s[tag=nwbr_special,tag=!nwbr_ultra] if score #6 nwbr_lot_score matches 3 run function newember_main_lottery:reward/special/06
#execute as @s[tag=nwbr_special,tag=!nwbr_ultra] if score #7 nwbr_lot_score matches 3 run function newember_main_lottery:reward/special/07
execute as @s[tag=nwbr_special,tag=!nwbr_ultra] if score #8 nwbr_lot_score matches 3 run function newember_main_lottery:reward/special/08
execute as @s[tag=nwbr_special,tag=!nwbr_ultra] if score #9 nwbr_lot_score matches 3 run function newember_main_lottery:reward/special/09
execute as @s[tag=nwbr_special,tag=!nwbr_ultra] if score #10 nwbr_lot_score matches 3 run function newember_main_lottery:reward/special/10
execute as @s[tag=nwbr_special,tag=!nwbr_ultra] if score #11 nwbr_lot_score matches 3 run function newember_main_lottery:reward/special/11
execute as @s[tag=nwbr_special,tag=!nwbr_ultra] if score #12 nwbr_lot_score matches 3 run function newember_main_lottery:reward/special/12
execute as @s[tag=nwbr_special,tag=!nwbr_ultra] if score #13 nwbr_lot_score matches 3 run function newember_main_lottery:reward/special/13
execute as @s[tag=nwbr_special,tag=!nwbr_ultra] if score #14 nwbr_lot_score matches 3 run function newember_main_lottery:reward/special/14

# - ultra
execute as @s[tag=nwbr_special,tag=nwbr_ultra] if score #0 nwbr_lot_score matches 1.. run function newember_main_lottery:reward/special/ultra/00
execute as @s[tag=nwbr_special,tag=nwbr_ultra] if score #1 nwbr_lot_score matches 1.. if score #0 nwbr_lot_score matches 0 run function newember_main_lottery:reward/special/ultra/01
execute as @s[tag=nwbr_special,tag=nwbr_ultra] if score #2 nwbr_lot_score matches 3 run function newember_main_lottery:reward/special/ultra/02

# - stands
execute at @s[tag=nwbr_classic] run loot spawn ^-0.89 ^1.7 ^0.07 loot newember_main_lottery:stands/normal01
execute at @s[tag=nwbr_ender] run loot spawn ^-0.89 ^1.7 ^0.07 loot newember_main_lottery:stands/normal02
execute at @s[tag=nwbr_goldmine] run loot spawn ^-0.89 ^1.7 ^0.07 loot newember_main_lottery:stands/normal02
execute at @s[tag=nwbr_fancy] run loot spawn ^-0.89 ^1.7 ^0.07 loot newember_main_lottery:stands/normal03
execute at @s[tag=nwbr_special] run loot spawn ^-0.89 ^1.7 ^0.07 loot newember_main_lottery:stands/normal03

#======================== scoreboard ========================#
#classic
execute as @s[tag=nwbr_classic] if score #0 nwbr_lot_score matches 3 at @a if score @p nwbr_player_id = @s nwbr_player_id run scoreboard players add @p nwbr_lwin_cl00 1
execute as @s[tag=nwbr_classic] if score #1 nwbr_lot_score matches 3 at @a if score @p nwbr_player_id = @s nwbr_player_id run scoreboard players add @p nwbr_lwin_cl01 1
execute as @s[tag=nwbr_classic] if score #2 nwbr_lot_score matches 3 at @a if score @p nwbr_player_id = @s nwbr_player_id run scoreboard players add @p nwbr_lwin_cl02 1
execute as @s[tag=nwbr_classic] if score #3 nwbr_lot_score matches 3 at @a if score @p nwbr_player_id = @s nwbr_player_id run scoreboard players add @p nwbr_lwin_cl03 1
execute as @s[tag=nwbr_classic] if score #4 nwbr_lot_score matches 3 at @a if score @p nwbr_player_id = @s nwbr_player_id run scoreboard players add @p nwbr_lwin_cl04 1
execute as @s[tag=nwbr_classic] if score #5 nwbr_lot_score matches 3 at @a if score @p nwbr_player_id = @s nwbr_player_id run scoreboard players add @p nwbr_lwin_cl05 1
execute as @s[tag=nwbr_classic] if score #6 nwbr_lot_score matches 3 at @a if score @p nwbr_player_id = @s nwbr_player_id run scoreboard players add @p nwbr_lwin_cl06 1

#ender
execute as @s[tag=nwbr_ender] if score #0 nwbr_lot_score matches 3 at @a if score @p nwbr_player_id = @s nwbr_player_id run scoreboard players add @p nwbr_lwin_en00 1
execute as @s[tag=nwbr_ender] if score #1 nwbr_lot_score matches 3 at @a if score @p nwbr_player_id = @s nwbr_player_id run scoreboard players add @p nwbr_lwin_en01 1
execute as @s[tag=nwbr_ender] if score #2 nwbr_lot_score matches 3 at @a if score @p nwbr_player_id = @s nwbr_player_id run scoreboard players add @p nwbr_lwin_en02 1
execute as @s[tag=nwbr_ender] if score #3 nwbr_lot_score matches 3 at @a if score @p nwbr_player_id = @s nwbr_player_id run scoreboard players add @p nwbr_lwin_en03 1
execute as @s[tag=nwbr_ender] if score #4 nwbr_lot_score matches 3 at @a if score @p nwbr_player_id = @s nwbr_player_id run scoreboard players add @p nwbr_lwin_en04 1
execute as @s[tag=nwbr_ender] if score #5 nwbr_lot_score matches 3 at @a if score @p nwbr_player_id = @s nwbr_player_id run scoreboard players add @p nwbr_lwin_en05 1

#goldmine
execute as @s[tag=nwbr_goldmine] if score #0 nwbr_lot_score matches 3 at @a if score @p nwbr_player_id = @s nwbr_player_id run scoreboard players add @p nwbr_lwin_go00 1
execute as @s[tag=nwbr_goldmine] if score #1 nwbr_lot_score matches 3 at @a if score @p nwbr_player_id = @s nwbr_player_id run scoreboard players add @p nwbr_lwin_go01 1
execute as @s[tag=nwbr_goldmine] if score #2 nwbr_lot_score matches 3 at @a if score @p nwbr_player_id = @s nwbr_player_id run scoreboard players add @p nwbr_lwin_go02 1
execute as @s[tag=nwbr_goldmine] if score #3 nwbr_lot_score matches 3 at @a if score @p nwbr_player_id = @s nwbr_player_id run scoreboard players add @p nwbr_lwin_go03 1
execute as @s[tag=nwbr_goldmine] if score #4 nwbr_lot_score matches 3 at @a if score @p nwbr_player_id = @s nwbr_player_id run scoreboard players add @p nwbr_lwin_go04 1
execute as @s[tag=nwbr_goldmine] if score #5 nwbr_lot_score matches 3 at @a if score @p nwbr_player_id = @s nwbr_player_id run scoreboard players add @p nwbr_lmal_go05 1

#fancy
execute as @s[tag=nwbr_fancy] if score #0 nwbr_lot_score matches 3 at @a if score @p nwbr_player_id = @s nwbr_player_id run scoreboard players add @p nwbr_lwin_fa00 1
execute as @s[tag=nwbr_fancy] if score #1 nwbr_lot_score matches 3 at @a if score @p nwbr_player_id = @s nwbr_player_id run scoreboard players add @p nwbr_lwin_fa01 1
execute as @s[tag=nwbr_fancy] if score #2 nwbr_lot_score matches 3 at @a if score @p nwbr_player_id = @s nwbr_player_id run scoreboard players add @p nwbr_lwin_fa02 1
execute as @s[tag=nwbr_fancy] if score #3 nwbr_lot_score matches 3 at @a if score @p nwbr_player_id = @s nwbr_player_id run scoreboard players add @p nwbr_lwin_fa03 1
execute as @s[tag=nwbr_fancy] if score #4 nwbr_lot_score matches 3 at @a if score @p nwbr_player_id = @s nwbr_player_id run scoreboard players add @p nwbr_lwin_fa04 1
execute as @s[tag=nwbr_fancy] if score #5 nwbr_lot_score matches 3 at @a if score @p nwbr_player_id = @s nwbr_player_id run scoreboard players add @p nwbr_lwin_fa05 1
execute as @s[tag=nwbr_fancy] if score #6 nwbr_lot_score matches 3 at @a if score @p nwbr_player_id = @s nwbr_player_id run scoreboard players add @p nwbr_lwin_fa06 1
execute as @s[tag=nwbr_fancy] if score #7 nwbr_lot_score matches 3 at @a if score @p nwbr_player_id = @s nwbr_player_id run scoreboard players add @p nwbr_lwin_fa07 1

#special
execute as @s[tag=nwbr_special,tag=!nwbr_ultra] if score #0 nwbr_lot_score matches 3 at @a if score @p nwbr_player_id = @s nwbr_player_id run scoreboard players add @p nwbr_lwin_sp00 1
execute as @s[tag=nwbr_special,tag=!nwbr_ultra] if score #1 nwbr_lot_score matches 3 at @a if score @p nwbr_player_id = @s nwbr_player_id run scoreboard players add @p nwbr_lwin_sp01 1
execute as @s[tag=nwbr_special,tag=!nwbr_ultra] if score #2 nwbr_lot_score matches 3 at @a if score @p nwbr_player_id = @s nwbr_player_id run scoreboard players add @p nwbr_lwin_sp02 1
execute as @s[tag=nwbr_special,tag=!nwbr_ultra] if score #3 nwbr_lot_score matches 3 at @a if score @p nwbr_player_id = @s nwbr_player_id run scoreboard players add @p nwbr_lwin_sp03 1
execute as @s[tag=nwbr_special,tag=!nwbr_ultra] if score #4 nwbr_lot_score matches 3 at @a if score @p nwbr_player_id = @s nwbr_player_id run scoreboard players add @p nwbr_lwin_sp04 1
execute as @s[tag=nwbr_special,tag=!nwbr_ultra] if score #5 nwbr_lot_score matches 3 at @a if score @p nwbr_player_id = @s nwbr_player_id run scoreboard players add @p nwbr_lwin_sp05 1
execute as @s[tag=nwbr_special,tag=!nwbr_ultra] if score #6 nwbr_lot_score matches 3 at @a if score @p nwbr_player_id = @s nwbr_player_id run scoreboard players add @p nwbr_lwin_sp06 1
execute as @s[tag=nwbr_special,tag=!nwbr_ultra] if score #7 nwbr_lot_score matches 3 at @a if score @p nwbr_player_id = @s nwbr_player_id run scoreboard players add @p nwbr_lwin_sp07 1
execute as @s[tag=nwbr_special,tag=!nwbr_ultra] if score #8 nwbr_lot_score matches 3 at @a if score @p nwbr_player_id = @s nwbr_player_id run scoreboard players add @p nwbr_lwin_sp08 1
execute as @s[tag=nwbr_special,tag=!nwbr_ultra] if score #9 nwbr_lot_score matches 3 at @a if score @p nwbr_player_id = @s nwbr_player_id run scoreboard players add @p nwbr_lwin_sp09 1
execute as @s[tag=nwbr_special,tag=!nwbr_ultra] if score #10 nwbr_lot_score matches 3 at @a if score @p nwbr_player_id = @s nwbr_player_id run scoreboard players add @p nwbr_lwin_sp10 1
execute as @s[tag=nwbr_special,tag=!nwbr_ultra] if score #11 nwbr_lot_score matches 3 at @a if score @p nwbr_player_id = @s nwbr_player_id run scoreboard players add @p nwbr_lwin_sp11 1
execute as @s[tag=nwbr_special,tag=!nwbr_ultra] if score #12 nwbr_lot_score matches 3 at @a if score @p nwbr_player_id = @s nwbr_player_id run scoreboard players add @p nwbr_lwin_sp12 1
execute as @s[tag=nwbr_special,tag=!nwbr_ultra] if score #13 nwbr_lot_score matches 3 at @a if score @p nwbr_player_id = @s nwbr_player_id run scoreboard players add @p nwbr_lwin_sp13 1
execute as @s[tag=nwbr_special,tag=!nwbr_ultra] if score #14 nwbr_lot_score matches 3 at @a if score @p nwbr_player_id = @s nwbr_player_id run scoreboard players add @p nwbr_lwin_sp14 1

# - ultra
execute as @s[tag=nwbr_special,tag=nwbr_ultra] if score #0 nwbr_lot_score matches 1.. at @a if score @p nwbr_player_id = @s nwbr_player_id run scoreboard players add @p nwbr_lwin_spx00 1
execute as @s[tag=nwbr_special,tag=nwbr_ultra] if score #1 nwbr_lot_score matches 1.. if score #0 nwbr_lot_score matches 0 at @a if score @p nwbr_player_id = @s nwbr_player_id run scoreboard players add @p nwbr_lwin_spx01 1
execute as @s[tag=nwbr_special,tag=nwbr_ultra] if score #2 nwbr_lot_score matches 3 at @a if score @p nwbr_player_id = @s nwbr_player_id run scoreboard players add @p nwbr_lwin_spx02 1

#tellraw
execute at @a if score @p nwbr_player_id = @s nwbr_player_id run function newember_main_lottery:reward/main_tellraw

#steal protect
execute as @s[tag=has_reward] at @s positioned ^-0.89 ^1.7 ^0.07 run function newember_main_lottery:steal_protect/init
