loot spawn ^-0.89 ^1.7 ^0.07 loot newember_main_lottery:special/extra/222th
summon firework_rocket ^-0.89 ^1.7 ^0.07 {LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;9439754,3542542,2492938],FadeColors:[I;2698284,5526612,0]},{Type:0,Colors:[I;2698284,1184274,3881787],FadeColors:[I;9439754,16711680,3542542]}]}}}}
playsound minecraft:entity.ender_dragon.growl block @a ~ ~ ~ 10 0.7 1
playsound minecraft:entity.wither.spawn block @a ~ ~ ~ 10 0.8 1
effect give @p minecraft:blindness 1 0 true
execute at @a if score @p nwbr_player_id = @s nwbr_player_id run effect give @p minecraft:strength 999999 0 true
execute at @a if score @p nwbr_player_id = @s nwbr_player_id run effect give @p minecraft:slowness 999999 0 true
execute at @a if score @p nwbr_player_id = @s nwbr_player_id run effect give @p minecraft:bad_omen 999999 0 true
execute at @a if score @p nwbr_player_id = @s nwbr_player_id run effect give @p minecraft:unluck 999999 0 true
execute at @a if score @p nwbr_player_id = @s nwbr_player_id run effect give @p minecraft:blindness 20 0 true
execute as @p[tag=nwbr_special,tag=nwbr_ultra] if score #1 nwbr_lot_score matches 1.. if score #0 nwbr_lot_score matches 0 at @a if score @p nwbr_player_id = @p nwbr_player_id run tellraw @a ["",{"text":"["},{"nbt":"fr.stand.titleNames.special","storage":"newember_main_lottery:texts","interpret":true,"hoverEvent":{"action":"show_text","contents":["",{"text":"Stand n°","underlined":true},{"score":{"name":"@p","objective":"nwbr_lot_id"},"underlined":true},{"text":"\n"},{"text":"Total Wins : ","color":"aqua"},{"score":{"name":"@p","objective":"nwbr_lot_wins"},"color":"aqua"},{"text":"\n"},{"text":"Total Looses : ","color":"red"},{"score":{"name":"@p","objective":"nwbr_lot_looses"},"color":"red"}]}},{"text":"] "},{"selector":"@p"},{"text":" a gagné un(e) "},{"nbt":"fr.lots.names.special.extra.222th","storage":"newember_main_lottery:texts","interpret":true,"hoverEvent":{"action":"show_text","contents":["",{"selector":"@p"},{"text":" won this lot "},{"score":{"name":"@p","objective":"nwbr_lwin_222th"}},{"text":" time(s)"}]}},{"text":" !"}]
