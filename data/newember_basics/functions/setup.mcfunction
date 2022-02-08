#storage
execute store result score #test nwbr_number run data get storage newember_basics:core players
execute if score #test nwbr_number matches 0 run data modify storage newember_basics:core players set value {"names":["player not found"],"uuids":[0,0,0,0]}

function newember_main_lottery:storage/texts/fr_fr/setup
function newember_main_lottery:storage/texts/fr_fr/set_lang

#stats
scoreboard objectives add nwbr_death_by_pl minecraft.killed_by:minecraft.player
scoreboard objectives add nwbr_damage_done minecraft.custom:minecraft.damage_dealt
scoreboard objectives add nwbr_play_kills minecraft.killed:minecraft.player
scoreboard objectives add nwbr_vill_kills minecraft.killed:minecraft.villager
scoreboard objectives add nwbr_miner minecraft.mined:minecraft.stone
scoreboard objectives add nwbr_diam_miner minecraft.mined:minecraft.diamond_ore
scoreboard objectives add nwbr_deaths minecraft.custom:minecraft.deaths
scoreboard objectives add nwbr_fly minecraft.custom:minecraft.aviate_one_cm
scoreboard objectives add nwbr_arrow_hit dummy
#breaked block
scoreboard objectives add nwbr_brk_stone minecraft.mined:minecraft.stone
scoreboard objectives add nwbr_brk_andesit minecraft.mined:minecraft.andesite
scoreboard objectives add nwbr_brk_diorite minecraft.mined:minecraft.diorite
scoreboard objectives add nwbr_brk_granite minecraft.mined:minecraft.granite
scoreboard objectives add nwbr_brk_deepslt minecraft.mined:minecraft.deepslate
scoreboard objectives add nwbr_brk_dp_diam minecraft.mined:minecraft.deepslate_diamond_ore
scoreboard objectives add nwbr_brk_st_diam minecraft.mined:minecraft.deepslate_redstone_ore
scoreboard objectives add nwbr_brk_dp_reds minecraft.mined:minecraft.diamond_ore
scoreboard objectives add nwbr_brk_st_reds minecraft.mined:minecraft.redstone_ore
#posed block
scoreboard objectives add nwbr_use_stone minecraft.used:minecraft.stone
scoreboard objectives add nwbr_use_andesit minecraft.used:minecraft.andesite
scoreboard objectives add nwbr_use_diorite minecraft.used:minecraft.diorite
scoreboard objectives add nwbr_use_granite minecraft.used:minecraft.granite
scoreboard objectives add nwbr_use_deepslt minecraft.used:minecraft.deepslate
scoreboard objectives add nwbr_use_dp_diam minecraft.used:minecraft.deepslate_diamond_ore
scoreboard objectives add nwbr_use_st_diam minecraft.used:minecraft.deepslate_redstone_ore
scoreboard objectives add nwbr_use_dp_reds minecraft.used:minecraft.diamond_ore
scoreboard objectives add nwbr_use_st_reds minecraft.used:minecraft.redstone_ore

#temp stats
scoreboard objectives add nwbr_brk_bscore dummy
scoreboard objectives add nwbr_brk_bscoreT dummy
scoreboard objectives add nwbr_brk_penalty dummy
scoreboard objectives add nwbr_use_bscore dummy
scoreboard objectives add nwbr_use_bscoreT dummy
scoreboard objectives add nwbr_damage_dT dummy
scoreboard objectives add nwbr_flyT dummy
scoreboard objectives add nwbr_arrow_hitT dummy

#core
scoreboard objectives add nwbr_c_stick minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add nwbr_animation dummy
scoreboard objectives add nwbr_totem dummy
scoreboard objectives add nwbr_consum dummy
scoreboard objectives add nwbr_anim_end dummy
scoreboard objectives add nwbr_anim_endtmp dummy
scoreboard objectives add nwbr_cur_health health

