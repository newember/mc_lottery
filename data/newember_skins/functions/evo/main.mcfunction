scoreboard players set @a nwbr_sk_prog2add 0
#progress
execute as @a run scoreboard players operation @s nwbr_damage_dT -= @s nwbr_damage_done
execute as @a run scoreboard players operation @s nwbr_damage_dT *= #-1 nwbr_number
execute as @a run scoreboard players operation @s nwbr_flyT -= @s nwbr_fly
execute as @a run scoreboard players operation @s nwbr_flyT *= #-1 nwbr_number
execute as @a run scoreboard players operation @s nwbr_bow_usedT -= @s nwbr_bow_used
execute as @a run scoreboard players operation @s nwbr_bow_usedT *= #-1 nwbr_number


#test progression
execute as @a if predicate newember_skins:evolution_type/melee_attacks unless score @s nwbr_damage_dT matches 0 run scoreboard players operation @s nwbr_sk_prog2add = @s nwbr_damage_dT
execute as @a if predicate newember_skins:evolution_type/elytra_fly unless score @s nwbr_flyT matches 0 run scoreboard players operation @s nwbr_sk_prog2add = @s nwbr_flyT
execute as @a if predicate newember_skins:evolution_type/bow_used unless score @s nwbr_bow_usedT matches 0 run scoreboard players operation @s nwbr_sk_prog2add = @s nwbr_bow_usedT

#store progression
execute as @a unless score @s nwbr_sk_prog2add matches 0 run function newember_skins:evo/store

#test level progression
execute as @a store result score @s nwbr_math run data get entity @s SelectedItem.tag.nbrData.skinProgress
execute as @a store result score @s nwbr_math2 run data get entity @s SelectedItem.tag.nbrData.skinLevel
execute as @a store result score @s nwbr_math4 run data get entity @s SelectedItem.tag.nbrData.skinMaxLevel
execute as @a if predicate newember_skins:evolution_type/melee_attacks run scoreboard players set @s nwbr_math3 6000
execute as @a if predicate newember_skins:evolution_type/elytra_fly run scoreboard players set @s nwbr_math3 150000
execute as @a if predicate newember_skins:evolution_type/bow_used run scoreboard players set @s nwbr_math3 50
execute as @a[scores={nwbr_math2=2}] run scoreboard players operation @s nwbr_math3 *= #3 nwbr_number
execute as @a[scores={nwbr_math2=3}] run scoreboard players operation @s nwbr_math3 *= #6 nwbr_number
execute as @a[scores={nwbr_math2=4}] run scoreboard players operation @s nwbr_math3 *= #10 nwbr_number
execute as @a[scores={nwbr_math2=5}] run scoreboard players operation @s nwbr_math3 *= #15 nwbr_number
execute as @a unless score @s nwbr_math4 = @s nwbr_math2 if score @s nwbr_math >= @s nwbr_math3 run function newember_skins:evo/upgrade/main

#reset
execute as @a run scoreboard players operation @s nwbr_damage_dT = @s nwbr_damage_done
execute as @a run scoreboard players operation @s nwbr_flyT = @s nwbr_fly
execute as @a run scoreboard players operation @s nwbr_bow_usedT = @s nwbr_bow_used
