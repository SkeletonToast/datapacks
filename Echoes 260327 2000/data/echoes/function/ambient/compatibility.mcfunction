# execute as @a[scores={DayTime=13000..22999}] at @s if predicate {"condition":"minecraft:location_check","predicate":{"biomes":["terralith:sakura_grove"]}} run particle cherry_leaves ~ ~ ~ 20 5 20 0 1000 normal

execute as @a at @s unless predicate ss_lib:in_rain if predicate {"condition":"minecraft:location_check","predicate":{"biomes":["terralith:skylands_autumn"]}} run particle tinted_leaves{color:[1,0.67,0,1]} ~ ~ ~ 20 5 20 0 1 normal

# amethyst rainforest
execute as @a[scores={DayTime=13000..22999}] at @s unless predicate ss_lib:in_rain if predicate {"condition":"minecraft:location_check","predicate":{"biomes":["terralith:amethyst_rainforest"]}} run particle electric_spark ~ ~ ~ 5 5 5 0 1 normal
execute as @a[scores={DayTime=13000..22999}] at @s unless predicate ss_lib:in_rain if score $moon_phase value matches 1 if predicate {"condition":"minecraft:location_check","predicate":{"biomes":["terralith:amethyst_rainforest"]}} run particle electric_spark ~ ~ ~ 20 5 20 0 5 normal
execute as @a[scores={DayTime=13000..22999}] at @s unless predicate ss_lib:in_rain if score $moon_phase value matches 1 if predicate {"condition":"minecraft:location_check","predicate":{"biomes":["terralith:amethyst_rainforest"]}} run particle wax_off ~ ~ ~ 20 5 20 0 5 normal