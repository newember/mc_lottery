execute if score @s nwbr_lot_score matches 0 run data merge entity @s {HandItems:[{},{id:"minecraft:potion",Count:1b,tag:{Potion: "minecraft:strength"}}]}
execute if score @s nwbr_lot_score matches 1 run data merge entity @s {HandItems:[{},{id:"minecraft:enchanted_book",Count:1b}]}
execute if score @s nwbr_lot_score matches 2 run data merge entity @s {HandItems:[{},{id:"minecraft:apple",Count:1b}]}
execute if score @s nwbr_lot_score matches 3 run data merge entity @s {HandItems:[{},{id:"minecraft:gunpowder",Count:1b}]}
execute if score @s nwbr_lot_score matches 4 run data merge entity @s {HandItems:[{},{id:"minecraft:totem_of_undying",Count:1b}]}
