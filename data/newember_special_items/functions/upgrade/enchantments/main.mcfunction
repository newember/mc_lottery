execute if entity @s[predicate=newember_special_items:item/upgrade/current/enchantments/sharpness] run scoreboard players set @s nwbr_math2 1
execute if entity @s[predicate=newember_special_items:item/upgrade/current/enchantments/unbreaking] run scoreboard players set @s nwbr_math2 2
execute store result score @s nwbr_math3 run data get entity @s Item.tag.nwbr_upgrade.current.from

execute store result score @e[type=minecraft:item,limit=1,sort=nearest] nwbr_number if data entity @e[type=minecraft:item,limit=1,sort=nearest] Item.tag.Enchantments[]
function newember_special_items:upgrade/enchantments/main_recursive
#id ench:
#1: sharpness
#2: unbreaking
