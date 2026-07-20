execute at @s anchored eyes positioned ^ ^ ^ run particle minecraft:cherry_leaves ~ ~-1 ~ 0.5 1 0.5 0 5000 normal
tag @s[gamemode=spectator] add spectator
execute as @s[tag=!spectator] run gamemode spectator
execute at @s[tag=!spectator] summon cow run attribute @s scale base set 0.3
gamemode survival @s[tag=spectator]
tag @s remove spectator