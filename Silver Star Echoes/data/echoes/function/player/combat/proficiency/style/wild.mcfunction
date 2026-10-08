execute store result score @s generic_a run random value -20..20
execute store result score @s generic_b run random value -20..20

scoreboard players operation @s proficiency_str += @s generic_a
scoreboard players operation @s proficiency_dex += @s generic_b