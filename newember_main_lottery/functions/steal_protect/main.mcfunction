execute as @e[tag=nwbr_stl_protect,type=minecraft:item] at @s if score @p[distance=..1] nwbr_player_id = @s nwbr_player_id run data merge entity @s {PickupDelay:0}
execute as @e[tag=nwbr_stl_protect,type=minecraft:item] at @s if score @p[distance=..1] nwbr_player_id = @s nwbr_player_id run data remove entity @s Item.tag.nwbr_stl_protect
execute as @e[tag=nwbr_stl_protect,type=minecraft:item] at @s unless score @p[distance=..1] nwbr_player_id = @s nwbr_player_id run data merge entity @s {PickupDelay:-1,Item:{tag:{nwbr_stl_protect:1b}}}
execute as @e[tag=nwbr_stl_protect,type=minecraft:item] at @s unless entity @p[distance=..1] run data merge entity @s {PickupDelay:-1,Item:{tag:{nwbr_stl_protect:1b}}}
clear @a #newember_basics:all{nwbr_stl_protect:1b}
