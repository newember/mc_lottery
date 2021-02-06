scoreboard players set @e[type=minecraft:item,limit=1,sort=nearest] nwbr_animation 0
scoreboard players set @e[type=minecraft:item,limit=1,sort=nearest] nwbr_anim_endtmp 20
tag @e[type=minecraft:item,limit=1,sort=nearest] add nwbr_animation
execute if entity @s[predicate=newember_special_items:item/upgrade/before/enchantments/sharpness] run tag @e[type=minecraft:item,limit=1,sort=nearest] add nwbr_circles_red
execute if entity @s[predicate=newember_special_items:item/upgrade/before/enchantments/unbreaking] run tag @e[type=minecraft:item,limit=1,sort=nearest] add nwbr_circles_gray
