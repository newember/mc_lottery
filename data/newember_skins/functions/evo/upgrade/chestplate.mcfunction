scoreboard players add @s nwbr_math2 1
execute store result storage newember_skins:temp data.skinLevel int 1 run scoreboard players get @s nwbr_math2

#elytra
execute if predicate newember_skins:evolution_skin/dengeki_drive_b run data modify storage newember_skins:temp data.skinMaxLevel set value 2
execute if predicate newember_skins:evolution_skin/dengeki_drive_b if score @s nwbr_math2 matches 2 run data modify storage newember_skins:temp data.skinName set value 'Dengeki_Drive_B'
execute if predicate newember_skins:evolution_skin/dengeki_drive_b if score @s nwbr_math2 matches 2 run data modify storage newember_skins:temp data.powderName set value "[\"\",{\"text\":\"[\",\"bold\":true,\"italic\":true,\"color\":\"#7D0000\"},{\"text\":\"E\",\"bold\":true,\"italic\":true,\"color\":\"#7D0000\"},{\"text\":\"v\",\"bold\":true,\"italic\":true,\"color\":\"#910000\"},{\"text\":\"o\",\"bold\":true,\"italic\":true,\"color\":\"#9D0000\"},{\"text\":\"l\",\"bold\":true,\"italic\":true,\"color\":\"#AE0000\"},{\"text\":\"u\",\"bold\":true,\"italic\":true,\"color\":\"#C40000\"},{\"text\":\"t\",\"bold\":true,\"italic\":true,\"color\":\"#DD0000\"},{\"text\":\"i\",\"bold\":true,\"italic\":true,\"color\":\"#EC0000\"},{\"text\":\"f\",\"bold\":true,\"italic\":true,\"color\":\"#FF0909\"},{\"text\":\"]\",\"bold\":true,\"italic\":true,\"color\":\"#F90000\"},{\"text\":\" Dengeki Drive B\",\"bold\":false,\"italic\":false,\"color\":\"#FFFFFF\"}]"
execute if predicate newember_skins:evolution_skin/dengeki_drive_b if score @s nwbr_math2 matches 2 run tellraw @s ["",{"text":"Votre skin a évolué en ","color":"gold"},{"text":"[","bold":true,"italic":true,"color":"#FFC61A"},{"text":"Dengeki Drive B","bold":true,"italic":true,"color":"#FFC61A"},{"text":"]","bold":true,"italic":true,"color":"#FFC61A"}]

#finalisation
item modify entity @s armor.chest newember_skins:skin_upgrade
execute at @s unless predicate newember_skins:evolution_skin/dengeki_drive_b run playsound minecraft:ui.toast.challenge_complete block @s ~ ~ ~ 1 1.5
execute at @s unless predicate newember_skins:evolution_skin/dengeki_drive_b unless score @s nwbr_math2 = @s nwbr_math4 run particle minecraft:flame ~ ~1 ~ 0.5 0.5 0.5 0.2 100
execute at @s unless predicate newember_skins:evolution_skin/dengeki_drive_b if score @s nwbr_math2 = @s nwbr_math4 run particle minecraft:soul_fire_flame ~ ~1 ~ 0.5 0.5 0.5 0.3 150
execute at @s if predicate newember_skins:evolution_skin/dengeki_drive_b run playsound minecraft:entity.arrow.hit_player block @s ~ ~ ~ 1 1.5