

execute if score $sse.gamerule.variant_monsters true matches 1 as @e[scores={Age=1},type=#ss_lib:hostile,type=!#echoes:not_spawn_bolstered,tag=!SpawnDuplicated] at @s if predicate ss_lib:random_50_percent run function echoes:monsters/spawn_duplication
execute if score $sse.gamerule.variant_monsters true matches 1 as @e[scores={Age=1},type=minecraft:zombie,tag=!SpawnDuplicated] at @s run function echoes:monsters/spawn_duplication
execute if score $sse.gamerule.variant_monsters true matches 1 as @e[scores={Age=1},type=#ss_lib:hostile] run function echoes:monsters/spawn_bolster