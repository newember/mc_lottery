scoreboard players set @a[tag=!nwbr_360] nwbr_360_score 0
execute as @a[predicate=newember_special_items:holding/modifiers/360mlg/lvl1,tag=!nwbr_360] store result score @s nwbr_360_rotated run data get entity @s Rotation[0]
execute as @a[predicate=newember_special_items:holding/modifiers/360mlg/lvl1,tag=!nwbr_360] run function newember_basics:effect/fetch/strength
execute as @a[predicate=newember_special_items:holding/modifiers/360mlg/lvl1,tag=!nwbr_360] run scoreboard players operation @s nwbr_360_bonus = @s nwbr_effect_05ST
execute as @a[predicate=newember_special_items:holding/modifiers/360mlg/lvl1,tag=!nwbr_360] run tag @s add nwbr_360
execute as @a[predicate=!newember_special_items:holding/modifiers/360mlg/lvl1,tag=nwbr_360] run tag @s remove nwbr_360

execute as @a[tag=nwbr_360] store result score @s nwbr_number run data get entity @s Rotation[0]
execute as @a[tag=nwbr_360] run scoreboard players operation @s nwbr_math = @s nwbr_360_delta
execute as @a[tag=nwbr_360] run scoreboard players operation @s nwbr_360_delta = @s nwbr_360_rotated
execute as @a[tag=nwbr_360] run scoreboard players operation @s nwbr_360_delta -= @s nwbr_number
execute as @a[tag=nwbr_360] run scoreboard players operation @s nwbr_number = @s nwbr_360_delta

execute as @a[tag=nwbr_360] if score @s nwbr_360_delta matches 180.. if score @s nwbr_math matches ..0 run scoreboard players operation @s nwbr_number = #-360 nwbr_number
execute as @a[tag=nwbr_360] if score @s nwbr_360_delta matches 180.. if score @s nwbr_math matches ..0 run scoreboard players operation @s nwbr_number += @s nwbr_360_delta
execute as @a[tag=nwbr_360] if score @s nwbr_360_delta matches ..-180 if score @s nwbr_math matches 0.. run scoreboard players operation @s nwbr_number = #360 nwbr_number
execute as @a[tag=nwbr_360] if score @s nwbr_360_delta matches ..-180 if score @s nwbr_math matches 0.. run scoreboard players operation @s nwbr_number += @s nwbr_360_delta
execute as @a[tag=nwbr_360] run scoreboard players operation @s nwbr_360_delta = @s nwbr_number
execute as @a[tag=nwbr_360] store result score @s nwbr_360_rotated run data get entity @s Rotation[0]

execute at @a[tag=nwbr_360] if block ~-0.3 ~-0.01 ~-0.3 #newember_basics:air if block ~0.3 ~-0.01 ~-0.3 #newember_basics:air if block ~0.3 ~-0.01 ~0.3 #newember_basics:air if block ~-0.3 ~-0.01 ~0.3 #newember_basics:air if block ~-0.3 ~1.79 ~-0.3 #newember_basics:air if block ~0.3 ~1.79 ~-0.3 #newember_basics:air if block ~0.3 ~1.79 ~0.3 #newember_basics:air if block ~-0.3 ~1.79 ~0.3 #newember_basics:air if block ~-0.3 ~0.5 ~-0.3 #newember_basics:air if block ~0.3 ~0.5 ~-0.3 #newember_basics:air if block ~0.3 ~0.5 ~0.3 #newember_basics:air if block ~-0.3 ~0.5 ~0.3 #newember_basics:air run tag @p add nwbr_in_air
execute as @a[tag=nwbr_360,tag=nwbr_in_air] run scoreboard players operation @s nwbr_360_score += @s nwbr_360_delta

execute as @a[tag=nwbr_360,scores={nwbr_360_bonus=0}] run function newember_special_items:abilities/weapons/360_no_scope/effect_base
execute as @a[tag=nwbr_360,scores={nwbr_360_bonus=1}] run function newember_special_items:abilities/weapons/360_no_scope/effect_bonus1
execute as @a[tag=nwbr_360,scores={nwbr_360_bonus=2}] run function newember_special_items:abilities/weapons/360_no_scope/effect_bonus2
execute as @a[tag=nwbr_360,scores={nwbr_360_bonus=3}] run function newember_special_items:abilities/weapons/360_no_scope/effect_bonus3
execute as @a[tag=nwbr_360,scores={nwbr_360_bonus=4}] run function newember_special_items:abilities/weapons/360_no_scope/effect_bonus4
execute as @a[tag=nwbr_360,scores={nwbr_360_bonus=5..}] run function newember_special_items:abilities/weapons/360_no_scope/effect_bonus5

scoreboard players set @a[tag=nwbr_360,tag=!nwbr_in_air] nwbr_360_score 0
#scoreboard players remove @a[tag=!nwbr_in_air,scores={nwbr_360_score=180..}] nwbr_360_score 18
#scoreboard players add @a[tag=!nwbr_in_air,scores={nwbr_360_score=..-180}] nwbr_360_score 18
tag @a[tag=nwbr_in_air] remove nwbr_in_air
