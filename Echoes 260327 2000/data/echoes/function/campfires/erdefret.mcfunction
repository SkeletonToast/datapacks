execute as @s[type=minecraft:interaction,tag=campfire,tag=!soul_campfire] run particle small_flame ~ ~2 ~ 0.2 2 0.2 0 1 normal @a
execute as @s[type=minecraft:interaction,tag=campfire,tag=!soul_campfire] run particle flame ~ ~5 ~ 0 5 0 0 1 normal @a

execute as @s[type=minecraft:interaction,tag=campfire,tag=!soul_campfire] run particle trial_spawner_detection ~ ~5 ~ 10 10 10 0 1 normal @a

effect give @e[type=#ss_lib:hostile,distance=..10] slowness 1 0 true
execute as @e[type=#ss_lib:hostile,distance=..10,tag=SpawnBolstered] run function echoes:campfires/spawn_bolster_remove
execute at @e[type=#ss_lib:hostile,distance=..10] run particle trial_spawner_detection ~ ~ ~ 0.2 0.2 0.2 0 1 normal @a

# execute as @e[type=arrow,distance=..3,scores={Age=3..}] at @s on origin if entity @s[type=#ss_lib:hostile] as @n[distance=0,type=arrow] run function echoes:campfires/break_arrow