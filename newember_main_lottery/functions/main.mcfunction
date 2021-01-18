#lot animation
scoreboard players set @e[tag=nwbr_lot_main,scores={nwbr_lot_timer=0},tag=!nwbr_retry] nwbr_effect_26LK 0
execute as @e[tag=nwbr_lot_main,scores={nwbr_lot_timer=0}] run tag @s remove nwbr_retry
execute as @e[tag=nwbr_lot_main,scores={nwbr_lot_timer=0}] at @s unless score @p nwbr_player_id = @s nwbr_lot_owner run scoreboard players add @s nwbr_lot_toclaim 1
execute as @e[tag=nwbr_lot_main,scores={nwbr_lot_timer=0}] at @s run scoreboard players set @e[distance=..1.5,tag=nwbr_disp_lot] nwbr_lot_score -1
execute as @e[tag=nwbr_lot_main,scores={nwbr_lot_timer=0..}] at @s run function newember_main_lottery:display/prepare

execute at @e[tag=nwbr_lot_main,scores={nwbr_lot_timer=100}] as @e[distance=..1.5,tag=nwbr_lot_right] run function newember_main_lottery:result/fetch_one
execute at @e[tag=nwbr_lot_main,scores={nwbr_lot_timer=100}] run playsound minecraft:block.note_block.pling block @a ~ ~ ~ 2 0
execute as @e[tag=nwbr_lot_main,scores={nwbr_lot_timer=100}] at @s run function newember_main_lottery:display/result_final

execute as @e[tag=nwbr_lot_main,scores={nwbr_lot_timer=120}] run function newember_main_lottery:result/fetch_one
execute at @e[tag=nwbr_lot_main,scores={nwbr_lot_timer=120}] run playsound minecraft:block.note_block.pling block @a ~ ~ ~ 2 0
execute as @e[tag=nwbr_lot_main,scores={nwbr_lot_timer=120}] at @s run function newember_main_lottery:display/result_final

execute at @e[tag=nwbr_lot_main,scores={nwbr_lot_timer=140}] as @e[distance=..1.5,tag=nwbr_lot_left] run function newember_main_lottery:result/fetch_one
execute at @e[tag=nwbr_lot_main,scores={nwbr_lot_timer=140}] run playsound minecraft:block.note_block.pling block @a ~ ~ ~ 2 1
execute as @e[tag=nwbr_lot_main,scores={nwbr_lot_timer=140}] at @s run function newember_main_lottery:display/result_final

execute as @e[tag=nwbr_lot_main,scores={nwbr_lot_timer=150}] at @s run function newember_main_lottery:reward/testfor

execute as @e[tag=nwbr_lot_main,scores={nwbr_lot_timer=150},tag=!has_reward] at @s run function newember_main_lottery:result/fetch_retry
execute as @e[tag=nwbr_lot_main,scores={nwbr_lot_timer=150..},tag=nwbr_retry] at @s run function newember_main_lottery:vfx/particle/free_new_attempt

#- stats -#
execute as @e[tag=nwbr_lot_main,scores={nwbr_lot_timer=160},tag=has_reward,tag=!nwbr_retry] at @a if score @p nwbr_player_id = @s nwbr_player_id run scoreboard players add @p nwbr_lot_wins 1
execute as @e[tag=nwbr_lot_main,scores={nwbr_lot_timer=160},tag=!has_reward,tag=!nwbr_retry] at @a if score @p nwbr_player_id = @s nwbr_player_id run scoreboard players add @p nwbr_lot_looses 1
execute as @e[tag=nwbr_lot_main,scores={nwbr_lot_timer=160},tag=!has_reward,tag=!nwbr_retry,tag=nwbr_special] at @a if score @p nwbr_player_id = @s nwbr_player_id run scoreboard players add @p nwbr_sp_looses 1

execute as @e[tag=nwbr_lot_main,scores={nwbr_lot_timer=160},tag=has_reward,tag=!nwbr_retry] at @a if score @p nwbr_player_id = @s nwbr_player_id run scoreboard players add @p nwbr_lot_rwins 1
execute as @e[tag=nwbr_lot_main,scores={nwbr_lot_timer=160},tag=!has_reward,tag=!nwbr_retry] at @a if score @p nwbr_player_id = @s nwbr_player_id run scoreboard players add @p nwbr_lot_rlooses 1
execute as @e[tag=nwbr_lot_main,scores={nwbr_lot_timer=160},tag=!has_reward,tag=!nwbr_retry,tag=nwbr_special] at @a if score @p nwbr_player_id = @s nwbr_player_id run scoreboard players add @p nwbr_sp_rlooses 1

