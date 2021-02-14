scoreboard players set @s math 0
execute if block ^-1 ^1 ^-1 #newember_basics:air run scoreboard players add @s math 1
execute if block ^-1 ^1 ^1 #newember_basics:air run scoreboard players add @s math 1
execute if block ^ ^1 ^1 #newember_basics:air run scoreboard players add @s math 1
execute if block ^ ^1 ^ #newember_basics:air run scoreboard players add @s math 1
execute if block ^ ^1 ^-1 #newember_basics:air run scoreboard players add @s math 1
execute if block ^ ^2 ^1 #newember_basics:air run scoreboard players add @s math 1
execute if block ^ ^2 ^ #newember_basics:air run scoreboard players add @s math 1
execute if block ^ ^2 ^-1 #newember_basics:air run scoreboard players add @s math 1
execute if block ^ ^3 ^1 #newember_basics:air run scoreboard players add @s math 1
execute if block ^ ^3 ^ #newember_basics:air run scoreboard players add @s math 1
execute if block ^ ^3 ^-1 #newember_basics:air run scoreboard players add @s math 1
execute if entity @s[scores={math=..10}] run tag @s add nwbr_no_room
