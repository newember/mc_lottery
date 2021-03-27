#red stand
execute at @s[tag=nwbr_xred,tag=!nwbr_xred_active] if score #dim_vfxred nwbr_number matches 1 if score @s nwbr_step_02 matches ..600 run function newember_main_lottery:special_ticket/red_stand/pause
execute at @s[tag=nwbr_xred,tag=!nwbr_xred_active] as @s if score #dim_vfxred nwbr_number matches 1 in newember_ultra_vfx:red positioned ~ 4.8 ~ if block ^-1 ^1 ^ #minecraft:buttons[powered=true] run tag @s add nwbr_xred_active

execute at @s[tag=nwbr_xred] if score #dim_vfxred nwbr_number matches 1 if score @s nwbr_lot_timer matches 10 at @a if score @p nwbr_player_id = @s nwbr_player_id in newember_ultra_vfx:red run tp @p ~ 5 ~
execute at @s[tag=nwbr_xred] if score #dim_vfxred nwbr_number matches 1 if score @s nwbr_lot_timer matches 10 at @a if score @p nwbr_player_id = @s nwbr_player_id in newember_ultra_vfx:red run effect give @p minecraft:levitation 999999 255 true
execute at @s[tag=nwbr_xred] if score #dim_vfxred nwbr_number matches 1 if score @s nwbr_lot_timer matches 10 at @a if score @p nwbr_player_id = @s nwbr_player_id in newember_ultra_vfx:red run effect give @p minecraft:blindness 2 255 true
execute at @s[tag=nwbr_xred] if score #dim_vfxred nwbr_number matches 1 if score @s nwbr_lot_timer matches 10 at @a if score @p nwbr_player_id = @s nwbr_player_id in newember_ultra_vfx:red run effect give @p minecraft:mining_fatigue 999999 127

execute at @s[tag=nwbr_xred] if score #dim_vfxred nwbr_number matches 1 if score @s nwbr_lot_timer >= @s nwbr_step_01 as @e[tag=nwbr_disp_lot,distance=..2.5] at @s in newember_ultra_vfx:red positioned ~ 4.8 ~ run data modify entity @e[tag=nwbr_disp_sec,distance=..0.3,limit=1] HandItems set from entity @s HandItems

execute at @s[tag=nwbr_xred] if score @s nwbr_lot_timer = @s nwbr_step_04 as @e[tag=nwbr_back_point] if score @s nwbr_lot_id = @e[tag=nwbr_lot_main,distance=0,limit=1] nwbr_lot_id run tag @s add nwbr_active
execute at @s[tag=nwbr_xred] if score @s nwbr_lot_timer = @s nwbr_step_09 run function newember_main_lottery:special_ticket/red_stand/reset

#animation
execute unless score @s nwbr_animation matches -1 run scoreboard players add @s nwbr_animation 1
execute if score @s nwbr_lot_timer >= @s nwbr_step_01 run function newember_main_lottery:display/prepare

execute if score @s nwbr_lot_timer = @s nwbr_step_02 as @e[distance=..1.5,tag=nwbr_lot_right] run function newember_main_lottery:result/fetch_one
execute if score @s nwbr_lot_timer = @s nwbr_step_02 run playsound minecraft:block.note_block.pling block @a ~ ~ ~ 2 0
execute if score @s nwbr_lot_timer = @s nwbr_step_02 run function newember_main_lottery:display/result_final

execute if score @s nwbr_lot_timer = @s nwbr_step_03 run function newember_main_lottery:result/fetch_one
execute if score @s nwbr_lot_timer = @s nwbr_step_03 run playsound minecraft:block.note_block.pling block @a ~ ~ ~ 2 0
execute if score @s nwbr_lot_timer = @s nwbr_step_03 run function newember_main_lottery:display/result_final

execute if score @s nwbr_lot_timer = @s nwbr_step_04 as @e[distance=..1.5,tag=nwbr_lot_left] run function newember_main_lottery:result/fetch_one
execute if score @s nwbr_lot_timer = @s nwbr_step_04 run playsound minecraft:block.note_block.pling block @a ~ ~ ~ 2 1
execute if score @s nwbr_lot_timer = @s nwbr_step_04 run function newember_main_lottery:display/result_final

#test reward
execute if score @s nwbr_lot_timer = @s nwbr_step_05 run function newember_main_lottery:reward/testfor

