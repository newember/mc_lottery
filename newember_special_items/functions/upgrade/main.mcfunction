scoreboard players set @s nwbr_number 0
execute store result score @s nwbr_math if data entity @s Item.tag.nwbr_upgrade.list[]
function newember_special_items:upgrade/main_recursive
execute if score @s nwbr_number matches 1.. run function newember_special_items:upgrade/consume
data remove entity @s Item.tag.nwbr_upgrade.before
data remove entity @s Item.tag.nwbr_upgrade.current
