tag @s remove nwbr_totem
tag @s remove nwbr_totem_strength
scoreboard players set @s nwbr_totem 0

particle minecraft:crimson_spore ~ ~1 ~ 0.5 0.5 0.5 0.05 500 force @a
effect give @s minecraft:slowness 30 0
effect give @s minecraft:strength 120 2
effect give @s minecraft:strength 240 1
effect give @s minecraft:strength 360 0
playsound minecraft:entity.generic.extinguish_fire block @a ~ ~ ~ 1 0
