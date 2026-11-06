# scoreboard players operation @s[scores={Dimension=0}] DayTime = @s DayTime
scoreboard players set @s[scores={DayTime=13001..}] CharacterSpecies 14
execute as @s[scores={Dimension=0,DayTime=13001}] run function crowskeep:character_scores_reset
execute at @s[scores={Dimension=0,DayTime=13001}] run function ss_particles:lavaburst
scoreboard players set @s[scores={DayTime=23001..}] CharacterSpecies 26
execute as @s[scores={Dimension=0,DayTime=23001}] run function crowskeep:character_scores_reset
execute at @s[scores={Dimension=0,DayTime=23001}] run function ss_particles:healing_burst

# scoreboard players set @s[scores={Dimension=1,chr-010=1..}] CharacterSpecies 26
# execute as @s[scores={Dimension=1,chr-010=1..}] run function crowskeep:character_scores_reset
# execute at @s[scores={Dimension=1,chr-010=1..}] run function ss_particles:healing_burst

# scoreboard players set @s[scores={Dimension=2,chr-010=1..}] CharacterSpecies 14
# execute as @s[scores={Dimension=2,chr-010=1..}] run function crowskeep:character_scores_reset
# execute at @s[scores={Dimension=2,chr-010=1..}] run function ss_particles:lavaburst

# scoreboard players set @s[scores={Dimension=1..}] DayTime 0