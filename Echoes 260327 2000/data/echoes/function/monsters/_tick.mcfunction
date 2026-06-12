# execute as @e[type=#ss_lib:hostile,scores={Age=1}] at @s if entity @a[scores={Renown=100..},distance=..130] run function echoes:monsters/spawn_randomization
execute if score $variantMonsters true matches 1 as @e[scores={Age=1},type=#ss_lib:hostile,type=!#echoes:not_spawn_bolstered,tag=!SpawnDuplicated] at @s if predicate ss_lib:random_50_percent run function echoes:monsters/spawn_duplication
execute if score $variantMonsters true matches 1 as @e[scores={Age=1},type=#ss_lib:hostile] run function echoes:monsters/spawn_bolster

execute as @a[tag=InCombat,scores={DamageTaken=1..}] at @s run data modify entity @e[limit=1,sort=furthest,type=enderman,distance=..20] angry_at set from entity @s UUID
execute as @a[tag=InCombat,scores={DamageTaken=1..}] at @s as @n[limit=1,sort=furthest,type=enderman,distance=..20] run function echoes:monsters/moon_spirit_trigger
execute as @a[tag=InCombat,scores={DamageTaken=1..}] on attacker if entity @s[type=enderman] run function echoes:monsters/moon_spirit_trigger
# execute as @a[tag=InCombat,scores={DamageTaken=1..}] at @s run data modify entity @e[limit=1,sort=nearest,type=enderman,distance=..30] AngryAt set from entity @s UUID
# execute as @a[tag=InCombat,scores={DamageTaken=1..}] at @s run effect clear @n[limit=1,sort=nearest,type=enderman,distance=..30] invisibility
# execute as @a[tag=InCombat,scores={DamageTaken=1..}] at @s run attribute @n[limit=1,sort=nearest,type=enderman,distance=..30] movement_speed modifier remove enderman_bolster_movement_speed

execute in eochrin:erdefret as @e[type=enderman,scores={Age=1}] run tp @s ~ ~-10000 ~
execute in eochrin:erdefret as @e[type=enderman,scores={Age=1}] run kill @s

execute as @e[type=enderman] at @s anchored eyes run particle reverse_portal ^ ^ ^ 0.3 0.3 0.3 0 5