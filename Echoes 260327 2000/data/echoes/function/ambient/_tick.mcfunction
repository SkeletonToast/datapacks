execute if score $ambientParticles true matches 0 run return fail

execute as @a[predicate=echoes:in_ocean] run function ss_lib:fetch/in_water {"s":"@s"}

execute as @a[scores={Dimension=4},tag=!near_campfire] at @s run particle white_ash ~ ~5 ~ 10 10 10 1 100 normal @s
execute as @a[scores={Dimension=4},tag=near_campfire] at @s run particle white_ash ~ ~5 ~ 10 10 10 1 10 normal @s

execute as @a at @s[predicate=echoes:in_ocean,scores={InWater=1..}] run particle bubble ~ ~ ~ 20 20 20 0 80 normal @s
execute as @a at @s[predicate=echoes:in_ocean,scores={InWater=1..}] run particle white_ash ~ ~ ~ 20 20 20 0 80 normal @s
execute as @a at @s[predicate=echoes:in_cold_biome,predicate=ss_lib:in_rain] run particle snowflake ~ ~20 ~ 20 10 20 0 320 normal @s

execute as @a at @s[predicate=echoes:in_caves] if predicate ss_lib:random_1_percent if predicate ss_lib:random_20_percent run particle ash ~ ~20 ~ 20 10 20 0 3000 normal @s
# execute as @a at @s[predicate=echoes:in_caves] if predicate ss_lib:random_1_percent if predicate ss_lib:random_1_percent run particle ash ~ ~10 ~ 20 10 20 0 3000 normal @s

# execute as @a[predicate=echoes:in_cold_biome,predicate=ss_lib:in_rain] run particle white_ash ~ ~5 ~ 5 5 5 1 1000 normal @s
# execute at @s[predicate=echoes:in_stony_biome] run particle ash ~ ~ ~ 10 1 10 0 2 normal @s
# effect give @s[predicate=echoes:in_caves] darkness 3 0 true
# execute at @s[predicate=echoes:in_magical_biome] run particle snowflake ~ ~10 ~ 20 20 20 0 3 normal @s
# execute as @a at @s[predicate=echoes:in_forest] run particle spore_blossom_air ~ ~ ~ 20 5 20 0 16 normal @s
# execute at @s[predicate=echoes:in_ocean] run particle falling_water ~ ~30 ~ 30 1 30 0 10 normal @s
# execute as @a at @s[predicate=echoes:in_ocean,scores={InWater=1..}] run particle ash ~ ~ ~ 20 20 20 0 80 normal @s