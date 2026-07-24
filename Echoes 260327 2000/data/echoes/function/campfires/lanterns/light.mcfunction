# execute if entity @e[type=interaction,tag=campfire,distance=0.5] run function echoes:campfires/kindle {"type":"campfire","color":"gold"}
execute align xyz positioned ~0.5 ~ ~0.5 if entity @e[type=interaction,tag=campfire,tag=!soul_campfire,distance=..0.5] run function echoes:campfires/particles_campfire
execute align xyz positioned ~0.5 ~ ~0.5 if entity @e[type=interaction,tag=soul_campfire,distance=..0.5] run function echoes:campfires/particles_soul_campfire

execute align xyz positioned ~0.5 ~ ~0.5 unless entity @e[type=interaction,tag=campfire,tag=!soul_campfire,distance=..0.5] if block ~ ~ ~ #minecraft:campfires run function echoes:campfires/place
execute unless block ~ ~ ~ #minecraft:campfires positioned ^ ^ ^-0.25 align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ #ss_lib:unimportant summon marker run function echoes:campfires/lanterns/ember_sprite