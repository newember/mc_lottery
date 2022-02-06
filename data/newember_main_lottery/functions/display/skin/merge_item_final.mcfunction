execute if score @s nwbr_lot_score matches 0..1 run data merge entity @s {HandItems:[{},{id:"minecraft:coal",Count:1b}]}
execute if score @s nwbr_lot_score matches 2..9 run data merge entity @s {HandItems:[{},{id:"minecraft:emerald",Count:1b}]}
execute if score @s nwbr_lot_score matches 10..15 run data merge entity @s {HandItems:[{},{id:"minecraft:diamond",Count:1b}]}
execute if score @s nwbr_lot_score matches 16..19 run data merge entity @s {HandItems:[{},{id:"minecraft:amethyst_shard",Count:1b}]}
execute if score @s nwbr_lot_score matches 20..24 run data merge entity @s {HandItems:[{},{id:"minecraft:nether_star",Count:1b}]}
execute if score @s nwbr_lot_score matches 25..34 run data merge entity @s {HandItems:[{},{id:"minecraft:redstone",Count:1b}]}
