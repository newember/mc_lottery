############ abilities ############
# - basic
function newember_special_items:abilities/weapons/360_no_scope/main

# - spell
execute as @e[tag=nwbr_thndr_lockd,scores={nwbr_abts_main=1..}] at @s run function newember_special_items:abilities/spell/thunder_locked

# - boss
function newember_special_items:abilities/boss/guard_of_misfortune

# - fullset
execute if score #modulo#50 nwbr_number matches 11 run function newember_special_items:passive/armor/misfortune_fullset

############ bossbar ############
function newember_special_items:bossbar/main

############ upgrade ############
execute as @e[predicate=newember_special_items:item/upgrade/active] at @s run function newember_special_items:upgrade/main

############ animation ############
execute as @e[tag=nwbr_animation] at @s run function newember_special_items:vfx/animation
