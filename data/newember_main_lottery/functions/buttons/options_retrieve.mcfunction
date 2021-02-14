function newember_main_lottery:result/fetch_to_retrieve
#tellraw @p ["",{"score":{"name":"@s","objective":"nwbr_lot_toclaim"},"color":"#FA0BF0"}]
#tellraw @p ["",{"score":{"name":"@s","objective":"nwbr_math"},"color":"#FA0BF0"}]
#tellraw @p ["",{"score":{"name":"@s","objective":"nwbr_number"},"color":"#FA0BF0"}]
#@p is the right player 100%

########## give those diamonds back you piece of s*** ##########
scoreboard players operation @p nwbr_lot_earned += @s nwbr_number
execute if score @s nwbr_number matches 0 run tellraw @p {"text":"Rien à récupérer !","color":"gold","hoverEvent":{"action":"show_text","contents":{"text":"J'te jure j'ai pas de thune la vie de moi","color":"#7801FC"}}}
execute if score @s nwbr_number matches 1.. run function newember_main_lottery:buttons/options_retrieve_recursive
scoreboard players set @s nwbr_lot_toclaim 0
