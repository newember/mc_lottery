execute store result score @p nwbr_number run data get entity @p Rotation[0]
#south
execute if score @p nwbr_number matches 315..360 unless score @p nwbr_number matches 360 run function newember_main_lottery:spawn/summon/armorstand/stand_south
#still south (lol)
execute if score @p nwbr_number matches -45..45 unless score @p nwbr_number matches 45 run function newember_main_lottery:spawn/summon/armorstand/stand_south
#west (kanye)
execute if score @p nwbr_number matches 45..135 unless score @p nwbr_number matches 135 run function newember_main_lottery:spawn/summon/armorstand/stand_west
#north
execute if score @p nwbr_number matches 135..225 unless score @p nwbr_number matches 225 run function newember_main_lottery:spawn/summon/armorstand/stand_north
#east
execute if score @p nwbr_number matches 225..315 unless score @p nwbr_number matches 315 run function newember_main_lottery:spawn/summon/armorstand/stand_east
#ET CEST REPARTIT PARCE QUE CA VA DE -360 A 360, C REPARTIT POUR UN TOUR LITTERALEMENT M D R JADORE MINECRAFT C SUPER C BIEN CODE ET TOUT JADORE GENRE VRAIMMENT HEIN
#south
execute if score @p nwbr_number matches -360..-315 unless score @p nwbr_number matches -315 run function newember_main_lottery:spawn/summon/armorstand/stand_south
#west
execute if score @p nwbr_number matches -315..-225 unless score @p nwbr_number matches -225 run function newember_main_lottery:spawn/summon/armorstand/stand_west
#north
execute if score @p nwbr_number matches -225..-135 unless score @p nwbr_number matches -135 run function newember_main_lottery:spawn/summon/armorstand/stand_north
#east
execute if score @p nwbr_number matches -135..-45 unless score @p nwbr_number matches -45 run function newember_main_lottery:spawn/summon/armorstand/stand_east
