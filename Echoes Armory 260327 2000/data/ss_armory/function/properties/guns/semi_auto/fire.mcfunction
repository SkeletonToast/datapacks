# note: "at @s anchored eyes" is applied in the guns/_main function

execute if entity @s[scores={SneakTime=0..20}] positioned ^ ^ ^0.25 positioned ~ ~-0.2 ~ run function raycast:either \
    {"particle":"particle crit ~ ~ ~ 0 0 0 0 1 normal @a","increment_distance":"0.25","max_lifetime":"80","run_on_block_success":"function ss_armory:properties/guns/bullet_hit_block","run_on_entity_success":"function ss_armory:properties/guns/semi_auto/damage",solid_block_collision:false}
execute if entity @s[scores={SneakTime=21..}] positioned ^ ^ ^0.25 positioned ~ ~-0.2 ~ run function raycast:either \
    {"particle":"particle crit ~ ~ ~ 0 0 0 0 1 normal @a","increment_distance":"0.25","max_lifetime":"150","run_on_block_success":"function ss_armory:properties/guns/bullet_hit_block","run_on_entity_success":"function ss_armory:properties/guns/semi_auto/damage",solid_block_collision:false}

execute positioned ^ ^ ^0.5 run particle smoke ~ ~-0.2 ~ 0.1 0.1 0.1 0.01 1
execute positioned ^ ^ ^0.5 run particle small_flame ~ ~-0.2 ~ 0.1 0.1 0.1 0.01 1

playsound minecraft:entity.firework_rocket.blast_far player @a ^ ^ ^0.5 2 0.1
playsound minecraft:entity.firework_rocket.large_blast_far player @a ^ ^ ^0.5 0.5 0.7
playsound minecraft:entity.blaze.hurt player @a ^ ^ ^0.5 0.5 1
playsound minecraft:block.wood.break player @a ^ ^ ^0.5 2 1

item modify entity @s[scores={InfinitePowderslingAmmo=0},predicate=ss_armory:has_arrow] weapon.mainhand [{"function":"minecraft:set_components","components":{"minecraft:charged_projectiles":[{count:1,id:"minecraft:arrow"}]}}]
execute unless entity @s[scores={InfinitePowderslingAmmo=0}] run item modify entity @s weapon.mainhand [{"function":"minecraft:set_components","components":{"minecraft:charged_projectiles":[{count:1,id:"minecraft:arrow"}]}}]
execute unless entity @s[scores={MultishotTimer=1}] unless entity @s[scores={powdersling_cooldown=1..}] if predicate ss_lib:random_50_percent run clear @s[scores={InfinitePowderslingAmmo=0},predicate=ss_armory:has_arrow] #minecraft:arrows 1
execute unless entity @s[scores={MultishotTimer=1}] if entity @s[scores={powdersling_cooldown=1..}] run clear @s[scores={InfinitePowderslingAmmo=0},predicate=ss_armory:has_arrow] #minecraft:arrows 1

# execute unless entity @s[scores={encumbered_timer=11..}] run scoreboard players add @s encumbered_timer 10

execute unless entity @s[scores={powdersling_cooldown=3..}] run scoreboard players set @s powdersling_cooldown 2