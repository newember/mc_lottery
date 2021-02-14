execute as @a store result score @s nwbr_number run clear @s minecraft:trader_llama_spawn_egg 0
execute as @a[scores={nwbr_number=1..}] run function newember_main_lottery:spawn/replace_classic_player_iterate
execute as @e[type=minecraft:item,predicate=newember_main_lottery:to_replace/classic_stand] run data merge entity @s {Item:{id:"minecraft:pufferfish_spawn_egg",tag:{EntityTag:{id:"minecraft:bat",NoAI:1b,NoGravity:1b,Silent:1,Invisible:1,Invulnerable:1,Tags:["nwbr_classic_stand"]},display:{Name:"{\"text\":\"Lotterie classique\"}"},Enchantments:[{"id":"minecraft:mending"}],HideFlags:1}}}
