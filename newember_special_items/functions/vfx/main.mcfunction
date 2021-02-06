scoreboard players add @s nwbr_animation 1
scoreboard players operation @s nwbr_anim_end > @s nwbr_anim_endtmp
scoreboard players set @s nwbr_anim_endtmp 0

execute at @s[tag=nwbr_circles_gray] run function newember_special_items:vfx/circles/flat_gray
execute at @s[tag=nwbr_circles_red] run function newember_special_items:vfx/circles/flat_red

execute if score @s nwbr_animation >= @s nwbr_anim_end run function newember_special_items:vfx/end
