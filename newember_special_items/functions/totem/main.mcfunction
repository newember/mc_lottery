scoreboard players add @a[tag=nwbr_totem] nwbr_totem 1
execute as @a[tag=nwbr_totem_cursed] if score @s nwbr_totem matches 2.. at @s run function newember_special_items:totem/cursed_lvl1_effects
execute as @a[tag=nwbr_totem_strength] if score @s nwbr_totem matches 2.. at @s run function newember_special_items:totem/strength_lvl1_effects
