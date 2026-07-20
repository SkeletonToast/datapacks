execute at @s anchored eyes positioned ^ ^ ^ run particle minecraft:white_ash ~ ~-0.5 ~ 0.25 0.5 0.25 0 5000 normal
execute at @s anchored eyes positioned ^ ^ ^ run particle minecraft:white_ash ~ ~-1 ~ 0.5 1 0.5 0 1000 normal
tag @s[gamemode=spectator] add spectator
execute as @s[tag=!spectator] run gamemode spectator
gamemode survival @s[tag=spectator]
tag @s remove spectator