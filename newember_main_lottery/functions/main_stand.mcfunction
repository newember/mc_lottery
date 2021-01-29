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
execute at @s[tag=!has_reward,tag=!nwbr_retry,tag=nwbr_special] if score @s nwbr_lot_timer = @s nwbr_step_06 at @a if score @p nwbr_player_id = @s nwbr_player_id if score @p nwbr_sp_rlooses matches 222 run tag @p add nwbr_sp_222th
execute at @s[tag=!has_reward,tag=!nwbr_retry,tag=nwbr_special] if score @s nwbr_lot_timer = @s nwbr_step_06 at @a if score @p nwbr_player_id = @s nwbr_player_id if score @p nwbr_sp_rlooses matches 222 run tag @s add nwbr_vfx
execute at @s[tag=!has_reward,tag=!nwbr_retry,tag=nwbr_special] if score @s nwbr_lot_timer = @s nwbr_step_06 at @a if score @p nwbr_player_id = @s nwbr_player_id if score @p nwbr_sp_rlooses matches 222 run tag @s add nwbr_vfx_222th
execute at @s[tag=!has_reward,tag=!nwbr_retry,tag=nwbr_special] if score @s nwbr_lot_timer = @s nwbr_step_06 at @a if score @p nwbr_player_id = @s nwbr_player_id if score @p nwbr_sp_rlooses matches 222 run scoreboard players add @p nwbr_lwin_222th 1
execute at @s[tag=!has_reward,tag=!nwbr_retry,tag=nwbr_special] if score @s nwbr_lot_timer = @s nwbr_step_06 at @a if score @p nwbr_player_id = @s nwbr_player_id if score @p nwbr_sp_rlooses matches 222 run scoreboard players add @s nwbr_step_09 60

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
execute at @s[tag=nwbr_retry,scores={nwbr_lot_timer=-1}] run function newember_main_lottery:init_stand
execute at @s[tag=nwbr_ultra,scores={nwbr_lot_timer=-1}] run function newember_main_lottery:init_stand


#button start
execute as @s[scores={nwbr_lot_timer=-1}] at @s positioned ^-1 ^1 ^-1 if entity @e[type=minecraft:arrow,distance=..0.8] run function newember_main_lottery:buttons/reset_start
execute as @s[scores={nwbr_lot_timer=-1}] at @s positioned ^-1 ^1 ^-1 if entity @e[type=minecraft:spectral_arrow,distance=..0.8] run function newember_main_lottery:buttons/reset_start
execute if score #modulo#10 nwbr_number matches 0 as @s[scores={nwbr_lot_timer=-1}] at @s positioned ^-1 ^1 ^-1 if block ~ ~ ~ #minecraft:buttons[powered=true] run function newember_main_lottery:buttons/push_start


#button options
execute as @s[scores={nwbr_lot_timer=-1}] at @s positioned ^-1 ^1 ^1 if entity @e[type=minecraft:arrow,distance=..0.8] run function newember_main_lottery:buttons/reset_options
execute as @s[scores={nwbr_lot_timer=-1}] at @s positioned ^-1 ^1 ^1 if entity @e[type=minecraft:spectral_arrow,distance=..0.8] run function newember_main_lottery:buttons/reset_options
execute if score #modulo#10 nwbr_number matches 0 as @s[scores={nwbr_lot_timer=-1}] at @s positioned ^-1 ^1 ^1 if block ~ ~ ~ #minecraft:buttons[powered=true] run function newember_main_lottery:buttons/push_options

#triggers
execute at @a[scores={nwtgr_lot_r_btn=1..},distance=..100] if score @p nwbr_lot_id = @s nwbr_lot_id run function newember_main_lottery:buttons/triggers_options
tellraw @a[scores={nwtgr_lot_r_btn=1..},tag=!nwbr_stand_found] {"text":"La lotterie n'existe plus ou est trop loin.","color":"red","hoverEvent":{"action":"show_text","contents":{"text":"Partie un jooour, sans retoooour","color":"#91C8FF"}}}

#structures integrity
execute if score #modulo#100 nwbr_number matches 80 as @s[scores={nwbr_lot_timer=-1}] at @s run function newember_main_lottery:integrity/main
