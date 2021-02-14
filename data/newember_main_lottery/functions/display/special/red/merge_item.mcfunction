execute if score @s nwbr_no_itm_disp matches 0..4 run data merge entity @s {HandItems:[{},{id:"minecraft:potion",Count:1b,tag:{Potion: "minecraft:strength"}}]}
execute if score @s nwbr_no_itm_disp matches 5..9 run data merge entity @s {HandItems:[{},{id:"minecraft:enchanted_book",Count:1b}]}
execute if score @s nwbr_no_itm_disp matches 10..14 run data merge entity @s {HandItems:[{},{id:"minecraft:apple",Count:1b}]}
execute if score @s nwbr_no_itm_disp matches 15..19 run data merge entity @s {HandItems:[{},{id:"minecraft:gunpowder",Count:1b}]}
execute if score @s nwbr_no_itm_disp matches 20..24 run data merge entity @s {HandItems:[{},{id:"minecraft:totem_of_undying",Count:1b}]}
