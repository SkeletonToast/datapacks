execute if score $sse.gamerule.ambient_particles true matches 0 run return fail
function echoes:ambient/compatibility

execute as @a[predicate=echoes:in_ocean] run function ss_lib:fetch/in_water {s:"@s"}

execute as @a[scores={Dimension=4},tag=!near_campfire] at @s run particle white_ash ~ ~5 ~ 10 10 10 1 100 normal @s
execute as @a[scores={Dimension=4},tag=near_campfire] at @s run particle white_ash ~ ~5 ~ 10 10 10 1 10 normal @s

execute if score $day_time value matches 13000..22999 as @a at @s if predicate {"type":"minecraft:location_check","predicate":{"biomes":["minecraft:flower_forest","minecraft:mushroom_fields"]}} run particle firefly ~ ~ ~ 20 5 20 0.1 10 normal
execute if score $day_time value matches 13000..22999 as @a unless score $moon_phase value matches 1 at @s if predicate {"type":"minecraft:location_check","predicate":{"biomes":["minecraft:ice_spikes"]}} run particle ominous_spawning ~ ~ ~ 20 5 20 0 10 normal
execute if score $day_time value matches 13000..22999 as @a if score $moon_phase value matches 1 at @s if predicate {"type":"minecraft:location_check","predicate":{"biomes":["minecraft:ice_spikes"]}} run particle ominous_spawning ~ ~ ~ 20 5 20 0 100 normal
execute as @a at @s if predicate {"type":"minecraft:location_check","predicate":{"biomes":["minecraft:lush_caves"]}} run particle firefly ~ ~ ~ 10 10 10 0.1 1 normal
execute as @a at @s if predicate {"type":"minecraft:location_check","predicate":{"biomes":["minecraft:sulfur_caves"]}} run particle noxious_gas ~ ~ ~ 10 10 10 0 10 normal
execute as @a[predicate=echoes:has_darkness] at @s if entity @e[type=warden,distance=..100] if predicate {"type":"minecraft:location_check","predicate":{"structures":["minecraft:ancient_city"]}} run particle sculk_soul ~ ~ ~ 20 20 20 0 100 normal
# execute if score $day_time value matches 13000..22999 as @a at @s if predicate {"type":"minecraft:location_check","predicate":{"structures":["minecraft:ancient_city"]}} run particle sonic_boom ~ ~ ~ 20 20 20 0 100 normal

execute as @a[predicate=echoes:in_ocean,scores={InWater=2..}] at @s run particle bubble ~ ~ ~ 20 5 20 0 80 normal @s
execute as @a[predicate=echoes:in_ocean,scores={InWater=2..}] at @s run particle white_ash ~ ~ ~ 20 5 20 0 80 normal @s
execute as @a[predicate=echoes:in_snow_biome,predicate=ss_lib:in_rain] at @s run particle snowflake ~ ~20 ~ 20 10 20 0 320 normal @s
# execute as @a[predicate=!echoes:in_cold_biome,predicate=!echoes:in_arid_biome] at @s run particle falling_water ~ ~10 ~ 30 1 30 0 10 normal @s

execute as @a at @s[predicate=echoes:in_caves] if predicate ss_lib:random_1_percent if predicate ss_lib:random_20_percent run particle ash ~ ~20 ~ 20 10 20 0 3000 normal @s
# execute as @a at @s[predicate=echoes:in_caves] if predicate ss_lib:random_1_percent if predicate ss_lib:random_1_percent run particle ash ~ ~10 ~ 20 10 20 0 3000 normal @s

# execute as @a[predicate=echoes:in_cold_biome,predicate=ss_lib:in_rain] run particle white_ash ~ ~5 ~ 5 5 5 1 1000 normal @s
# execute at @s[predicate=echoes:in_stony_biome] run particle ash ~ ~ ~ 10 1 10 0 2 normal @s
# effect give @s[predicate=echoes:in_caves] darkness 3 0 true
# execute at @s[predicate=echoes:in_magical_biome] run particle snowflake ~ ~10 ~ 20 20 20 0 3 normal @s
# execute as @a at @s[predicate=echoes:in_forest] run particle spore_blossom_air ~ ~ ~ 20 5 20 0 16 normal @s
# execute as @a at @s[predicate=echoes:in_ocean,scores={InWater=1..}] run particle ash ~ ~ ~ 20 20 20 0 80 normal @s