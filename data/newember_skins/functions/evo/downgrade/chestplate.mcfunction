execute store result storage newember_skins:temp data.skinLevel int 1 run scoreboard players get @s nwbr_math2

#elytra
execute if predicate newember_skins:evolution_skin/dengeki_drive_b if score @s nwbr_math2 matches 1 run data modify storage newember_skins:temp data.skinName set value 'Omegadrive_B'
execute if predicate newember_skins:evolution_skin/dengeki_drive_b if score @s nwbr_math2 matches 1 run data modify storage newember_skins:temp data.powderName set value "[\"\",{\"text\":\"[\",\"bold\":true,\"italic\":true,\"color\":\"#7D0000\"},{\"text\":\"E\",\"bold\":true,\"italic\":true,\"color\":\"#7D0000\"},{\"text\":\"v\",\"bold\":true,\"italic\":true,\"color\":\"#910000\"},{\"text\":\"o\",\"bold\":true,\"italic\":true,\"color\":\"#9D0000\"},{\"text\":\"l\",\"bold\":true,\"italic\":true,\"color\":\"#AE0000\"},{\"text\":\"u\",\"bold\":true,\"italic\":true,\"color\":\"#C40000\"},{\"text\":\"t\",\"bold\":true,\"italic\":true,\"color\":\"#DD0000\"},{\"text\":\"i\",\"bold\":true,\"italic\":true,\"color\":\"#EC0000\"},{\"text\":\"f\",\"bold\":true,\"italic\":true,\"color\":\"#FF0909\"},{\"text\":\"]\",\"bold\":true,\"italic\":true,\"color\":\"#F90000\"},{\"text\":\" Omegadrive B\",\"bold\":false,\"italic\":false,\"color\":\"#FFFFFF\"}]"
execute if predicate newember_skins:evolution_skin/dengeki_drive_b if score @s nwbr_math2 matches 1 run tellraw @s ["",{"text":"Votre skin a régressé en ","color":"#9D7551"},{"text":"[","bold":true,"italic":true,"color":"#FFC61A"},{"text":"Omega Drive B","bold":true,"italic":true,"color":"#FFC61A"},{"text":"]","bold":true,"italic":true,"color":"#FFC61A"}]

#finalisation
item modify entity @s armor.chest newember_skins:skin_upgrade
execute at @s run playsound minecraft:ui.stonecutter.take_result block @s ~ ~ ~ 1 2