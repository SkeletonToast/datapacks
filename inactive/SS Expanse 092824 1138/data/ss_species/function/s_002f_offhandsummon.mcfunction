execute at @e[tag=BuildingAnchor,distance=..25] run function ss_species:s_002f_summonanchoritem {"count":"1"}
tp @e[type=item,distance=..25,nbt={Item:{id:"minecraft:turtle_spawn_egg",components:{"minecraft:custom_data":{Tags:["species002"]}}}}] @s
particle explosion ~ ~1 ~
execute as @e[tag=BuildingAnchor,distance=..25] run kill @n[tag=BuildingAnchorCage,distance=..1]
kill @e[tag=BuildingAnchor,distance=..25]