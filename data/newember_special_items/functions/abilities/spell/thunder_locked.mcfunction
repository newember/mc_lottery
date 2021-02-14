execute if score @s nwbr_abts_main matches 1..25 anchored eyes rotated ~ 0 run particle dust 1 0.9 0 0.4 ^0.067 ^0.5 ^1 0 0.1 0 0 1 force
execute if score @s nwbr_abts_main matches 3..27 anchored eyes rotated ~ 0 run particle dust 1 0.9 0 0.4 ^0 ^0.4 ^1 0 0.1 0 0 1 force
execute if score @s nwbr_abts_main matches 5..29 anchored eyes rotated ~ 0 run particle dust 1 0.9 0 0.4 ^-0.067 ^0.3 ^1 0 0.1 0 0 1 force
execute if score @s nwbr_abts_main matches 7..31 anchored eyes rotated ~ 0 run particle dust 1 0.9 0 0.4 ^-0.133 ^0.167 ^1 0 0.1 0 0 1 force
execute if score @s nwbr_abts_main matches 9..33 anchored eyes rotated ~ 0 run particle dust 1 0.9 0 0.4 ^-0.2 ^0 ^1 0 0.1 0 0 1 force
execute if score @s nwbr_abts_main matches 11..35 anchored eyes rotated ~ 0 run particle dust 1 0.9 0 0.4 ^-0.067 ^0 ^1 0 0.1 0 0 1 force
execute if score @s nwbr_abts_main matches 13..37 anchored eyes rotated ~ 0 run particle dust 1 0.9 0 0.4 ^0.067 ^0 ^1 0 0.1 0 0 1 force
execute if score @s nwbr_abts_main matches 15..39 anchored eyes rotated ~ 0 run particle dust 1 0.9 0 0.4 ^0.2 ^0 ^1 0 0.1 0 0 1 force
execute if score @s nwbr_abts_main matches 17..41 anchored eyes rotated ~ 0 run particle dust 1 0.9 0 0.4 ^0.133 ^-0.133 ^1 0 0.1 0 0 1 force
execute if score @s nwbr_abts_main matches 19..43 anchored eyes rotated ~ 0 run particle dust 1 0.9 0 0.4 ^0.067 ^-0.267 ^1 0 0.1 0 0 1 force
execute if score @s nwbr_abts_main matches 21..45 anchored eyes rotated ~ 0 run particle dust 1 0.9 0 0.4 ^0 ^-0.4 ^1 0 0.1 0 0 1 force
execute if score @s nwbr_abts_main matches 23..47 anchored eyes rotated ~ 0 run particle dust 1 0.9 0 0.4 ^-0.067 ^-0.533 ^1 0 0.1 0 0 1 force

execute unless score @s nwbr_abts_main matches 20..38 if score @s nwbr_abts_main matches 1..47 at @a[predicate=newember_special_items:entity/hostile_or_player,distance=0.01..20] as @s anchored eyes run particle dust 1 0.9 0 0.4 ~ ~3 ~ 0 0.1 0 0 1 force
execute if score @s nwbr_abts_main matches 50 at @a[predicate=newember_special_items:entity/hostile_or_player,distance=0.01..20] run summon minecraft:lightning_bolt ~ ~ ~


scoreboard players add @s nwbr_abts_main 1
execute if score @s nwbr_abts_main matches 51 run tag @s remove nwbr_thndr_lockd
execute if score @s nwbr_abts_main matches 51 run scoreboard players set @s nwbr_abts_main 0
