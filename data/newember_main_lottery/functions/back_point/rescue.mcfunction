execute store result score #chk_ldd nwbr_math run forceload query ~ ~
execute in overworld run forceload add ~ ~
execute in overworld run summon minecraft:armor_stand ~ 600 ~ {Tags:["nwbr_rescue_point"],NoAI:1b,Invulnerable:1b,NoBasePlate:1b,Invisible:1b}
tellraw @a {"text":"Oops you seem blocked in that dimension, sorry ! Starting rescue procedure...","color":"green"}
playsound block.note_block.harp block @p ~ ~ ~ 1 2 1 
execute in overworld positioned ~ 600 ~ run scoreboard players operation @e[tag=nwbr_rescue_point,sort=nearest,limit=1] nwbr_math = #chk_ldd nwbr_math
execute in overworld positioned ~ 600 ~ run scoreboard players operation @e[tag=nwbr_rescue_point,sort=nearest,limit=1] nwbr_player_id = @s nwbr_player_id