#retry
execute at @s[tag=!has_reward] if score @s nwbr_lot_timer = @s nwbr_step_05 run function newember_main_lottery:result/fetch_retry
execute at @s[tag=nwbr_retry] if score @s nwbr_lot_timer = @s nwbr_step_05 run scoreboard players set @s nwbr_animation 0
execute at @s[tag=nwbr_retry] if score @s nwbr_lot_timer >= @s nwbr_step_05 run function newember_main_lottery:vfx/particle/free_new_attempt

#- stats -#
execute at @s[tag=has_reward,tag=!nwbr_retry] if score @s nwbr_lot_timer = @s nwbr_step_06 at @a if score @p nwbr_player_id = @s nwbr_player_id run scoreboard players add @p nwbr_lot_wins 1
execute at @s[tag=!has_reward,tag=!nwbr_retry] if score @s nwbr_lot_timer = @s nwbr_step_06 at @a if score @p nwbr_player_id = @s nwbr_player_id run scoreboard players add @p nwbr_lot_looses 1
execute at @s[tag=!has_reward,tag=!nwbr_retry,tag=nwbr_special] if score @s nwbr_lot_timer = @s nwbr_step_06 at @a if score @p nwbr_player_id = @s nwbr_player_id run scoreboard players add @p nwbr_sp_looses 1

execute at @s[tag=has_reward,tag=!nwbr_retry] if score @s nwbr_lot_timer = @s nwbr_step_06 at @a if score @p nwbr_player_id = @s nwbr_player_id run scoreboard players add @p nwbr_lot_rwins 1
execute at @s[tag=!has_reward,tag=!nwbr_retry] if score @s nwbr_lot_timer = @s nwbr_step_06 at @a if score @p nwbr_player_id = @s nwbr_player_id run scoreboard players add @p nwbr_lot_rlooses 1
execute at @s[tag=!has_reward,tag=!nwbr_retry,tag=nwbr_special] if score @s nwbr_lot_timer = @s nwbr_step_06 at @a if score @p nwbr_player_id = @s nwbr_player_id run scoreboard players add @p nwbr_sp_rlooses 1

execute at @s[tag=!has_reward,tag=!nwbr_retry] if score @s nwbr_lot_timer = @s nwbr_step_06 at @a if score @p nwbr_player_id = @s nwbr_player_id run scoreboard players set @p nwbr_lot_rwins 0
execute at @s[tag=has_reward,tag=!nwbr_retry] if score @s nwbr_lot_timer = @s nwbr_step_06 at @a if score @p nwbr_player_id = @s nwbr_player_id run scoreboard players set @p nwbr_lot_rlooses 0
execute at @s[tag=has_reward,tag=!nwbr_retry,tag=nwbr_special] if score @s nwbr_lot_timer = @s nwbr_step_06 at @a if score @p nwbr_player_id = @s nwbr_player_id run scoreboard players set @p nwbr_sp_rlooses 0

execute as @s if score @s nwbr_lot_timer = @s nwbr_step_06 run scoreboard players add @s nwbr_lot_wins 0
execute as @s if score @s nwbr_lot_timer = @s nwbr_step_06 run scoreboard players add @s nwbr_lot_looses 0
execute as @s[tag=has_reward,tag=!nwbr_retry] if score @s nwbr_lot_timer = @s nwbr_step_06 run scoreboard players add @s nwbr_lot_wins 1
execute as @s[tag=!has_reward,tag=!nwbr_retry] if score @s nwbr_lot_timer = @s nwbr_step_06 run scoreboard players add @s nwbr_lot_looses 1

#reward
execute at @s[tag=has_reward,tag=!nwbr_retry] if score @s nwbr_lot_timer = @s nwbr_step_06 run function newember_main_lottery:reward/main

