# manually enable/disable
execute if entity @s[scores={incrementalProficiencyScaling=0..}] store result storage gamerule_incremental_proficiency_scaling toggle int 1 run scoreboard players get @s incrementalProficiencyScaling

# if toggled
execute if entity @s[scores={incrementalProficiencyScaling=0..}] run return fail
execute store result score @s incrementalProficiencyScaling run data get storage gamerule_incremental_proficiency_scaling toggle
scoreboard players add @s incrementalProficiencyScaling 1
scoreboard players set @s[scores={incrementalProficiencyScaling=2..}] incrementalProficiencyScaling 0
execute store result storage gamerule_incremental_proficiency_scaling toggle int 1 run scoreboard players get @s incrementalProficiencyScaling

# setting phantom player
execute store result score $incrementalProficiencyScaling true run data get storage gamerule_incremental_proficiency_scaling toggle