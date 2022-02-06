execute if block ~ ~ ~ minecraft:water_cauldron[level=1] run setblock ~ ~ ~ minecraft:cauldron
execute if block ~ ~ ~ minecraft:water_cauldron[level=2] run setblock ~ ~ ~ minecraft:water_cauldron[level=1]
execute if block ~ ~ ~ minecraft:water_cauldron[level=3] run setblock ~ ~ ~ minecraft:water_cauldron[level=2]
playsound minecraft:item.bottle.fill block @a

summon item ~ ~ ~ {Item:{id:"minecraft:sugar",Count:1,tag:{nbrData:{skinModifier:1}, Enchantments:[{id:"minecraft:infinity",lvl:1}], HideFlags:1}}}
data modify entity @e[limit=1,sort=nearest,predicate=newember_skins:is_skin_modifier] Item.tag.nbrData.skinName set from entity @s Item.tag.nbrData.skinName
data modify entity @e[limit=1,sort=nearest,predicate=newember_skins:is_skin_modifier] Item.tag.nbrData.skinLevel set from entity @s Item.tag.nbrData.skinLevel
data modify entity @e[limit=1,sort=nearest,predicate=newember_skins:is_skin_modifier] Item.tag.nbrData.skinMaxLevel set from entity @s Item.tag.nbrData.skinMaxLevel
data modify entity @e[limit=1,sort=nearest,predicate=newember_skins:is_skin_modifier] Item.tag.nbrData.skinProgress set from entity @s Item.tag.nbrData.skinProgress
data modify entity @e[limit=1,sort=nearest,predicate=newember_skins:is_skin_modifier] Item.tag.nbrData.skinEvoType set from entity @s Item.tag.nbrData.skinEvoType
data modify entity @e[limit=1,sort=nearest,predicate=newember_skins:is_skin_modifier] Item.tag.nbrData.skinRarity set from entity @s Item.tag.nbrData.powder.skinRarity
data modify entity @e[limit=1,sort=nearest,predicate=newember_skins:is_skin_modifier] Item.tag.nbrData.typeAvailable set from entity @s Item.tag.nbrData.powder.typeAvailable
data modify entity @e[limit=1,sort=nearest,predicate=newember_skins:is_skin_modifier] Item.tag.display.Lore set from entity @s Item.tag.nbrData.powder.Lore
data modify entity @e[limit=1,sort=nearest,predicate=newember_skins:is_skin_modifier] Item.tag.display.Name set from entity @s Item.tag.nbrData.powder.Name
data remove entity @s Item.tag.nbrData.powder
data remove entity @s Item.tag.nbrData.skinName
data remove entity @s Item.tag.nbrData.skinLevel
data remove entity @s Item.tag.nbrData.skinProgress
data remove entity @s Item.tag.nbrData.skinEvoType
data remove entity @s Item.tag.nbrData.skinMaxLevel
data remove entity @s Item.tag.nbrData.haveSkin