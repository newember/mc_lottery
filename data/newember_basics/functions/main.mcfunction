############ Main Timer ############
scoreboard players add timer nwbr_number 1
execute if score timer nwbr_number matches 72000.. run scoreboard players set timer nwbr_number 0

scoreboard players operation #modulo#100 nwbr_number = timer nwbr_number
scoreboard players operation #modulo#100 nwbr_number %= #100 nwbr_number

scoreboard players operation #modulo#10 nwbr_number = timer nwbr_number
scoreboard players operation #modulo#10 nwbr_number %= #10 nwbr_number

scoreboard players operation #modulo#50 nwbr_number = timer nwbr_number
scoreboard players operation #modulo#50 nwbr_number %= #50 nwbr_number

scoreboard players operation #modulo#45 nwbr_number = timer nwbr_number
scoreboard players operation #modulo#45 nwbr_number %= #45 nwbr_number

scoreboard players operation #modulo#27 nwbr_number = timer nwbr_number
scoreboard players operation #modulo#27 nwbr_number %= #27 nwbr_number

############ time control ############
execute store result score #time nwbr_number run time query daytime
execute if score #time nwbr_number matches 17950..23050 run scoreboard players set #goto#Midnight nwbr_number 0
execute if score #time nwbr_number matches 950..9050 run scoreboard players set #goto#Day nwbr_number 0

execute if score #goto#Midnight nwbr_number matches 1.. run time add 50
execute if score #goto#Day nwbr_number matches 1.. run time add 50
execute if score #goto#Midnight nwbr_number matches 2.. run time add 50
execute if score #goto#Day nwbr_number matches 2.. run time add 50
execute if score #goto#Midnight nwbr_number matches 3.. run time add 100
execute if score #goto#Day nwbr_number matches 3.. run time add 100

execute if score #goto#Midnight nwbr_number matches 1.. run scoreboard players add #total#timeAdded nwbr_number 50
execute if score #goto#Day nwbr_number matches 1.. run scoreboard players add #total#timeAdded nwbr_number 50
execute if score #goto#Midnight nwbr_number matches 2.. run scoreboard players add #total#timeAdded nwbr_number 50
execute if score #goto#Day nwbr_number matches 2.. run scoreboard players add #total#timeAdded nwbr_number 50
execute if score #goto#Midnight nwbr_number matches 3.. run scoreboard players add #total#timeAdded nwbr_number 100
execute if score #goto#Day nwbr_number matches 3.. run scoreboard players add #total#timeAdded nwbr_number 100

############ player ids ############
execute if score #modulo#100 nwbr_number matches 0 run scoreboard players add @a nwbr_player_id 0
execute if score #modulo#100 nwbr_number matches 0 as @a[scores={nwbr_player_id=0},limit=1] run function newember_basics:set_self_id

############ lottery ############
function newember_main_lottery:main

############ special items ############
function newember_special_items:main

#- lot ids -#
scoreboard players operation #modulo nwbr_number = timer nwbr_number
scoreboard players operation #modulo nwbr_number %= #100 nwbr_number
execute if score #modulo#100 nwbr_number matches 20 run scoreboard players add @e[tag=nwbr_lot_main] nwbr_lot_id 0



#showcase

