execute store result score @s nwbr_math run data get entity @s Inventory[{Slot:-106b}].tag.nbrData.skinProgress
execute store result score @s nwbr_math2 run data get entity @s Inventory[{Slot:-106b}].tag.nbrData.skinLevel
execute store result score @s nwbr_math4 run data get entity @s Inventory[{Slot:-106b}].tag.nbrData.skinMaxLevel
scoreboard players set @s nwbr_math3 -1
execute if predicate newember_skins:evolution_type/arrow_hit_offhand run scoreboard players set @s nwbr_math3 50
execute unless score @s nwbr_math3 matches -1 run function newember_skins:evo/upgrade/multiply_step
execute unless score @s nwbr_math3 matches -1 unless score @s nwbr_math2 matches 0 unless score @s nwbr_math4 = @s nwbr_math2 if score @s nwbr_math >= @s nwbr_math3 run function newember_skins:evo/upgrade/offhand