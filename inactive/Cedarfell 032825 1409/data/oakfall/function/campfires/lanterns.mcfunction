clear @a[scores={RestOrRespawn=2}] *[custom_data~{ember_lantern:true}]
execute as @a[scores={RestOrRespawn=2}] run function oakfall:campfires/lantern_give

execute as @a[predicate=ss_lib:is_sneaking,predicate=oakfall:holding_ember_lantern,scores={of_lantern_cooldown=0,OnGround=1}] unless entity @s[predicate=ss_lib:is_moving] at @s anchored eyes positioned ^ ^ ^ positioned ~ ~-0.3 ~ unless entity @e[type=minecraft:interaction,tag=Lantern,dx=0.01,dy=0.01,dz=0.01] unless entity @e[type=minecraft:interaction,tag=Lantern,dx=-0.01,dy=-0.01,dz=-0.01] summon interaction run function oakfall:campfires/lantern_interaction
execute as @a[predicate=ss_lib:is_sneaking,predicate=oakfall:holding_ember_lantern,scores={of_lantern_cooldown=0,OnGround=1}] run function ss_statuses:immobilized
execute as @e[type=minecraft:interaction,tag=Lantern] at @s unless entity @a[predicate=ss_lib:is_sneaking,dx=0.01,dy=0.01,dz=0.01] unless entity @a[predicate=ss_lib:is_sneaking,dx=-0.01,dy=-0.01,dz=-0.01] run kill @s
execute as @e[type=minecraft:interaction,tag=Lantern] at @s if data entity @s interaction on target run scoreboard players set @s of_lantern_cooldown 20
execute as @e[type=minecraft:interaction,tag=Lantern] at @s if data entity @s interaction on target at @s anchored eyes positioned ^ ^ ^0.5 run function ss_raycast:block {"particle":"particle smoke ~ ~ ~ 0 0 0 0 1 normal @a","increment_distance":"0.25","max_lifetime":"60","run_on_success":"function oakfall:campfires/lantern_light"}
execute as @e[type=minecraft:interaction,tag=Lantern] at @s if data entity @s interaction run kill @s

execute at @e[type=area_effect_cloud,tag=EmberSprite] run particle trial_spawner_detection ~ ~ ~ 0.1 0.1 0.1 0 1 normal @a
execute at @e[type=area_effect_cloud,tag=EmberSprite] run particle small_flame ~ ~ ~ 0.1 0.1 0.1 0 1 normal @a
execute at @e[type=area_effect_cloud,tag=EmberSprite,scores={Age=..-30}] run particle end_rod ~ ~0.1 ~ 0.01 0.01 0.01 0 1 normal @a
execute at @e[type=area_effect_cloud,tag=EmberSprite,scores={Age=-2..}] run particle large_smoke ~ ~ ~ 0.1 0.1 0.1 0 10 normal @a
execute at @e[type=area_effect_cloud,tag=EmberSprite,scores={Age=-1..}] run fill ~ ~ ~ ~ ~ ~ air replace light[level=8]

scoreboard players remove @a[scores={of_lantern_cooldown=1..}] of_lantern_cooldown 1
execute as @a unless entity @s[scores={of_lantern_cooldown=1..}] run scoreboard players set @s of_lantern_cooldown 0