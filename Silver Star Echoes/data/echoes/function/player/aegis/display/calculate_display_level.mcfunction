scoreboard players operation @s generic_a = @s Absorption
scoreboard players add @s generic_a 1
scoreboard players operation @s generic_a /= @s 2
# execute if score @s generic_a < @s aegis_display_level run scoreboard players remove @s aegis_display_level 1
# execute if score @s generic_a > @s aegis_display_level run scoreboard players operation @s aegis_display_level = @s generic_a
scoreboard players operation @s aegis_display_level = @s generic_a