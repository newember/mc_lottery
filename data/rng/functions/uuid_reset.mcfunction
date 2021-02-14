summon minecraft:armor_stand ~ ~ ~ {Tags:["uuid"]}
execute store result score #lcg math run data get entity @e[tag=uuid,limit=1] UUID[0]
kill @e[tag=uuid]
