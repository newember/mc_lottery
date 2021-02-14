effect give @s minecraft:strength 45 3
effect give @s minecraft:slowness 45 0
effect give @s minecraft:blindness 2 0
particle minecraft:crimson_spore ~ ~1 ~ 0.5 0.5 0.5 0.05 500 force @a
advancement revoke @s only newember_special_items:trigger/entity/hurted_by_red_creeper
tellraw @s {"text":"The red creeper gave you Strength IV for 45 seconds","italic":true,"color":"dark_red"}
