execute at @s run function newember_main_lottery:integrity/main
execute at @s run fill ^-1 ^3 ^1 ^ ^3 ^-1 minecraft:air
execute at @s run fill ^-1 ^1 ^1 ^ ^2 ^-1 minecraft:air
execute as @s[tag=nwbr_classic] at @s positioned ~ ~1 ~ run function newember_main_lottery:spawn/summon/item/classic
execute as @s[tag=nwbr_ender] at @s positioned ~ ~1 ~ run function newember_main_lottery:spawn/summon/item/ender
execute as @s[tag=nwbr_fancy] at @s positioned ~ ~1 ~ run function newember_main_lottery:spawn/summon/item/fancy
execute as @s[tag=nwbr_goldmine] at @s positioned ~ ~1 ~ run function newember_main_lottery:spawn/summon/item/goldmine
execute as @s[tag=nwbr_special] at @s positioned ~ ~1 ~ run function newember_main_lottery:spawn/summon/item/special
function newember_main_lottery:result/fetch_to_retrieve
scoreboard players operation @s nwbr_player_id = @s nwbr_lot_owner
execute as @s[tag=!nwbr_classic] if score @s nwbr_number matches 1.. run summon minecraft:item ~ ~2.5 ~ {Item:{id:"minecraft:diamond",Count:1}}
execute as @s[tag=!nwbr_classic] if score @s nwbr_number matches 1.. at @s positioned ~ ~2.5 ~ store result entity @e[type=minecraft:item,limit=1,sort=nearest,distance=..0.1] Item.Count int 1 run scoreboard players get @s nwbr_number
execute as @s[tag=!nwbr_classic] if score @s nwbr_number matches 1.. at @s positioned ~ ~2.5 ~ run function newember_main_lottery:steal_protect/init
execute as @s[tag=!nwbr_classic] if score @s nwbr_number matches 1.. at @s positioned ~ ~2.5 ~ run tag @e[type=minecraft:item,limit=1,sort=nearest,distance=..0.1] add nwbr_stl_tp
execute at @s run kill @e[tag=nwbr_disp_lot,distance=..1]
