scoreboard players add max_id nwbr_lot_id 1
scoreboard players operation @s nwbr_lot_id = max_id nwbr_lot_id
execute positioned ^ ^ ^-1 run scoreboard players operation @e[tag=nwbr_disp_lot,distance=..0.1] nwbr_lot_id = max_id nwbr_lot_id
execute positioned ^ ^ ^1 run scoreboard players operation @e[tag=nwbr_disp_lot,distance=..0.1] nwbr_lot_id = max_id nwbr_lot_id
