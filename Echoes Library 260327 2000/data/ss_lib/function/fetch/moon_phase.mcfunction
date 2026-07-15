execute store result score $Moon MoonPhase run time query minecraft:moon
scoreboard players set $Moon generic_a 24000
scoreboard players operation $Moon MoonPhase /= $Moon generic_a
scoreboard players add $Moon MoonPhase 1