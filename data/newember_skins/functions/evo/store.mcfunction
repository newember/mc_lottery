execute store result score @s nwbr_sk_prog2set run data get entity @s SelectedItem.tag.nbrData.skinProgress
scoreboard players operation @s nwbr_sk_prog2set += @s nwbr_sk_prog2add
execute store result storage newember_skins:temp data.skinProgress int 1 run scoreboard players get @s nwbr_sk_prog2set
item modify entity @s weapon.mainhand newember_skins:skin_progress