scoreboard players set @s nwbr_step_01 0
scoreboard players set @s nwbr_step_02 100
scoreboard players set @s nwbr_step_03 120
scoreboard players set @s nwbr_step_04 140
scoreboard players set @s nwbr_step_05 150
scoreboard players set @s nwbr_step_06 160
scoreboard players set @s nwbr_step_07 170
scoreboard players set @s nwbr_step_08 200
scoreboard players set @s nwbr_step_09 240

scoreboard players set @s[tag=!nwbr_retry] nwbr_effect_26LK 0
execute at @s unless score @p nwbr_player_id = @s nwbr_lot_owner run scoreboard players add @s nwbr_lot_toclaim 1
execute at @s run scoreboard players set @e[distance=..1.5,tag=nwbr_disp_lot] nwbr_lot_score -1

tag @s remove nwbr_retry
tag @s remove nwbr_vfx
tag @s remove nwbr_vfx_66th
tag @s remove nwbr_vfx_222th

scoreboard players set @s nwbr_lot_timer 0
