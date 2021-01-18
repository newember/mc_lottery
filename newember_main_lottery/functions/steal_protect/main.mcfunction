execute as @e[tag=nwbr_stl_protect,type=minecraft:item] at @s unless entity @p[distance=..32] run data merge entity @s {PickupDelay:-1s,Item:{tag:{nwbr_stl_protect:1b}}}
execute as @e[tag=nwbr_stl_protect,type=minecraft:item] at @s unless score @p nwbr_player_id = @s nwbr_player_id run data merge entity @s {PickupDelay:-1s,Item:{tag:{nwbr_stl_protect:1b}}}
execute as @e[tag=nwbr_stl_protect,type=minecraft:item,nbt={PickupDelay:-1s}] at @s if score @p nwbr_player_id = @s nwbr_player_id run data remove entity @s Item.tag.nwbr_stl_protect
execute as @e[tag=nwbr_stl_protect,type=minecraft:item,nbt={PickupDelay:-1s}] at @s if score @p nwbr_player_id = @s nwbr_player_id run data merge entity @s {PickupDelay:40s}
clear @a #newember_basics:all{nwbr_stl_protect:1b}
