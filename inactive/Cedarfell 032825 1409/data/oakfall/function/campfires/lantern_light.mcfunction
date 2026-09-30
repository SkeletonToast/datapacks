# execute if entity @e[type=interaction,tag=Campfire,distance=0.5] run function oakfall:campfires/kindle {"type":"campfire","color":"gold"}
execute align xyz positioned ~0.5 ~ ~0.5 if entity @e[type=interaction,tag=Campfire,tag=!Soul_Campfire,distance=..1] run function of_particles:campfire
execute align xyz positioned ~0.5 ~ ~0.5 if entity @e[type=interaction,tag=Soul_Campfire,distance=..1] run function of_particles:soul_campfire

execute align xyz positioned ~0.5 ~ ~0.5 unless entity @e[type=interaction,tag=Campfire,tag=!Soul_Campfire,distance=..1] if block ~ ~ ~ #minecraft:campfires run function oakfall:campfires/place
execute unless block ~ ~ ~ #minecraft:campfires positioned ^ ^ ^-0.25 align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ #ss_lib:unimportant summon area_effect_cloud run function oakfall:campfires/lantern_ember_sprite