execute as @e[tag=nwbr_lot_main,scores={nwbr_lot_timer=160},tag=!has_reward,tag=!nwbr_retry] at @a if score @p nwbr_player_id = @s nwbr_player_id run scoreboard players set @p nwbr_lot_rwins 0
execute as @e[tag=nwbr_lot_main,scores={nwbr_lot_timer=160},tag=has_reward,tag=!nwbr_retry] at @a if score @p nwbr_player_id = @s nwbr_player_id run scoreboard players set @p nwbr_lot_rlooses 0
execute as @e[tag=nwbr_lot_main,scores={nwbr_lot_timer=160},tag=has_reward,tag=!nwbr_retry,tag=nwbr_special] at @a if score @p nwbr_player_id = @s nwbr_player_id run scoreboard players set @p nwbr_sp_rlooses 0

execute as @e[tag=nwbr_lot_main,scores={nwbr_lot_timer=160}] run scoreboard players add @s nwbr_lot_wins 0
execute as @e[tag=nwbr_lot_main,scores={nwbr_lot_timer=160}] run scoreboard players add @s nwbr_lot_looses 0
execute as @e[tag=nwbr_lot_main,scores={nwbr_lot_timer=160},tag=has_reward,tag=!nwbr_retry] run scoreboard players add @s nwbr_lot_wins 1
execute as @e[tag=nwbr_lot_main,scores={nwbr_lot_timer=160},tag=!has_reward,tag=!nwbr_retry] run scoreboard players add @s nwbr_lot_looses 1

#reward
execute as @e[tag=nwbr_lot_main,scores={nwbr_lot_timer=160},tag=has_reward,tag=!nwbr_retry] at @s run function newember_main_lottery:reward/main

execute as @e[tag=nwbr_lot_main,scores={nwbr_lot_timer=160},tag=!has_reward,tag=!nwbr_retry,tag=nwbr_special] at @a if score @p nwbr_player_id = @s nwbr_player_id if score @p nwbr_sp_rlooses matches 66 run tag @p add nwbr_sp_66th
execute as @e[tag=nwbr_lot_main,scores={nwbr_lot_timer=160},tag=!has_reward,tag=!nwbr_retry,tag=nwbr_special] at @a if score @p nwbr_player_id = @s nwbr_player_id if score @p nwbr_sp_rlooses matches 66 run scoreboard players add @p nwbr_lwin_66th 1
execute as @e[tag=nwbr_lot_main,scores={nwbr_lot_timer=160},tag=!has_reward,tag=!nwbr_retry,tag=nwbr_special] at @a if score @p nwbr_player_id = @s nwbr_player_id if score @p nwbr_sp_rlooses matches 66 at @s run function newember_main_lottery:reward/special/extra/66th
execute as @e[tag=nwbr_lot_main,scores={nwbr_lot_timer=160},tag=!has_reward,tag=!nwbr_retry,tag=nwbr_special] at @a if score @p nwbr_player_id = @s nwbr_player_id if score @p nwbr_sp_rlooses matches 222 run tag @p add nwbr_sp_222th
execute as @e[tag=nwbr_lot_main,scores={nwbr_lot_timer=160},tag=!has_reward,tag=!nwbr_retry,tag=nwbr_special] at @a if score @p nwbr_player_id = @s nwbr_player_id if score @p nwbr_sp_rlooses matches 222 run scoreboard players add @p nwbr_lwin_222th 1
execute as @e[tag=nwbr_lot_main,scores={nwbr_lot_timer=160},tag=!has_reward,tag=!nwbr_retry,tag=nwbr_special] at @a if score @p nwbr_player_id = @s nwbr_player_id if score @p nwbr_sp_rlooses matches 222 at @s run function newember_main_lottery:reward/special/extra/222th


execute as @e[tag=nwbr_lot_main,scores={nwbr_lot_timer=170},tag=!has_reward,tag=!nwbr_retry,tag=nwbr_special] at @s run function newember_main_lottery:reward/try_boss

