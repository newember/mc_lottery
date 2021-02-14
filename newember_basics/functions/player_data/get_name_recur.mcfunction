data modify storage newember_basics:core players.names append from storage newember_basics:core players.names[0]
data remove storage newember_basics:core players.names[0]
scoreboard players add #index nwbr_math 1
execute if score #index nwbr_math = #in nwbr_math run data modify storage newember_basics:temp player_name set from storage newember_basics:core players.names[0]

execute if score #index nwbr_math < #max nwbr_math run function newember_basics:player_data/get_name_recur
