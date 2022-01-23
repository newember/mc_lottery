execute if score @s nwbr_lot_score matches 0..2 run data merge entity @s {HandItems:[{},{id:"minecraft:coal",Count:1b}]}
execute if score @s nwbr_lot_score matches 3..8 run data merge entity @s {HandItems:[{},{id:"minecraft:emerald",Count:1b}]}
execute if score @s nwbr_lot_score matches 9..13 run data merge entity @s {HandItems:[{},{id:"minecraft:diamond",Count:1b}]}
execute if score @s nwbr_lot_score matches 14..17 run data merge entity @s {HandItems:[{},{id:"minecraft:amethyst_shard",Count:1b}]}
execute if score @s nwbr_lot_score matches 18..24 run data merge entity @s {HandItems:[{},{id:"minecraft:nether_star",Count:1b}]}
execute if score @s nwbr_lot_score matches 25..34 run data merge entity @s {HandItems:[{},{id:"minecraft:redstone",Count:1b}]}
