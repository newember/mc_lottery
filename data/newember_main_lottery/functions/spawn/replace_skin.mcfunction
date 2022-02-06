execute as @a store result score @s nwbr_number run clear @s minecraft:ocelot_spawn_egg 0
execute as @a[scores={nwbr_number=1..}] run function newember_main_lottery:spawn/replace_skin_player_iterate
execute as @e[type=minecraft:item,predicate=newember_main_lottery:to_replace/skin_stand] run data merge entity @s {Item:{id:"minecraft:bee_spawn_egg",tag:{EntityTag:{id:"minecraft:bat",NoAI:1b,NoGravity:1b,Silent:1,Invisible:1,Invulnerable:1,Tags:["nwbr_skin_stand"]},display:{Name:"{\"text\":\"Lotterie classique\"}"},Enchantments:[{"id":"minecraft:mending"}],HideFlags:1}}}
