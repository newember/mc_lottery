scoreboard players add @a[tag=nwbr_consum] nwbr_consum 1
execute as @a[tag=nwbr_conapple_cursed] if score @s nwbr_consum matches 2.. at @s run function newember_special_items:adv_trigger/consumable/apple_strength_lvl1_effects
