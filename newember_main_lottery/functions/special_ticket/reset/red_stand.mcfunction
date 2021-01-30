execute in newember_ultra_vfx:red positioned ~ 5 ~ run fill ^-1 ^ ^1 ^ ^2 ^-1 air
execute in newember_ultra_vfx:red positioned ~ 5 ~ run kill @e[distance=..2.5,tag=nwbr_disp_sec]

fill ^-1 ^1 ^1 ^ ^1 ^-1 minecraft:crying_obsidian replace minecraft:nether_wart_block
fill ^-1 ^2 ^1 ^ ^2 ^-1 minecraft:lime_stained_glass replace minecraft:red_stained_glass
fill ^-1 ^3 ^1 ^ ^3 ^-1 minecraft:purple_carpet replace minecraft:red_carpet


execute if score @s chk_frc_loaded_d matches 0 in newember_ultra_vfx:red run forceload remove ~ ~
execute if score @s chk_frc_loaded matches 0 run forceload remove ~ ~
