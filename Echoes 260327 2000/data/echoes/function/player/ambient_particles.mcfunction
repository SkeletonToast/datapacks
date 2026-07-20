execute as @s[predicate=echoes:in_ocean] run function ss_lib:fetch/in_water {"s":"@s"}

# execute at @s[predicate=echoes:in_stony_biome] run particle ash ~ ~ ~ 10 1 10 0 2 normal @s
# effect give @s[predicate=echoes:in_caves] darkness 3 0 true
# execute at @s[predicate=echoes:in_magical_biome] run particle snowflake ~ ~10 ~ 20 20 20 0 3 normal @s
execute at @s[predicate=echoes:in_forest] run particle spore_blossom_air ~ ~ ~ 20 20 20 0 16 normal @s
# execute at @s[predicate=echoes:in_ocean] run particle falling_water ~ ~30 ~ 30 1 30 0 10 normal @s
execute at @s[predicate=echoes:in_ocean,scores={InWater=1..}] run particle bubble ~ ~ ~ 20 20 20 0 80 normal @s
execute at @s[predicate=echoes:in_ocean,scores={InWater=1..}] run particle white_ash ~ ~ ~ 20 20 20 0 80 normal @s
execute at @s[predicate=echoes:in_cold_biome] run particle white_smoke ~ ~ ~ 20 20 20 0.1 16 normal @s