#diverse numbers
scoreboard objectives add nwbr_number dummy
scoreboard objectives add nwbr_math dummy
scoreboard objectives add nwbr_math2 dummy
scoreboard objectives add nwbr_math3 dummy
scoreboard objectives add nwbr_math4 dummy
scoreboard objectives add nwbr_player_id dummy

#special items
scoreboard objectives add nwbr_360_score dummy
scoreboard objectives add nwbr_360_delta dummy
scoreboard objectives add nwbr_360_rotated dummy
scoreboard objectives add nwbr_360_record dummy

#lot
scoreboard objectives add nwbr_lot_win dummy
scoreboard objectives add nwbr_no_itm_disp dummy
scoreboard objectives add nwbr_lot_tries dummy
scoreboard objectives add nwbr_lot_spent dummy
scoreboard objectives add nwbr_lot_earned dummy
scoreboard objectives add nwbr_lot_owner dummy
scoreboard objectives add nwbr_lot_toclaim dummy
scoreboard objectives add nwbr_lot_wins dummy
scoreboard objectives add nwbr_lot_looses dummy
scoreboard objectives add nwbr_lot_rwins dummy
scoreboard objectives add nwbr_lot_rlooses dummy
scoreboard objectives add nwbr_lot_timer dummy
scoreboard objectives add nwbr_lot_score dummy
scoreboard objectives add nwbr_lot_id dummy
scoreboard objectives add nwbr_sp_looses dummy
scoreboard objectives add nwbr_sp_rlooses dummy
scoreboard objectives add nwbr_time_spdim dummy

scoreboard objectives add nwbr_lwin_cl00 dummy
scoreboard objectives add nwbr_lwin_cl01 dummy
scoreboard objectives add nwbr_lwin_cl02 dummy
scoreboard objectives add nwbr_lwin_cl03 dummy
scoreboard objectives add nwbr_lwin_cl04 dummy
scoreboard objectives add nwbr_lwin_cl05 dummy
scoreboard objectives add nwbr_lwin_cl06 dummy

scoreboard objectives add nwbr_lwin_en00 dummy
scoreboard objectives add nwbr_lwin_en01 dummy
scoreboard objectives add nwbr_lwin_en02 dummy
scoreboard objectives add nwbr_lwin_en03 dummy
scoreboard objectives add nwbr_lwin_en04 dummy
scoreboard objectives add nwbr_lwin_en05 dummy

scoreboard objectives add nwbr_lwin_fa00 dummy
scoreboard objectives add nwbr_lwin_fa01 dummy
scoreboard objectives add nwbr_lwin_fa02 dummy
scoreboard objectives add nwbr_lwin_fa03 dummy
scoreboard objectives add nwbr_lwin_fa04 dummy
scoreboard objectives add nwbr_lwin_fa05 dummy
scoreboard objectives add nwbr_lwin_fa06 dummy

scoreboard objectives add nwbr_lwin_go00 dummy
scoreboard objectives add nwbr_lwin_go01 dummy
scoreboard objectives add nwbr_lwin_go02 dummy
scoreboard objectives add nwbr_lwin_go03 dummy
scoreboard objectives add nwbr_lwin_go04 dummy
scoreboard objectives add nwbr_lmal_go05 dummy

scoreboard objectives add nwbr_lwin_sk00 dummy
scoreboard objectives add nwbr_lwin_sk01 dummy
scoreboard objectives add nwbr_lwin_sk02 dummy
scoreboard objectives add nwbr_lwin_sk03 dummy
scoreboard objectives add nwbr_lwin_sk04 dummy
scoreboard objectives add nwbr_lmal_sk05 dummy

