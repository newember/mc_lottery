execute at @s[tag=nwbr_south] in newember_ultra_vfx:red positioned ~ 5 ~ run function newember_main_lottery:spawn/summon/armorstand/stand_south
execute at @s[tag=nwbr_west] in newember_ultra_vfx:red positioned ~ 5 ~ run function newember_main_lottery:spawn/summon/armorstand/stand_west
execute at @s[tag=nwbr_north] in newember_ultra_vfx:red positioned ~ 5 ~ run function newember_main_lottery:spawn/summon/armorstand/stand_north
execute at @s[tag=nwbr_east] in newember_ultra_vfx:red positioned ~ 5 ~ run function newember_main_lottery:spawn/summon/armorstand/stand_east
execute in newember_ultra_vfx:red positioned ~ 5 ~ run tag @e[distance=..2.5,tag=nwbr_disp_lot] add nwbr_disp_sec
execute in newember_ultra_vfx:red positioned ~ 5 ~ run tag @e[distance=..2.5,tag=nwbr_disp_lot] remove nwbr_lot_main
execute in newember_ultra_vfx:red positioned ~ 5 ~ run tag @e[distance=..2.5,tag=nwbr_disp_lot] remove nwbr_disp_lot
execute in newember_ultra_vfx:red positioned ~ 5 ~ run clone ^-1 ^ ^1 ^-1 ^ ^1 ^-1 ^ ^0 replace move
execute in newember_ultra_vfx:red positioned ~ 5 ~ run setblock ^-1 ^ ^-1 air replace
