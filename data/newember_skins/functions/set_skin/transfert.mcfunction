data merge entity @s {Item:{tag:{nbrData:{skinLevel:1,haveSkin:1}}}}
data modify entity @s Item.tag.nbrData.skinName set from entity @e[limit=1,sort=nearest,predicate=newember_skins:is_skin_modifier] Item.tag.nbrData.skinName
data modify entity @s Item.tag.nbrData.skinLevel set from entity @e[limit=1,sort=nearest,predicate=newember_skins:is_skin_modifier] Item.tag.nbrData.skinLevel
data modify entity @s Item.tag.nbrData.powder.skinRarity set from entity @e[limit=1,sort=nearest,predicate=newember_skins:is_skin_modifier] Item.tag.nbrData.skinRarity
data modify entity @s Item.tag.nbrData.powder.typeAvailable set from entity @e[limit=1,sort=nearest,predicate=newember_skins:is_skin_modifier] Item.tag.nbrData.typeAvailable
data modify entity @s Item.tag.nbrData.powder.Lore set from entity @e[limit=1,sort=nearest,predicate=newember_skins:is_skin_modifier] Item.tag.display.Lore
data modify entity @s Item.tag.nbrData.powder.Name set from entity @e[limit=1,sort=nearest,predicate=newember_skins:is_skin_modifier] Item.tag.display.Name
kill @e[limit=1,sort=nearest,predicate=newember_skins:is_skin_modifier]