scoreboard objectives add nwbr_lwin_sp00 dummy
scoreboard objectives add nwbr_lwin_sp01 dummy
scoreboard objectives add nwbr_lwin_sp02 dummy
scoreboard objectives add nwbr_lwin_sp03 dummy
scoreboard objectives add nwbr_lwin_sp04 dummy
scoreboard objectives add nwbr_lwin_sp05 dummy
scoreboard objectives add nwbr_lwin_sp06 dummy
scoreboard objectives add nwbr_lwin_sp07 dummy
scoreboard objectives add nwbr_lwin_sp08 dummy
scoreboard objectives add nwbr_lwin_sp09 dummy
scoreboard objectives add nwbr_lwin_sp10 dummy
scoreboard objectives add nwbr_lwin_sp11 dummy
scoreboard objectives add nwbr_lwin_sp12 dummy
scoreboard objectives add nwbr_lwin_sp13 dummy
scoreboard objectives add nwbr_lwin_sp14 dummy

scoreboard objectives add nwbr_lwin_spx00 dummy
scoreboard objectives add nwbr_lwin_spx01 dummy
scoreboard objectives add nwbr_lwin_spx02 dummy
scoreboard objectives add nwbr_lwin_66th dummy
scoreboard objectives add nwbr_lwin_222th dummy

scoreboard objectives add nwbr_lwin_spxr00 dummy
scoreboard objectives add nwbr_lwin_spxr01 dummy
scoreboard objectives add nwbr_lwin_spxr02 dummy
scoreboard objectives add nwbr_lwin_spxr03 dummy
scoreboard objectives add nwbr_lwin_spxr04 dummy

#skins
scoreboard objectives add nwbr_sk_prog2add dummy
scoreboard objectives add nwbr_sk_prog2set dummy
scoreboard objectives add nwbr_sk_level dummy

#lot tickets
scoreboard objectives add nwbr_dskin_tick dummy
scoreboard objectives add nwbr_bskin_tick dummy

#steps
scoreboard objectives add nwbr_step_01 dummy
scoreboard objectives add nwbr_step_02 dummy
scoreboard objectives add nwbr_step_03 dummy
scoreboard objectives add nwbr_step_04 dummy
scoreboard objectives add nwbr_step_05 dummy
scoreboard objectives add nwbr_step_06 dummy
scoreboard objectives add nwbr_step_07 dummy
scoreboard objectives add nwbr_step_08 dummy
scoreboard objectives add nwbr_step_09 dummy

#chunk temp loading
scoreboard objectives add chk_frc_loaded dummy
scoreboard objectives add chk_frc_loaded_d dummy

#boss
function newember_special_items:bossbar/setup
scoreboard objectives add nwbr_boss_num dummy
scoreboard objectives add nwbr_health dummy

#ablities
scoreboard objectives add nwbr_abts_main dummy
scoreboard objectives add nwbr_abts_2nd dummy
scoreboard objectives add nwbr_abts_ulti dummy
scoreboard objectives add nwbr_abts_pass dummy
scoreboard objectives add nwbr_360_bonus dummy


#effects
scoreboard objectives add nwbr_effect_05ST dummy
scoreboard objectives add nwbr_effect_17HG dummy
scoreboard objectives add nwbr_effect_18WK dummy
scoreboard objectives add nwbr_effect_19PS dummy
scoreboard objectives add nwbr_effect_20WT dummy
scoreboard objectives add nwbr_effect_26LK dummy
scoreboard objectives add nwbr_effect_27UL dummy

#trigers
scoreboard objectives add nwtgr_lot_r_btn trigger

#numbers
scoreboard players set #-1 nwbr_number -1
scoreboard players set #0 nwbr_number 0
scoreboard players set #1 nwbr_number 1
scoreboard players set #2 nwbr_number 2
scoreboard players set #3 nwbr_number 3
scoreboard players set #4 nwbr_number 4
scoreboard players set #5 nwbr_number 5
scoreboard players set #6 nwbr_number 6
scoreboard players set #7 nwbr_number 7
scoreboard players set #8 nwbr_number 8
scoreboard players set #9 nwbr_number 9
scoreboard players set #10 nwbr_number 10
scoreboard players set #15 nwbr_number 15
scoreboard players set #20 nwbr_number 20
scoreboard players set #25 nwbr_number 25
scoreboard players set #30 nwbr_number 30
scoreboard players set #35 nwbr_number 35
scoreboard players set #40 nwbr_number 40
scoreboard players set #45 nwbr_number 45
scoreboard players set #50 nwbr_number 50
scoreboard players set #55 nwbr_number 55
scoreboard players set #60 nwbr_number 60
scoreboard players set #65 nwbr_number 65
scoreboard players set #70 nwbr_number 70
scoreboard players set #75 nwbr_number 75
scoreboard players set #80 nwbr_number 80
scoreboard players set #85 nwbr_number 85
scoreboard players set #90 nwbr_number 90
scoreboard players set #95 nwbr_number 95
scoreboard players set #100 nwbr_number 100
scoreboard players set #175 nwbr_number 175

