tag @s remove nwbr_totem
tag @s remove nwbr_totem_cursed
scoreboard players set @s nwbr_totem 0
execute rotated ~ 0 run summon minecraft:lightning_bolt ^1 ^ ^
execute rotated ~ 0 run summon minecraft:lightning_bolt ^-1 ^ ^
execute rotated ~ 0 run summon minecraft:lightning_bolt ^ ^ ^1
execute rotated ~ 0 run summon minecraft:lightning_bolt ^ ^ ^-1
particle minecraft:smoke ~ ~1 ~ 0.5 0.5 0.5 0.05 500 force @a
effect give @s minecraft:blindness 10 0
effect give @s minecraft:slowness 10 1
effect give @s minecraft:strength 60 0
effect give @s minecraft:wither 60 0
playsound minecraft:entity.wither.spawn block @a ~ ~ ~ 1 0.1