execute at @s[tag=!has_reward,tag=!nwbr_retry,tag=nwbr_special] if score @s nwbr_lot_timer = @s nwbr_step_06 at @a if score @p nwbr_player_id = @s nwbr_player_id if score @p nwbr_sp_rlooses matches 66 run tag @p add nwbr_sp_66th
execute at @s[tag=!has_reward,tag=!nwbr_retry,tag=nwbr_special] if score @s nwbr_lot_timer = @s nwbr_step_06 at @a if score @p nwbr_player_id = @s nwbr_player_id if score @p nwbr_sp_rlooses matches 66 run tag @s add nwbr_vfx
execute at @s[tag=!has_reward,tag=!nwbr_retry,tag=nwbr_special] if score @s nwbr_lot_timer = @s nwbr_step_06 at @a if score @p nwbr_player_id = @s nwbr_player_id if score @p nwbr_sp_rlooses matches 66 run tag @s add nwbr_vfx_66th
execute at @s[tag=!has_reward,tag=!nwbr_retry,tag=nwbr_special] if score @s nwbr_lot_timer = @s nwbr_step_06 at @a if score @p nwbr_player_id = @s nwbr_player_id if score @p nwbr_sp_rlooses matches 66 run scoreboard players add @p nwbr_lwin_66th 1
execute at @s[tag=!has_reward,tag=!nwbr_retry,tag=nwbr_special] if score @s nwbr_lot_timer = @s nwbr_step_06 at @a if score @p nwbr_player_id = @s nwbr_player_id if score @p nwbr_sp_rlooses matches 66 run scoreboard players add @s nwbr_step_09 60
execute at @s[tag=!has_reward,tag=!nwbr_retry,tag=nwbr_special] if score @s nwbr_lot_timer = @s nwbr_step_06 at @a if score @p nwbr_player_id = @s nwbr_player_id if score @p nwbr_sp_rlooses matches 66 at @s run playsound minecraft:entity.wither.ambient block @a ~ ~ ~ 100 1
execute at @s[tag=!has_reward,tag=!nwbr_retry,tag=nwbr_special] if score @s nwbr_lot_timer = @s nwbr_step_06 at @a if score @p nwbr_player_id = @s nwbr_player_id if score @p nwbr_sp_rlooses matches 222 run tag @p add nwbr_sp_222th
execute at @s[tag=!has_reward,tag=!nwbr_retry,tag=nwbr_special] if score @s nwbr_lot_timer = @s nwbr_step_06 at @a if score @p nwbr_player_id = @s nwbr_player_id if score @p nwbr_sp_rlooses matches 222 run tag @s add nwbr_vfx
execute at @s[tag=!has_reward,tag=!nwbr_retry,tag=nwbr_special] if score @s nwbr_lot_timer = @s nwbr_step_06 at @a if score @p nwbr_player_id = @s nwbr_player_id if score @p nwbr_sp_rlooses matches 222 run tag @s add nwbr_vfx_222th
execute at @s[tag=!has_reward,tag=!nwbr_retry,tag=nwbr_special] if score @s nwbr_lot_timer = @s nwbr_step_06 at @a if score @p nwbr_player_id = @s nwbr_player_id if score @p nwbr_sp_rlooses matches 222 run scoreboard players add @p nwbr_lwin_222th 1
execute at @s[tag=!has_reward,tag=!nwbr_retry,tag=nwbr_special] if score @s nwbr_lot_timer = @s nwbr_step_06 at @a if score @p nwbr_player_id = @s nwbr_player_id if score @p nwbr_sp_rlooses matches 222 run scoreboard players add @s nwbr_step_09 60
execute at @s[tag=!has_reward,tag=!nwbr_retry,tag=nwbr_special] if score @s nwbr_lot_timer = @s nwbr_step_06 at @a if score @p nwbr_player_id = @s nwbr_player_id if score @p nwbr_sp_rlooses matches 222 at @s run playsound minecraft:entity.wither.ambient block @a ~ ~ ~ 100 0.666

execute as @s[tag=!has_reward,tag=!nwbr_retry,tag=nwbr_special] if score @s nwbr_lot_timer = @s nwbr_step_07 run function newember_main_lottery:reward/try_boss
#reward multiplier
execute if score @s nwbr_lot_timer = @s nwbr_step_07 run scoreboard players remove @s[tag=has_reward] nwbr_effect_26LK 2
execute if score @s nwbr_lot_timer = @s nwbr_step_07 run scoreboard players operation @s math = @s nwbr_step_06
execute if score @s nwbr_lot_timer = @s nwbr_step_07 run scoreboard players remove @s math 1
execute if score @s nwbr_lot_timer = @s nwbr_step_07 run scoreboard players operation @s[scores={nwbr_effect_26LK=0..},tag=has_reward] nwbr_lot_timer = @s math

execute at @s[tag=!has_reward,tag=!nwbr_retry,tag=nwbr_special] if score @s nwbr_lot_timer = @s nwbr_step_08 at @a if score @p nwbr_player_id = @s nwbr_player_id if score @p nwbr_sp_rlooses matches 66 at @s run function newember_main_lottery:reward/special/extra/66th
execute at @s[tag=!has_reward,tag=!nwbr_retry,tag=nwbr_special] if score @s nwbr_lot_timer = @s nwbr_step_08 at @a if score @p nwbr_player_id = @s nwbr_player_id if score @p nwbr_sp_rlooses matches 222 at @s run function newember_main_lottery:reward/special/extra/222th

