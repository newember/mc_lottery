execute if score @s nwbr_lot_score matches 0 run data merge entity @s {HandItems:[{},{id:"minecraft:diamond",Count:1b}]}
execute if score @s nwbr_lot_score matches 1 run data merge entity @s {HandItems:[{},{id:"minecraft:end_crystal",Count:1b}]}
execute if score @s nwbr_lot_score matches 2..3 run data merge entity @s {HandItems:[{},{id:"minecraft:nether_star",Count:1b}]}
