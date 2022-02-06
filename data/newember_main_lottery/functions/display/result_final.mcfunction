execute as @s[tag=nwbr_classic] as @e[distance=..1.5,tag=nwbr_disp_lot] run function newember_main_lottery:display/classic/merge_item_final
execute as @s[tag=nwbr_ender] as @e[distance=..1.5,tag=nwbr_disp_lot] run function newember_main_lottery:display/ender/merge_item_final
execute as @s[tag=nwbr_goldmine] as @e[distance=..1.5,tag=nwbr_disp_lot] run function newember_main_lottery:display/goldmine/merge_item_final
execute as @s[tag=nwbr_fancy] as @e[distance=..1.5,tag=nwbr_disp_lot] run function newember_main_lottery:display/fancy/merge_item_final
execute as @s[tag=nwbr_skin] as @e[distance=..1.5,tag=nwbr_disp_lot] run function newember_main_lottery:display/skin/merge_item_final
execute as @s[tag=nwbr_special,tag=!nwbr_ultra,tag=!nwbr_xred] as @e[distance=..1.5,tag=nwbr_disp_lot] run function newember_main_lottery:display/special/merge_item_final
execute as @s[tag=nwbr_special,tag=nwbr_ultra] as @e[distance=..1.5,tag=nwbr_disp_lot] run function newember_main_lottery:display/special/ultra/merge_item_final
execute as @s[tag=nwbr_special,tag=nwbr_xred] as @e[distance=..1.5,tag=nwbr_disp_lot] run function newember_main_lottery:display/special/red/merge_item_final
