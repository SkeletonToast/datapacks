execute at @e[type=marker,tag=EmberSprite] run function echoes:campfires/lanterns/cleanse

execute as @a[scores={temp_dangerous=..-1}] run function echoes:particles/cold_breath
# function echoes:stats/attribute_scores_reset
execute as @a at @s unless score @s temp_dangerous matches ..-1 if predicate {"type":"minecraft:location_check","predicate":{"biomes":["minecraft:pale_garden"]}} run function echoes:particles/cold_breath
execute as @e[type=interaction,tag=campfire] at @s if block ~ ~-1 ~ #ss_lib:nonsolidblocks run function echoes:campfires/destroy

schedule function echoes:scheduled/40t 40t