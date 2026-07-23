execute as @a[scores={temp_dangerous=..-1}] run function echoes:particles/cold_breath
execute as @a at @s unless score @s temp_dangerous matches ..-1 if predicate {"condition":"minecraft:location_check","predicate":{"biomes":["minecraft:pale_garden"]}} run function echoes:particles/cold_breath

schedule function echoes:core/scheduled_40t 40t