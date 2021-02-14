execute as @e[tag=nwbr_missf_guard] at @s store result score @s nwbr_health run data get entity @s Health 1
execute as @e[tag=nwbr_missf_guard] at @s store result score @s nwbr_math run execute if entity @a[distance=..32]

#phase 1
execute as @e[tag=!nwbr_phase1,tag=nwbr_missf_guard,scores={nwbr_math=1}] run say Je suis le guardien du Roi Misfortune, prépare toi à mourir.
execute as @e[tag=!nwbr_phase1,tag=nwbr_missf_guard,scores={nwbr_math=2..}] run say Je suis le guardien du Roi Misfortune, préparez vous à mourir.

tag @e[tag=!nwbr_phase1,tag=nwbr_missf_guard,scores={nwbr_math=1..}] add nwbr_phase1

#phase 2
execute as @e[tag=!nwbr_phase2,tag=nwbr_missf_guard,scores={nwbr_health=..45,nwbr_math=1}] run say tu crois m'impressioner ?
execute as @e[tag=!nwbr_phase2,tag=nwbr_missf_guard,scores={nwbr_health=..45,nwbr_math=2..}] run say vous croyez m'impressioner ?

tag @e[tag=!nwbr_phase2,tag=nwbr_missf_guard,scores={nwbr_health=..45,nwbr_math=1..}] add nwbr_phase2

#phase 3
execute as @e[tag=!nwbr_phase3,tag=nwbr_missf_guard,scores={nwbr_health=..30,nwbr_math=1}] run say Seul face à moi ? Cette inconscience te menera à ta perte.
execute as @e[tag=!nwbr_phase3,tag=nwbr_missf_guard,scores={nwbr_health=..30,nwbr_math=2..}] run say Vous etes plusieurs mais quel comble ! Ce n'est pas assez, quel dommage... Pour vous.
effect give @e[tag=!nwbr_phase3,tag=nwbr_missf_guard,scores={nwbr_health=..30,nwbr_math=1..}] minecraft:strength 999999 0
execute if score #modulo#50 nwbr_number matches 32 as @e[tag=nwbr_phase3,tag=nwbr_missf_guard] run weather thunder 3

execute if score #modulo#100 nwbr_number matches 16 as @e[tag=nwbr_phase3,tag=nwbr_missf_guard] run function newember_special_items:abilities/spell/thunder_locked_init
tag @e[tag=!nwbr_phase3,tag=nwbr_missf_guard,scores={nwbr_health=..30,nwbr_math=1..}] add nwbr_phase3

#phase 3B
execute as @e[tag=!nwbr_phase3B,tag=nwbr_phase3,tag=nwbr_missf_guard,scores={nwbr_health=50..,nwbr_math=1..}] run say Tant de mal pour si peu, quel dommage !

tag @e[tag=!nwbr_phase3B,tag=nwbr_phase3,tag=nwbr_missf_guard,scores={nwbr_health=50..,nwbr_math=1..}] add nwbr_phase3B

#phase 4
execute as @e[tag=!nwbr_phase4,tag=nwbr_missf_guard,scores={nwbr_health=..20,nwbr_math=1..}] run say Je suis agacé, il est temps d'en finir.
effect give @e[tag=!nwbr_phase4,tag=nwbr_missf_guard,scores={nwbr_health=..20,nwbr_math=1..}] minecraft:resistance 999999 0

tag @e[tag=!nwbr_phase4,tag=nwbr_missf_guard,scores={nwbr_health=..20,nwbr_math=1..}] add nwbr_phase4

#phase 5
execute as @e[tag=!nwbr_phase5,tag=nwbr_missf_guard,scores={nwbr_health=..5,nwbr_math=1..}] run say Non, c'est impossible... Je me battrai jusqu'à la fin, à la gloire du Roi Misfortune.
tag @e[tag=!nwbr_phase5,tag=nwbr_missf_guard,scores={nwbr_health=..5,nwbr_math=1..}] remove nwbr_phase5B
tag @e[tag=!nwbr_phase5,tag=nwbr_missf_guard,scores={nwbr_health=..5,nwbr_math=1..}] add nwbr_phase5

#phase 5B
execute as @e[tag=nwbr_phase5,tag=nwbr_missf_guard,scores={nwbr_health=20..,nwbr_math=1..}] run say Ma bravoure surpasse ton inconscience.
tag @e[tag=nwbr_phase5,tag=nwbr_missf_guard,scores={nwbr_health=20..,nwbr_math=1..}] remove nwbr_phase5
tag @e[tag=nwbr_phase5,tag=nwbr_missf_guard,scores={nwbr_health=20..,nwbr_math=1..}] add nwbr_phase5B

#regeneration
execute if score #modulo#100 nwbr_number matches 42 run effect give @e[tag=nwbr_phase3,tag=nwbr_missf_guard] minecraft:instant_damage 1 0