#vfx
execute at @s[tag=nwbr_vfx] if score @s nwbr_lot_timer = @s nwbr_step_06 run scoreboard players set @s nwbr_animation 0
execute at @s[tag=nwbr_vfx] if score @s nwbr_animation matches 25 run scoreboard players set @s nwbr_animation 0
execute at @s[tag=nwbr_vfx_66th] if score @s nwbr_lot_timer >= @s nwbr_step_06 run function newember_main_lottery:vfx/particle/66th
execute at @s[tag=nwbr_vfx_222th] if score @s nwbr_lot_timer >= @s nwbr_step_06 run function newember_main_lottery:vfx/particle/666

execute if score @s nwbr_lot_timer = @s nwbr_step_09 run tag @s remove nwbr_ultra
execute if score @s nwbr_lot_timer = @s nwbr_step_09 run scoreboard players set @s nwbr_lot_timer -1
#scoreboard players set @s[scores={nwbr_lot_timer=235}] nwbr_lot_timer 185


scoreboard players add @s[scores={nwbr_lot_timer=0..}] nwbr_lot_timer 1
execute at @s[tag=nwbr_retry,tag=!nwbr_xred,scores={nwbr_lot_timer=-1}] run function newember_main_lottery:init_stand
execute at @s[tag=nwbr_retry,tag=nwbr_xred,scores={nwbr_lot_timer=-1}] run function newember_main_lottery:special_ticket/red_stand/init
execute at @s[tag=nwbr_ultra,scores={nwbr_lot_timer=-1}] run function newember_main_lottery:init_stand


#button start
execute as @s[scores={nwbr_lot_timer=-1}] at @s positioned ^-1 ^1 ^-1 if entity @e[type=minecraft:arrow,distance=..0.8] run function newember_main_lottery:buttons/reset_start
execute as @s[scores={nwbr_lot_timer=-1}] at @s positioned ^-1 ^1 ^-1 if entity @e[type=minecraft:spectral_arrow,distance=..0.8] run function newember_main_lottery:buttons/reset_start
execute if score #modulo#10 nwbr_number matches 0 as @s[scores={nwbr_lot_timer=-1}] at @s positioned ^-1 ^1 ^-1 if block ~ ~ ~ #minecraft:buttons[powered=true] unless data entity @p SelectedItem.tag.ticket_special run function newember_main_lottery:buttons/push_start
execute if score #modulo#10 nwbr_number matches 0 as @s[scores={nwbr_lot_timer=-1}] at @s positioned ^-1 ^1 ^-1 if block ~ ~ ~ #minecraft:buttons[powered=true] if data entity @p SelectedItem.tag.ticket_special.red run function newember_main_lottery:buttons/push_start_red


#button options
execute as @s[scores={nwbr_lot_timer=-1}] at @s positioned ^-1 ^1 ^1 if entity @e[type=minecraft:arrow,distance=..0.8] run function newember_main_lottery:buttons/reset_options
execute as @s[scores={nwbr_lot_timer=-1}] at @s positioned ^-1 ^1 ^1 if entity @e[type=minecraft:spectral_arrow,distance=..0.8] run function newember_main_lottery:buttons/reset_options
execute if score #modulo#10 nwbr_number matches 0 as @s[scores={nwbr_lot_timer=-1}] at @s positioned ^-1 ^1 ^1 if block ~ ~ ~ #minecraft:buttons[powered=true] run function newember_main_lottery:buttons/push_options

#triggers
execute at @a[scores={nwtgr_lot_r_btn=1..},distance=..100] if score @p nwbr_lot_id = @s nwbr_lot_id run function newember_main_lottery:buttons/triggers_options
tellraw @a[scores={nwtgr_lot_r_btn=1..},tag=!nwbr_stand_found] {"text":"La lotterie n'existe plus ou est trop loin.","color":"red","hoverEvent":{"action":"show_text","contents":{"text":"Partie un jooour, sans retoooour","color":"#91C8FF"}}}

#structures integrity
execute if score #modulo#100 nwbr_number matches 80 as @s[scores={nwbr_lot_timer=-1}] at @s run function newember_main_lottery:integrity/main