execute if score #modulo#27 nwbr_number matches 3 run replaceitem entity newember hotbar.0 minecraft:creeper_spawn_egg{EntityTag: {Attributes: [{Base: 30, Name: "generic.max_health"}, {Base: 48, Name: "generic.follow_range"}, {Base: 1, Name: "generic.knockback_resistance"}, {Base: 0.6d, Name: "generic.movement_speed"}], Team: "nwbr_red", Health: 30.0f, ExplosionRadius: 5b, ActiveEffects: [{Duration: 999999, Id: 24b, Amplifier: 1b}, {Duration: 5000, Id: 5b, Amplifier: 1b}]}, HideFlags: 1, display: {Lore: ['[{"text":"Strong","italic":false,"color":"dark_red"}]', '[{"text":"Great explosion","italic":false,"color":"#ff4800"}]', '[{"text":"Fast","italic":false,"color":"#fffb00"}]'], Name: '["",{"text":"[","italic":false,"color":"#FF0000"},{"translate":"color.minecraft.red","italic":false,"color":"#FF0000"},{"text":"] ","italic":false,"color":"#FF0000"},{"translate":"item.minecraft.creeper_spawn_egg","italic":false,"color":"dark_green"}]'}, Enchantments: [{lvl: 1, id: "minecraft:protection"}]}
execute if score #modulo#27 nwbr_number matches 6 run replaceitem entity newember hotbar.0 minecraft:glowstone_dust{nwbr_upgrade: {list: [{from: 5, id: "enchantment", to: 6, data: "sharpness"}], active: 1b}, HideFlags: 1, Enchantments: [{lvl: 1, id: "minecraft:lure"}], display: {Lore: ['["",{"translate":"enchantment.minecraft.sharpness","color":"yellow"},{"text":" V","color":"yellow"},{"text":" >>> ","color":"aqua"},{"translate":"enchantment.minecraft.sharpness","color":"gold"},{"text":" VI","color":"gold"}]'], Name: '[{"translate":"enchantment.minecraft.sharpness","color":"#F80303"},{"text":"+","color":"#F80303","bold":true}]'}}
execute if score #modulo#27 nwbr_number matches 9 run replaceitem entity newember hotbar.0 minecraft:bow{nwbr_data: {type: 9, modifiers: [{lvl: 1, id: "360mlg"}, {lvl: 1, id: "unrepairable"}], rarity: 3}, RepairCost: 1000, Damage: 61, display: {Lore: ['[{"text":"3","color":"dark_red"},{"text":"6","color":"#cc0000"},{"text":"0","color":"red"},{"text":" Power","color":"aqua"}]', '[{"text":"Unrepairable","italic":true,"color":"dark_gray"}]'], Name: '[{"text":"360Bow","italic":false,"color":"gold"}]'}, Enchantments: [{lvl: 1, id: "infinity"}, {lvl: 5, id: "power"}, {lvl: 1, id: "unbreaking"}]}
execute if score #modulo#27 nwbr_number matches 12 run replaceitem entity newember hotbar.0 minecraft:splash_potion{CustomPotionEffects: [{Duration: 3000, Ambient: 1b, Id: 5, Amplifier: 2}, {Duration: 3000, Ambient: 1b, Id: 24}, {Duration: 3000, Ambient: 1b, Id: 2}], CustomPotionColor: 5705984, display: {Name: '["",{"translate":"item.minecraft.splash_potion.effect.strength","italic":false,"color":"#F80303"},{"text":" III","bold":true,"italic":false,"color":"#F80303"}]'}}
execute if score #modulo#27 nwbr_number matches 15 run replaceitem entity newember hotbar.0 minecraft:tropical_fish_spawn_egg{EntityTag: {NoGravity: 1b, Silent: 1, Invulnerable: 1, id: "minecraft:bat", Invisible: 1, NoAI: 1b, Tags: ["nwbr_lootbox", "nwbr_mk1"]}, display: {Name: '["",{"text":"[","bold":true,"color":"#EBEBEB"},{"text":"Lootbox Mk1","color":"#FF750F"},{"text":"]","bold":true,"color":"#EBEBEB"}]'}, Enchantments: [{}]}
execute if score #modulo#27 nwbr_number matches 18 run replaceitem entity newember hotbar.0 minecraft:enchanted_golden_apple{nwbr_data: {lvl: 3, type: 0, modifiers: [{lvl: 1, id: "strength"}], rarity: 5, element: 2}, display: {Lore: ['[{"text":"Strong","italic":false,"color":"dark_red"}]'], Name: '["",{"text":"[","italic":false,"color":"#F80303"},{"translate":"color.minecraft.red","italic":false,"color":"#F80303"},{"text":"] ","italic":false,"color":"#F80303"},{"translate":"item.minecraft.enchanted_golden_apple","italic":false,"color":"#FFCC00"}]'}, Enchantments: [{lvl: 3, id: "fire_aspect"}]}
execute if score #modulo#27 nwbr_number matches 21 run replaceitem entity newember hotbar.0 minecraft:diamond_boots{nwbr_data: {lvl: 1, type: 4, modifiers: [], rarity: 2, element: 1}, Damage: 0, AttributeModifiers: [{Amount: -0.15d, Slot: "feet", AttributeName: "generic.attack_damage", Operation: 2, UUID: [I; -120102, 8517, 22919, -17034], Name: "Weak"}, {Amount: 0.1d, Slot: "feet", AttributeName: "generic.max_health", Operation: 2, UUID: [I; -120102, 8517, 22919, -17034], Name: "But Tanky"}, {Amount: 3, Slot: "feet", AttributeName: "generic.armor", Operation: 0, UUID: [I; 1028366226, 1075822468, 1038426324, 1382967004], Name: "generic.armor"}, {Amount: 2, Slot: "feet", AttributeName: "generic.armor_toughness", Operation: 0, UUID: [I; 1028366226, 1075822468, 1038426324, 1382967004], Name: "generic.armor_toughness"}], display: {Lore: ['[{"text":"Pacifist way of life","italic":true,"color":"aqua"}]']}}
execute if score #modulo#27 nwbr_number matches 24 run replaceitem entity newember hotbar.0 minecraft:chainmail_boots{Damage: 0, repairCost: "10000", AttributeModifiers: [{Amount: 3.2d, Slot: "feet", AttributeName: "generic.knockback_resistance", Operation: 2, UUID: [I; 1059378316, 1057243278, 1064884183, 1326677145], Name: "Strong"}, {Amount: -0.13d, Slot: "feet", AttributeName: "generic.movement_speed", Operation: 1, UUID: [I; 1059378316, 1057243278, 1064884183, 1326677145], Name: "But slow"}, {Amount: 1, Slot: "feet", AttributeName: "generic.armor", Operation: 0, UUID: [I; 1047894472, 1071243743, 1080673114, 1189048587], Name: "generic.armor"}], display: {Lore: ['[{"text":"Unrepairable","italic":true,"color":"dark_gray"}]'], Name: '["",{"text":"H","color":"#310000"},{"text":"e","color":"#4F0000"},{"text":"a","color":"#660000"},{"text":"v","color":"#860000"},{"text":"y ","color":"#B00000"},{"text":"B","color":"#310000"},{"text":"o","color":"#4F0000"},{"text":"o","color":"#860000"},{"text":"t","color":"#970000"},{"text":"s","color":"#A80000"}]'}, Enchantments: [{lvl: 10, id: "minecraft:feather_falling"}, {lvl: 4, id: "minecraft:unbreaking"}]}
execute if score #modulo#27 nwbr_number matches 0 run replaceitem entity newember hotbar.0 minecraft:diamond_boots{nwbr_data: {lvl: 1, type: 4, modifiers: [], rarity: 2, element: 2}, Damage: 0, AttributeModifiers: [{Amount: 0.1d, Slot: "feet", AttributeName: "generic.attack_damage", Operation: 2, UUID: [I; -120102, 28546, 222044, -57092], Name: "Fragile"}, {Amount: -0.15d, Slot: "feet", AttributeName: "generic.max_health", Operation: 2, UUID: [I; -120102, 28546, 222044, -57092], Name: "But strong"}, {Amount: 3, Slot: "feet", AttributeName: "generic.armor", Operation: 0, UUID: [I; 1028366226, 1075322468, 1038426324, 1382967004], Name: "generic.armor"}, {Amount: 2, Slot: "feet", AttributeName: "generic.armor_toughness", Operation: 0, UUID: [I; 1028366226, 1075822468, 1038426324, 1382967014], Name: "generic.armor_toughness"}], display: {Lore: ['[{"text":"BRUT4L","italic":false,"color":"dark_red","bold":true},{"text":" way of life","bold":false}]']}}
