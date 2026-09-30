execute at @s[scores={DayTime=..13000}] run particle white_ash ~ ~ ~ 5 5 5 0 1 normal @s
execute at @s[scores={DayTime=13000..23000}] run particle ash ~ ~5 ~ 8 8 8 0 4 normal @s
execute at @s[scores={of_biome=2}] run particle ash ~ ~ ~ 10 10 10 0 2 normal @s
effect give @s[scores={of_biome=2}] darkness 1 0 true
execute at @s[scores={of_biome=3}] run particle snowflake ~ ~10 ~ 10 10 10 0 3 normal @s
# execute at @s[scores={of_biome=3,DayTime=13000..23000}] run particle firework ~ ~10 ~ 10 10 10 0 30 normal @s
execute at @s[scores={of_biome=4}] run particle spore_blossom_air ~ ~ ~ 10 10 10 0 2 normal @s
execute at @s[scores={of_biome=5}] run particle falling_water ~ ~30 ~ 30 1 30 0 10 normal @s
execute at @s[scores={of_biome=7}] run particle white_smoke ~ ~ ~ 10 10 10 0.1 2 normal @s
# execute at @s if predicate {"condition":"minecraft:location_check","predicate":{"light":{"light":0}}} \
#     if predicate {"condition":"minecraft:location_check","predicate":{"can_see_sky":false}} run \
#     effect give @s[scores={Armorless=1}] invisibility 1 0 true
# execute as @e[type=!minecraft:player,type=!#ss_lib:not_alive] at @s if predicate {"condition":"minecraft:location_check","predicate":{"light":{"light":0}}} run \
#     effect give @s invisibility 1 0 true

# execute at @s[predicate=oakfall:in_village] run particle totem_of_undying ~ ~ ~ 10 10 10 0 1 normal @s
# execute at @s[predicate=oakfall:in_magical_biome] run particle ominous_spawning ~ ~ ~ 10 10 10 0 5 normal @s