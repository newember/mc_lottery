function newember_main_lottery:spawn/summon/item/lootbox/mk1
tellraw @a[distance=..6] {"text":"Non disponible pour le moment.","color":"red"}
#execute unless block ~ ~ ~ #newember_basics:air run function newember_main_lottery:spawn/summon/item/lootbox/mk1
#execute unless block ~ ~ ~ #newember_basics:air run tellraw @a[distance=..6] {"text":"Un block gène l'apparition de la lootbox","color":"red"}
#execute if block ~ ~ ~ #newember_basics:air run function newember_main_lottery:lootbox/mk1
tag @s add nwbr_done
kill @s
