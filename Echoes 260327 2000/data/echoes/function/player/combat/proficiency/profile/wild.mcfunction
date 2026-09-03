execute store result score @s generic_a run random roll 0..90
execute store result score @s generic_b run random roll 0..90

scoreboard players operation @s proficiency_str += @s generic_a
scoreboard players operation @s proficiency_dex += @s generic_b