scoreboard players set #360 nwbr_number 360
scoreboard players set #-360 nwbr_number -360

scoreboard players set #450k nwbr_number 450000

#puissances de 2 (max 2**30 because of maximum of 32bits)
scoreboard players set #2P1 nwbr_number 2
scoreboard players set #2P2 nwbr_number 4
scoreboard players set #2P3 nwbr_number 8
scoreboard players set #2P4 nwbr_number 16
scoreboard players set #2P5 nwbr_number 32
scoreboard players set #2P6 nwbr_number 64
scoreboard players set #2P7 nwbr_number 128
scoreboard players set #2P8 nwbr_number 256
scoreboard players set #2P9 nwbr_number 512
scoreboard players set #2P10 nwbr_number 1024
scoreboard players set #2P11 nwbr_number 2048
scoreboard players set #2P12 nwbr_number 4096
scoreboard players set #2P13 nwbr_number 8192
scoreboard players set #2P14 nwbr_number 16384
scoreboard players set #2P15 nwbr_number 32768
scoreboard players set #2P16 nwbr_number 65536
scoreboard players set #2P17 nwbr_number 131072
scoreboard players set #2P18 nwbr_number 262144
scoreboard players set #2P19 nwbr_number 524288
scoreboard players set #2P20 nwbr_number 1048576
scoreboard players set #2P21 nwbr_number 2097152
scoreboard players set #2P22 nwbr_number 4194304
scoreboard players set #2P23 nwbr_number 8388608
scoreboard players set #2P24 nwbr_number 16777216
scoreboard players set #2P25 nwbr_number 33554432
scoreboard players set #2P26 nwbr_number 67108864
scoreboard players set #2P27 nwbr_number 134217728
scoreboard players set #2P28 nwbr_number 268435456
scoreboard players set #2P29 nwbr_number 536870912
scoreboard players set #2P30 nwbr_number 1073741824

scoreboard players add max_id nwbr_player_id 0

scoreboard players add #goto#Midnight nwbr_number 0
scoreboard players add #goto#Day nwbr_number 0

#core teams
team add nwbr_red [{"text":"red","color":"dark_red"}]
team modify nwbr_red color dark_red

#check
scoreboard players set #dim_vfxred nwbr_number 0
scoreboard players add #no_vfxred nwbr_number 0
execute unless score #no_vfxred nwbr_number matches 1 in newember_ultra_vfx:red run scoreboard players set #dim_vfxred nwbr_number 1

#versions
scoreboard players set #basicsVersion nwbr_number 1
scoreboard players set #lotVersion nwbr_number 1
scoreboard players set #itemVersion nwbr_number 0

# lot version :
#  - 1 => 1.0.0
# basic version :
#  - 1 => 1.0.0
# item version :
#  - 0 => 0.1.0

tellraw @a [{"text":" ___________________________________________","color":"#702e00"}]
tellraw @a [{"text":"/                                                                \\","color":"#702e00"}]
tellraw @a [{"text":"                [ Newember Lottery Pack ]","color":"#ff6a00"}]
tellraw @a [{"text":"             Datapack chargé correctement !","color":"gold"}]
tellraw @a [{"text":"\\___________________________________________/","color":"#702e00"}]
execute if score #dim_vfxred#dim_vfxred nwbr_number matches 0 run tellraw @a [{"text":"La dimension custom n'a pas été chargée.","color":"red"}]
