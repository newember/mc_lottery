execute store result score @s nwbr_number run data get entity @s Item.Count
execute store result entity @s Item.Count int 1 run scoreboard players remove @s nwbr_number 1
execute if score @s nwbr_number matches 0 run kill @s
