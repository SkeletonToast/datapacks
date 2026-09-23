execute store result score $moon_phase value run time query minecraft:moon
scoreboard players set $moon_phase generic_a 24000
scoreboard players operation $moon_phase value /= $moon_phase generic_a
scoreboard players add $moon_phase value 1