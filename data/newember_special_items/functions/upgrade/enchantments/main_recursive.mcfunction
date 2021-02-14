execute as @e[type=minecraft:item,limit=1,sort=nearest] store result score @s nwbr_math3 run data get entity @s Item.tag.Enchantments[0].lvl
data modify entity @s Item.tag.nwbr_upgrade.before set value {data:{}}
data modify entity @s Item.tag.nwbr_upgrade.before.data set from entity @e[type=minecraft:item,limit=1,sort=nearest] Item.tag.Enchantments[0].id

execute if entity @s[predicate=newember_special_items:item/upgrade/before/enchantments/sharpness] run scoreboard players set @e[type=minecraft:item,limit=1,sort=nearest] nwbr_math2 1
execute if entity @s[predicate=newember_special_items:item/upgrade/before/enchantments/unbreaking] run scoreboard players set @e[type=minecraft:item,limit=1,sort=nearest] nwbr_math2 2

execute if score @s nwbr_math2 = @e[type=minecraft:item,limit=1,sort=nearest] nwbr_math2 if score @s nwbr_math3 = @e[type=minecraft:item,limit=1,sort=nearest] nwbr_math3 run function newember_special_items:upgrade/enchantments/vfx_init
execute if score @s nwbr_math2 = @e[type=minecraft:item,limit=1,sort=nearest] nwbr_math2 if score @s nwbr_math3 = @e[type=minecraft:item,limit=1,sort=nearest] nwbr_math3 run scoreboard players add @s nwbr_number 1
execute if score @s nwbr_math2 = @e[type=minecraft:item,limit=1,sort=nearest] nwbr_math2 if score @s nwbr_math3 = @e[type=minecraft:item,limit=1,sort=nearest] nwbr_math3 run data modify entity @e[type=minecraft:item,limit=1,sort=nearest] Item.tag.Enchantments[0].lvl set from entity @s Item.tag.nwbr_upgrade.current.to

execute as @e[type=minecraft:item,limit=1,sort=nearest] run data modify entity @s Item.tag.Enchantments append from entity @s Item.tag.Enchantments[0]
execute as @e[type=minecraft:item,limit=1,sort=nearest] run data remove entity @s Item.tag.Enchantments[0]
scoreboard players remove @e[type=minecraft:item,limit=1,sort=nearest] nwbr_number 1
execute if score @e[type=minecraft:item,limit=1,sort=nearest] nwbr_number matches 1.. run function newember_special_items:upgrade/enchantments/main_recursive
