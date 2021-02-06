data modify entity @s Item.tag.nwbr_upgrade.current set from entity @s Item.tag.nwbr_upgrade.list[0]
execute if entity @s[predicate=newember_special_items:item/upgrade/current/enchantments/main] at @e[limit=1,type=minecraft:item,predicate=!newember_special_items:item/upgrade/main,distance=..0.5] run function newember_special_items:upgrade/enchantments/main
data modify entity @s Item.tag.nwbr_upgrade.list append from entity @s Item.tag.nwbr_upgrade.list[0]
data remove entity @s Item.tag.nwbr_upgrade.list[0]
scoreboard players remove @s nwbr_math 1
execute if score @s nwbr_math matches 1.. run function newember_special_items:upgrade/main_recursive
