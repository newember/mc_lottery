execute if score @s nwbr_no_itm_disp matches 0..4 run data merge entity @s {HandItems:[{},{id:"minecraft:diamond",Count:1b}]}
execute if score @s nwbr_no_itm_disp matches 5..9 run data merge entity @s {HandItems:[{},{id:"minecraft:nether_star",Count:1b}]}
execute if score @s nwbr_no_itm_disp matches 10..14 run data merge entity @s {HandItems:[{},{id:"minecraft:end_crystal",Count:1b}]}
execute if score @s nwbr_no_itm_disp matches 15..19 run data merge entity @s {HandItems:[{},{id:"minecraft:nether_star",Count:1b}]}