#reward multiplier
scoreboard players remove @e[tag=nwbr_lot_main,scores={nwbr_lot_timer=170},tag=has_reward] nwbr_effect_26LK 2
scoreboard players set @e[tag=nwbr_lot_main,scores={nwbr_lot_timer=170,nwbr_effect_26LK=0..},tag=has_reward] nwbr_lot_timer 159


tag @e[tag=nwbr_lot_main,scores={nwbr_lot_timer=200}] remove nwbr_ultra
scoreboard players set @e[tag=nwbr_lot_main,tag=!nwbr_retry,scores={nwbr_lot_timer=200}] nwbr_lot_timer -1
scoreboard players set @e[tag=nwbr_lot_main,scores={nwbr_lot_timer=260}] nwbr_lot_timer -1

scoreboard players add @e[tag=nwbr_lot_main,scores={nwbr_lot_timer=0..}] nwbr_lot_timer 1
scoreboard players set @e[tag=nwbr_lot_main,tag=nwbr_retry,scores={nwbr_lot_timer=-1}] nwbr_lot_timer 0
scoreboard players set @e[tag=nwbr_lot_main,tag=nwbr_ultra,scores={nwbr_lot_timer=-1}] nwbr_lot_timer 0

#Item
function newember_main_lottery:spawn/replace_classic
function newember_main_lottery:spawn/create/main

#button start
execute as @e[tag=nwbr_lot_main,scores={nwbr_lot_timer=-1}] at @s positioned ^-1 ^1 ^-1 if entity @e[type=minecraft:arrow,distance=..0.8] run function newember_main_lottery:buttons/reset_start
execute as @e[tag=nwbr_lot_main,scores={nwbr_lot_timer=-1}] at @s positioned ^-1 ^1 ^-1 if entity @e[type=minecraft:spectral_arrow,distance=..0.8] run function newember_main_lottery:buttons/reset_start
execute if score #modulo#10 nwbr_number matches 0 as @e[tag=nwbr_lot_main,scores={nwbr_lot_timer=-1}] at @s positioned ^-1 ^1 ^-1 if block ~ ~ ~ #minecraft:buttons[powered=true] run function newember_main_lottery:buttons/push_start


#button options
execute as @e[tag=nwbr_lot_main,scores={nwbr_lot_timer=-1}] at @s positioned ^-1 ^1 ^1 if entity @e[type=minecraft:arrow,distance=..0.8] run function newember_main_lottery:buttons/reset_options
execute as @e[tag=nwbr_lot_main,scores={nwbr_lot_timer=-1}] at @s positioned ^-1 ^1 ^1 if entity @e[type=minecraft:spectral_arrow,distance=..0.8] run function newember_main_lottery:buttons/reset_options
execute if score #modulo#10 nwbr_number matches 0 as @e[tag=nwbr_lot_main,scores={nwbr_lot_timer=-1}] at @s positioned ^-1 ^1 ^1 if block ~ ~ ~ #minecraft:buttons[powered=true] run function newember_main_lottery:buttons/push_options

#triggers
execute as @a[scores={nwtgr_lot_r_btn=1..}] at @s as @e[tag=nwbr_lot_main,distance=..100] if score @p nwbr_lot_id = @s nwbr_lot_id run function newember_main_lottery:buttons/triggers_options
execute as @a[scores={nwtgr_lot_r_btn=1..},tag=!nwbr_stand_found] at @s run tellraw @p {"text":"La lotterie n'existe plus ou est trop loin.","color":"red","hoverEvent":{"action":"show_text","contents":{"text":"Partie un jooour, sans retoooour","color":"#91C8FF"}}}

scoreboard players enable @a nwtgr_lot_r_btn
scoreboard players set @p nwtgr_lot_r_btn 0

#steal protect
execute if score #modulo#10 nwbr_number matches 5 run function newember_main_lottery:steal_protect/main

#item tp
execute if score #modulo#100 nwbr_number matches 90 as @e[tag=nwbr_stl_tp] at @a if score @p nwbr_player_id = @s nwbr_player_id run tp @s @p

#structures integrity
execute if score #modulo#100 nwbr_number matches 80 as @e[tag=nwbr_lot_main,scores={nwbr_lot_timer=-1}] at @s run function newember_main_lottery:integrity/main

#lootbox
execute as @e[type=minecraft:bat,tag=nwbr_lootbox] at @s run function newember_main_lottery:lootbox/init

#clean
tag @a remove nwbr_stand_found
