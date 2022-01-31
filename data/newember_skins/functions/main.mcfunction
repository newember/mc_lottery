execute as @e[predicate=newember_skins:is_skin_modifier] at @s unless block ~ ~ ~ minecraft:water_cauldron unless block ~ ~ ~ minecraft:cauldron run function newember_skins:set_skin/test_skin
execute as @e[predicate=newember_skins:have_skin] at @s if block ~ ~ ~ minecraft:water_cauldron run function newember_skins:clear_skin/do
function newember_skins:evo/main