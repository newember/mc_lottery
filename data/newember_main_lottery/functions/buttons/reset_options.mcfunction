########## button reset ##########
execute as @s[tag=nwbr_east,tag=!nwbr_special,tag=!nwbr_skin] run setblock ~ ~ ~ minecraft:crimson_button[facing=west]
execute as @s[tag=nwbr_north,tag=!nwbr_special,tag=!nwbr_skin] run setblock ~ ~ ~ minecraft:crimson_button[facing=south]
execute as @s[tag=nwbr_west,tag=!nwbr_special,tag=!nwbr_skin] run setblock ~ ~ ~ minecraft:crimson_button[facing=east]
execute as @s[tag=nwbr_south,tag=!nwbr_special,tag=!nwbr_skin] run setblock ~ ~ ~ minecraft:crimson_button[facing=north]

execute as @s[tag=nwbr_east,tag=nwbr_special] run setblock ~ ~ ~ minecraft:polished_blackstone_button[facing=west]
execute as @s[tag=nwbr_north,tag=nwbr_special] run setblock ~ ~ ~ minecraft:polished_blackstone_button[facing=south]
execute as @s[tag=nwbr_west,tag=nwbr_special] run setblock ~ ~ ~ minecraft:polished_blackstone_button[facing=east]
execute as @s[tag=nwbr_south,tag=nwbr_special] run setblock ~ ~ ~ minecraft:polished_blackstone_button[facing=north]

execute as @s[tag=nwbr_east,tag=nwbr_skin] run setblock ~ ~ ~ minecraft:birch_button[facing=west]
execute as @s[tag=nwbr_north,tag=nwbr_skin] run setblock ~ ~ ~ minecraft:birch_button[facing=south]
execute as @s[tag=nwbr_west,tag=nwbr_skin] run setblock ~ ~ ~ minecraft:birch_button[facing=east]
execute as @s[tag=nwbr_south,tag=nwbr_skin] run setblock ~ ~ ~ minecraft:birch_button[facing=north]

kill @e[type=minecraft:arrow,distance=..1.3]
kill @e[type=minecraft:spectral_arrow,distance=..1.3]
