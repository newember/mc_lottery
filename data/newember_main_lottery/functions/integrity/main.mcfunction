execute as @s[tag=nwbr_classic] run function newember_main_lottery:integrity/check/classic_stand
execute as @s[tag=nwbr_ender] run function newember_main_lottery:integrity/check/ender_stand
execute as @s[tag=nwbr_goldmine] run function newember_main_lottery:integrity/check/goldmine_stand
execute as @s[tag=nwbr_fancy] run function newember_main_lottery:integrity/check/fancy_stand
execute as @s[tag=nwbr_special] run function newember_main_lottery:integrity/check/special_stand
execute as @s[tag=nwbr_skin] run function newember_main_lottery:integrity/check/skin_stand
execute if score @s math matches ..10 run function newember_main_lottery:integrity/everything_must_explode
