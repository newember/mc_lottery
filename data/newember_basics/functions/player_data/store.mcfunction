loot spawn ~ 420.69 ~ loot newember_basics:core/get_head
execute positioned ~ 420.69 ~ run data modify storage newember_basics:core players.names append from entity @e[type=minecraft:item,sort=nearest,distance=..0.01,limit=1] Item.tag.SkullOwner.Name
execute positioned ~ 420.69 ~ run data modify storage newember_basics:core players.uuids append from entity @e[type=minecraft:item,sort=nearest,distance=..0.01,limit=1] Item.tag.SkullOwner.Id[]
execute positioned ~ 420.69 ~ run kill @e[type=minecraft:item,sort=nearest,distance=..0.01,limit=1]
