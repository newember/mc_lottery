execute as @s[tag=nwbr_classic] run fill ^-1 ^1 ^1 ^ ^3 ^-1 minecraft:air destroy
execute as @s[tag=!nwbr_classic] run fill ^-1 ^1 ^1 ^ ^3 ^-1 minecraft:air
function newember_main_lottery:result/fetch_to_retrieve
scoreboard players operation @s nwbr_player_id = @s nwbr_lot_owner
particle minecraft:explosion ~ ~1 ~ 1 1 1 1 10 normal
execute if score @s nwbr_number matches 1.. run summon minecraft:item ~ ~2.5 ~ {Item:{id:"minecraft:diamond",Count:1}}
execute if score @s nwbr_number matches 1.. at @s positioned ~ ~2.5 ~ store result entity @e[type=minecraft:item,limit=1,sort=nearest,distance=..0.1] Item.Count int 1 run scoreboard players get @s nwbr_number
execute if score @s nwbr_number matches 1.. at @s positioned ~ ~2.5 ~ run function newember_main_lottery:steal_protect/init
execute if score @s nwbr_number matches 1.. at @s positioned ~ ~2.5 ~ run tag @e[type=minecraft:item,limit=1,sort=nearest,distance=..0.1] add nwbr_stl_tp
tellraw @p ["",{"text":"!!!","obfuscated":true,"color":"#5E0200","hoverEvent":{"action":"show_text","contents":[""]}},{"text":" La lotterie n°","color":"dark_red","hoverEvent":{"action":"show_text","contents":{"text":"Hey that's illegal","color":"red"}}},{"score":{"name":"@s","objective":"nwbr_lot_id"},"color":"dark_red"},{"text":" a été détruite (appartient au joueur n°","color":"dark_red","hoverEvent":{"action":"show_text","contents":{"text":"Hey that's illegal","color":"red"}}},{"score":{"name":"@s","objective":"nwbr_lot_owner"},"color":"dark_red"},{"text":") ","color":"dark_red","hoverEvent":{"action":"show_text","contents":{"text":"Hey that's illegal","color":"red"}}},{"text":"!!!","obfuscated":true,"color":"#5E0200","hoverEvent":{"action":"show_text","contents":[""]}}]
kill @e[tag=nwbr_disp_lot,distance=..2]
