#progress
execute as @a run scoreboard players operation @s nwbr_damage_dT -= @s nwbr_damage_done
execute as @a run scoreboard players operation @s nwbr_damage_dT *= #-1 nwbr_number
execute as @a run scoreboard players operation @s nwbr_flyT -= @s nwbr_fly
execute as @a run scoreboard players operation @s nwbr_flyT *= #-1 nwbr_number
execute as @a run scoreboard players operation @s nwbr_arrow_hitT -= @s nwbr_arrow_hit
execute as @a run scoreboard players operation @s nwbr_arrow_hitT *= #-1 nwbr_number

execute as @a run scoreboard players operation @s nwbr_brk_bscore = @s nwbr_brk_stone
execute as @a run scoreboard players operation @s nwbr_brk_bscore += @s nwbr_brk_andesit
execute as @a run scoreboard players operation @s nwbr_brk_bscore += @s nwbr_brk_diorite
execute as @a run scoreboard players operation @s nwbr_brk_bscore += @s nwbr_brk_granite
execute as @a run scoreboard players operation @s nwbr_brk_bscore /= #3 nwbr_number
execute as @a run scoreboard players operation @s nwbr_brk_bscore += @s nwbr_brk_deepslt
execute as @a run scoreboard players operation @s nwbr_brk_bscore /= #50 nwbr_number
execute as @a run scoreboard players operation @s nwbr_brk_bscore += @s nwbr_brk_dp_reds
execute as @a run scoreboard players operation @s nwbr_brk_bscore += @s nwbr_brk_st_reds
execute as @a run scoreboard players operation @s nwbr_brk_bscore /= #2 nwbr_number
execute as @a run scoreboard players operation @s nwbr_brk_bscore += @s nwbr_brk_dp_diam
execute as @a run scoreboard players operation @s nwbr_brk_bscore += @s nwbr_brk_st_diam


execute as @a run scoreboard players operation @s nwbr_use_bscore = @s nwbr_use_stone
execute as @a run scoreboard players operation @s nwbr_use_bscore += @s nwbr_use_andesit
execute as @a run scoreboard players operation @s nwbr_use_bscore += @s nwbr_use_diorite
execute as @a run scoreboard players operation @s nwbr_use_bscore += @s nwbr_use_granite
execute as @a run scoreboard players operation @s nwbr_use_bscore /= #3 nwbr_number
execute as @a run scoreboard players operation @s nwbr_use_bscore += @s nwbr_use_deepslt
execute as @a run scoreboard players operation @s nwbr_use_bscore /= #50 nwbr_number
execute as @a run scoreboard players operation @s nwbr_use_bscore += @s nwbr_use_dp_reds
execute as @a run scoreboard players operation @s nwbr_use_bscore += @s nwbr_use_st_reds
execute as @a run scoreboard players operation @s nwbr_use_bscore /= #2 nwbr_number
execute as @a run scoreboard players operation @s nwbr_use_bscore += @s nwbr_use_dp_diam
execute as @a run scoreboard players operation @s nwbr_use_bscore += @s nwbr_use_st_diam


execute as @a run scoreboard players operation @s nwbr_use_bscoreT -= @s nwbr_use_bscore
execute as @a run scoreboard players operation @s nwbr_brk_penalty += @s nwbr_use_bscoreT
execute as @a run scoreboard players operation @s nwbr_use_bscoreT = @s nwbr_use_bscore

execute as @a run scoreboard players operation @s nwbr_brk_bscoreT -= @s nwbr_brk_bscore
execute as @a run scoreboard players operation @s nwbr_brk_bscoreT *= #-1 nwbr_number
execute as @a run scoreboard players operation @s nwbr_brk_bscoreT += @s nwbr_brk_penalty

#------------ Progress ------------#
#chestplate
scoreboard players set @a nwbr_sk_prog2add 0
execute as @a if predicate newember_skins:evolution_type/elytra_fly run scoreboard players operation @s nwbr_sk_prog2add = @s nwbr_flyT
execute as @a unless score @s nwbr_sk_prog2add matches 0 run function newember_skins:evo/store/chestplate

#offhand
scoreboard players set @a nwbr_sk_prog2add 0
execute as @a if predicate newember_skins:evolution_type/arrow_hit_offhand unless predicate newember_skins:evolution_type/arrow_hit run scoreboard players operation @s nwbr_sk_prog2add = @s nwbr_arrow_hitT
execute as @a unless score @s nwbr_sk_prog2add matches 0 run function newember_skins:evo/store/offhand

#mainhand
scoreboard players set @a nwbr_sk_prog2add 0
execute as @a if predicate newember_skins:evolution_type/arrow_hit run scoreboard players operation @s nwbr_sk_prog2add = @s nwbr_arrow_hitT
execute as @a if predicate newember_skins:evolution_type/melee_attacks run scoreboard players operation @s nwbr_sk_prog2add = @s nwbr_damage_dT
execute as @a unless score @s nwbr_sk_prog2add matches 0 run function newember_skins:evo/store/mainhand

#------------ Level Upgrade ------------#
execute as @a run function newember_skins:evo/upgrade/chestplate_prepare
execute as @a run function newember_skins:evo/upgrade/mainhand_prepare
execute as @a run function newember_skins:evo/upgrade/offhand_prepare

#un-progression
execute as @a if predicate newember_skins:evolution_type/elytra_fly run function newember_skins:evo/unprogress/chestplate

#downgrade
execute as @a run function newember_skins:evo/downgrade/chestplate_prepare

#------------ Reset ------------#
execute as @a run scoreboard players operation @s nwbr_damage_dT = @s nwbr_damage_done
execute as @a run scoreboard players operation @s nwbr_flyT = @s nwbr_fly
execute as @a run scoreboard players operation @s nwbr_arrow_hitT = @s nwbr_arrow_hit
execute as @a run scoreboard players operation @s nwbr_brk_penalty += @s nwbr_brk_bscoreT
execute as @a run scoreboard players operation @s nwbr_brk_bscoreT = @s nwbr_brk_bscore