# aligns the Echoes day counter to the moon phase, which mostly corresponds to the technical day count

function ss_lib:fetch/moon_phase
scoreboard players set @s generic_e 8
scoreboard players operation @s generic_d = $day value
scoreboard players operation @s generic_d %= @s generic_e
scoreboard players add @s generic_d 2
execute unless score @s generic_d = $moon_phase value run time add 24000
execute unless score @s generic_d = $moon_phase value run function homesteader:days/calculations/align_days