execute at @s anchored eyes positioned ^ ^ ^ run particle minecraft:pale_oak_leaves ~ ~-1 ~ 0.5 1 0.5 0 5000 normal
tag @s[gamemode=spectator] add spectator
execute as @s[gamemode=survival] run gamemode spectator
gamemode survival @s[tag=spectator]
tag @s remove spectator