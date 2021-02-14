tag @e remove nwbr_misfortune_fullset
execute as @e[predicate=newember_special_items:entity/hostile_or_player] if predicate newember_special_items:armor/element/misfortune/helmet if predicate newember_special_items:armor/element/misfortune/chestplate if predicate newember_special_items:armor/element/misfortune/leggings if predicate newember_special_items:armor/element/misfortune/boots if predicate newember_special_items:holding/element/misfortune run tag @s add nwbr_misfortune_fullset
execute as @e[tag=nwbr_misfortune_fullset] run function newember_basics:effect/fetch/luck
execute as @e[tag=nwbr_misfortune_fullset] run function newember_special_items:fetch/level/lowest

# (nwbr_math = lowest)
execute at @e[tag=nwbr_misfortune_fullset,scores={nwbr_math=1}] run effect give @a[distance=0.1..20] minecraft:unluck 900 0 false
execute at @e[tag=nwbr_misfortune_fullset,scores={nwbr_math=2}] run effect give @a[distance=0.1..20] minecraft:unluck 900 1 false
execute at @e[tag=nwbr_misfortune_fullset,scores={nwbr_math=3..}] run effect give @a[distance=0.1..20] minecraft:unluck 900 2 false
effect give @e[tag=nwbr_misfortune_fullset,scores={nwbr_math=1}] minecraft:unluck 13 0 true
effect give @e[tag=nwbr_misfortune_fullset,scores={nwbr_math=2}] minecraft:unluck 13 1 true
effect give @e[tag=nwbr_misfortune_fullset,scores={nwbr_math=3..}] minecraft:unluck 13 2 true
effect give @e[tag=nwbr_misfortune_fullset,scores={nwbr_math=1}] minecraft:resistance 13 0 true
effect give @e[tag=nwbr_misfortune_fullset,scores={nwbr_math=2}] minecraft:resistance 13 1 true
effect give @e[tag=nwbr_misfortune_fullset,scores={nwbr_math=3..}] minecraft:resistance 13 2 true

execute as @e[tag=nwbr_misfortune_fullset] run scoreboard players operation @s nwbr_math *= @s nwbr_effect_26LK
effect give @e[type=minecraft:player,tag=nwbr_misfortune_fullset,scores={nwbr_math=1}] minecraft:poison 5 0
effect give @e[type=minecraft:player,tag=nwbr_misfortune_fullset,scores={nwbr_math=2}] minecraft:poison 5 1
effect give @e[type=minecraft:player,tag=nwbr_misfortune_fullset,scores={nwbr_math=3..}] minecraft:poison 5 2
effect give @e[type=minecraft:player,tag=nwbr_misfortune_fullset,scores={nwbr_math=4..5}] minecraft:wither 5 0
effect give @e[type=minecraft:player,tag=nwbr_misfortune_fullset,scores={nwbr_math=6..8}] minecraft:wither 5 1
effect give @e[type=minecraft:player,tag=nwbr_misfortune_fullset,scores={nwbr_math=9..}] minecraft:wither 5 2
