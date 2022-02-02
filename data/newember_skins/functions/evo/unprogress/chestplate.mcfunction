execute store result score @s nwbr_sk_prog2set run data get entity @s Inventory[{Slot:-106b}].tag.nbrData.skinProgress
#dengeki_drive_b => downgrade after ~10 min max ((450000-150000)/(600/0.5) quick math)
execute if predicate newember_skins:evolution_skin/dengeki_drive_b run scoreboard players remove @s nwbr_sk_prog2set 250


scoreboard players operation @s nwbr_sk_prog2set > #0 nwbr_number
execute store result storage newember_skins:temp data.skinProgress int 1 run scoreboard players get @s nwbr_sk_prog2set
item modify entity @s armor.chest newember_skins:skin_progress