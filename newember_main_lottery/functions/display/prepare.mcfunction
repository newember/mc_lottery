scoreboard players operation @e[distance=..1.5,tag=nwbr_disp_lot,scores={nwbr_lot_score=-1}] nwbr_no_itm_disp += @s nwbr_lot_timer
execute as @e[distance=..1.5,tag=nwbr_disp_lot,limit=1,sort=random,scores={nwbr_lot_score=-1}] as @s[tag=nwbr_lot_main] run scoreboard players add @s nwbr_no_itm_disp 1
execute as @e[distance=..1.5,tag=nwbr_disp_lot,limit=1,sort=random,scores={nwbr_lot_score=-1}] as @s[tag=nwbr_lot_right] run scoreboard players add @s nwbr_no_itm_disp 2

execute as @s[tag=nwbr_classic] run scoreboard players operation @e[distance=..1.5,tag=nwbr_disp_lot,scores={nwbr_lot_score=-1}] nwbr_no_itm_disp %= #35 nwbr_number
execute as @s[tag=nwbr_ender] run scoreboard players operation @e[distance=..1.5,tag=nwbr_disp_lot,scores={nwbr_lot_score=-1}] nwbr_no_itm_disp %= #30 nwbr_number
execute as @s[tag=nwbr_goldmine] run scoreboard players operation @e[distance=..1.5,tag=nwbr_disp_lot,scores={nwbr_lot_score=-1}] nwbr_no_itm_disp %= #30 nwbr_number
execute as @s[tag=nwbr_fancy] run scoreboard players operation @e[distance=..1.5,tag=nwbr_disp_lot,scores={nwbr_lot_score=-1}] nwbr_no_itm_disp %= #40 nwbr_number
execute as @s[tag=nwbr_special,tag=!nwbr_ultra,tag=!nwbr_xred] run scoreboard players operation @e[distance=..1.5,tag=nwbr_disp_lot,scores={nwbr_lot_score=-1}] nwbr_no_itm_disp %= #75 nwbr_number
execute as @s[tag=nwbr_special,tag=nwbr_ultra] run scoreboard players operation @e[distance=..1.5,tag=nwbr_disp_lot,scores={nwbr_lot_score=-1}] nwbr_no_itm_disp %= #20 nwbr_number
execute as @s[tag=nwbr_special,tag=nwbr_xred] run scoreboard players operation @e[distance=..1.5,tag=nwbr_disp_lot,scores={nwbr_lot_score=-1}] nwbr_no_itm_disp %= #25 nwbr_number

execute as @s[tag=nwbr_classic] as @e[distance=..1.5,tag=nwbr_disp_lot,scores={nwbr_lot_score=-1}] run function newember_main_lottery:display/classic/merge_item
execute as @s[tag=nwbr_ender] as @e[distance=..1.5,tag=nwbr_disp_lot,scores={nwbr_lot_score=-1}] run function newember_main_lottery:display/ender/merge_item
execute as @s[tag=nwbr_goldmine] as @e[distance=..1.5,tag=nwbr_disp_lot,scores={nwbr_lot_score=-1}] run function newember_main_lottery:display/goldmine/merge_item
execute as @s[tag=nwbr_fancy] as @e[distance=..1.5,tag=nwbr_disp_lot,scores={nwbr_lot_score=-1}] run function newember_main_lottery:display/fancy/merge_item
execute as @s[tag=nwbr_special,tag=!nwbr_ultra,tag=!nwbr_xred] as @e[distance=..1.5,tag=nwbr_disp_lot,scores={nwbr_lot_score=-1}] run function newember_main_lottery:display/special/merge_item
execute as @s[tag=nwbr_special,tag=nwbr_ultra] as @e[distance=..1.5,tag=nwbr_disp_lot,scores={nwbr_lot_score=-1}] run function newember_main_lottery:display/special/ultra/merge_item
execute as @s[tag=nwbr_special,tag=nwbr_xred] as @e[distance=..1.5,tag=nwbr_disp_lot,scores={nwbr_lot_score=-1}] run function newember_main_lottery:display/special/red/merge_item
scoreboard players operation @e[distance=..1.5,tag=nwbr_disp_lot,scores={nwbr_lot_score=-1}] nwbr_no_itm_disp -= @s nwbr_lot_timer
