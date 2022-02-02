execute store result score @s nwbr_sk_prog2set run data get entity @s Inventory[{Slot:102b}].tag.nbrData.skinProgress
scoreboard players operation @s nwbr_sk_prog2set += @s nwbr_sk_prog2add
execute if predicate newember_skins:evolution_skin/dengeki_drive_b run scoreboard players operation @s nwbr_sk_prog2set < #450k nwbr_number
execute store result storage newember_skins:temp data.skinProgress int 1 run scoreboard players get @s nwbr_sk_prog2set
item modify entity @s armor.chest newember_skins:skin_progress