# note: "at @s anchored eyes" is applied in the guns/_main function

# effect give @s slowness 1 0 true
scoreboard players set @s[scores={SneakTime=0..20}] PaintballReload 7
scoreboard players set @s[scores={SneakTime=21..}] PaintballReload 2

execute if entity @s[scores={SneakTime=0..20}] positioned ^ ^ ^0.25 positioned ~ ~-0.2 ~ run function raycast:either {"particle":"function ss_armory:properties/guns/paintball/particles","increment_distance":"0.25","max_lifetime":"60","run_on_block_success":"function ss_armory:properties/guns/paintball/bullet_hit_block","run_on_entity_success":"function ss_armory:properties/guns/paintball/damage",solid_block_collision:true}
execute if entity @s[scores={SneakTime=21..}] positioned ^ ^ ^0.25 positioned ~ ~-0.2 ~ run function raycast:either {"particle":"function ss_armory:properties/guns/paintball/particles","increment_distance":"0.25","max_lifetime":"120","run_on_block_success":"function ss_armory:properties/guns/paintball/bullet_hit_block","run_on_entity_success":"function ss_armory:properties/guns/paintball/damage",solid_block_collision:true}

# execute positioned ^ ^ ^0.5 run particle firework ~ ~-0.2 ~ 0.1 0.1 0.1 0.01 1
function ss_armory:properties/guns/paintball/big_particles

# playsound minecraft:entity.firework_rocket.blast_far player @a ^ ^ ^0.5 2 0.1
# playsound minecraft:entity.firework_rocket.large_blast_far player @a ^ ^ ^0.5 0.5 0.1
# playsound minecraft:entity.blaze.hurt player @a ^ ^ ^0.5 0.5 1
playsound minecraft:block.wood.break player @a ^ ^ ^0.5 2 1
playsound minecraft:block.stone.break player @a ^ ^ ^0.5 2 1

# item modify entity @s[scores={InfinitePowderslingAmmo=0},predicate=ss_armory:has_arrow] weapon.mainhand {"type":"minecraft:set_components","components":{"minecraft:charged_projectiles":[{count:1,id:"minecraft:arrow"}]}}]
# execute unless entity @s[scores={InfinitePowderslingAmmo=0}] run item modify entity @s weapon.mainhand {"type":"minecraft:set_components","components":{"minecraft:charged_projectiles":[{count:1,id:"minecraft:arrow"}]}}]
# execute unless entity @s[scores={MultishotTimer=1}] if predicate ss_lib:random_50_percent run clear @s[scores={InfinitePowderslingAmmo=0},predicate=ss_armory:has_arrow] #minecraft:arrows 1

# temporary
# item modify entity @s weapon.mainhand {"type":"minecraft:set_components","components":{"minecraft:charged_projectiles":[{count:1,id:"minecraft:arrow"}]}}]