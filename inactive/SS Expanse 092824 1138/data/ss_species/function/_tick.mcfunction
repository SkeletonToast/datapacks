function ss_species:_species

execute at @e[tag=BuildingAnchorSpawn] align y run summon interaction ~ ~0.15 ~ {width:0.7f,height:0.7f,response:1b,Tags:["BuildingAnchor"]}
execute at @e[tag=BuildingAnchorSpawn] align y run summon block_display ~-0.325 ~0.1625 ~-0.325 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.65f,0.65f,0.65f]},block_state:{Name:"minecraft:glass"},Tags:["BuildingAnchorCage"]}
kill @e[tag=BuildingAnchorSpawn]

execute as @a[scores={species025-08=0..}] run function ss_species:s_025f_boost_visuals