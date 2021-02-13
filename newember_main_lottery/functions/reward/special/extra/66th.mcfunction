loot spawn ^-0.89 ^1.7 ^0.07 loot newember_main_lottery:special/extra/66th
summon firework_rocket ^-0.89 ^1.7 ^0.07 {LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;2698284,1184274,3881787],FadeColors:[I;11796224,5526612,0]},{Type:0,Colors:[I;2698284,1184274,3881787],FadeColors:[I;0,5526612,11796224]}]}}}}
effect give @p minecraft:blindness 1 0 true
execute at @a if score @p nwbr_player_id = @s nwbr_player_id run effect give @p minecraft:slowness 999999 0 true
execute at @a if score @p nwbr_player_id = @s nwbr_player_id run effect give @p minecraft:unluck 999999 0 true
execute at @a if score @p nwbr_player_id = @s nwbr_player_id run effect give @p minecraft:blindness 20 0 true
playsound minecraft:entity.wither.spawn block @a ~ ~ ~ 10 0.8 1
tellraw @a ["",{"text":"["},{"nbt":"fr.stand.titleNames.special","storage":"newember_main_lottery:texts","interpret":true,"hoverEvent":{"action":"show_text","contents":["",{"text":"Stand n°","underlined":true},{"score":{"name":"@p","objective":"nwbr_lot_id"},"underlined":true},{"text":"\n"},{"text":"Total Wins : ","color":"aqua"},{"score":{"name":"@p","objective":"nwbr_lot_wins"},"color":"aqua"},{"text":"\n"},{"text":"Total Looses : ","color":"red"},{"score":{"name":"@p","objective":"nwbr_lot_looses"},"color":"red"}]}},{"text":"] "},{"selector":"@p"},{"text":" a gagné un(e) "},{"nbt":"fr.lots.names.special.extra.66th","storage":"newember_main_lottery:texts","interpret":true,"hoverEvent":{"action":"show_text","contents":["",{"selector":"@p"},{"text":" won this lot "},{"score":{"name":"@p","objective":"nwbr_lwin_66th"}},{"text":" time(s)"}]}},{"text":" !"}]
