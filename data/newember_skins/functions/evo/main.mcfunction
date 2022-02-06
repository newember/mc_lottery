#progress
execute as @a run scoreboard players operation @s nwbr_damage_dT -= @s nwbr_damage_done
execute as @a run scoreboard players operation @s nwbr_damage_dT *= #-1 nwbr_number
execute as @a run scoreboard players operation @s nwbr_flyT -= @s nwbr_fly
execute as @a run scoreboard players operation @s nwbr_flyT *= #-1 nwbr_number
execute as @a run scoreboard players operation @s nwbr_arrow_hitT -= @s nwbr_arrow_hit
execute as @a run scoreboard players operation @s nwbr_arrow_hitT *= #-1 nwbr_number

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