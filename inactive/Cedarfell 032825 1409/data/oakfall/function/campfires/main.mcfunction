tag @a[tag=Kindling] remove Kindling
tag @a[tag=NearCampfire] remove NearCampfire

execute as @a at @s if entity @e[type=interaction,tag=Campfire,distance=..5] run tag @s add NearCampfire
execute as @a on vehicle if entity @s[type=#minecraft:boat] on passengers if items entity @s weapon.mainhand #oakfall:campfires run tag @s add NearCampfire

scoreboard players set @a[scores={of_placed_soul_campfire=1..}] of_placed_campfire 1
execute as @a[scores={of_placed_campfire=1}] at @s anchored eyes positioned ^ ^ ^0.25 run function ss_raycast:block_specific {"block":"#minecraft:campfires","particle":"execute if entity @s","increment_distance":"0.25","max_lifetime":"30","run_on_success":"execute align xyz positioned ~0.5 ~0.15 ~0.5 run function oakfall:campfires/place"}
execute as @a[scores={of_placed_campfire=1}] at @s anchored eyes positioned ^ ^ ^0.25 positioned ~ ~1 ~ run function ss_raycast:block_specific {"block":"#minecraft:campfires","particle":"execute if entity @s","increment_distance":"0.25","max_lifetime":"30","run_on_success":"execute align xyz positioned ~0.5 ~0.15 ~0.5 run function oakfall:campfires/place"}

execute at @e[type=minecraft:interaction,tag=Campfire,tag=!Soul_Campfire] run particle trial_spawner_detection ~ ~ ~ 0.2 0.2 0.2 0 1 normal @a
execute at @e[type=minecraft:interaction,tag=Soul_Campfire] run particle trial_spawner_detection_ominous ~ ~ ~ 0.2 0.2 0.2 0 1 normal @a
    # execute at @e[type=minecraft:interaction,tag=Campfire,tag=!Soul_Campfire] as @a[distance=..10] unless entity @s[predicate=ss_lib:is_hiding] if predicate ss_lib:random_10_percent at @s anchored eyes run particle trial_spawner_detection ^ ^ ^ 0.2 0.2 0.2 0 1 normal @a[distance=0.1..]
    # execute at @e[type=minecraft:interaction,tag=Soul_Campfire] as @a[distance=..10] unless entity @s[predicate=ss_lib:is_hiding] if predicate ss_lib:random_10_percent at @s anchored eyes run particle trial_spawner_detection_ominous ^ ^ ^ 0.2 0.2 0.2 0 1 normal @a[distance=0.1..]
    # execute at @e[type=minecraft:interaction,tag=Soul_Campfire] run particle ominous_spawning ~ ~0.2 ~ 0 0 0 0.5 1 normal @a

execute as @e[type=minecraft:interaction,tag=Campfire] at @s if data entity @s interaction on target run function oakfall:campfires/kindle
execute as @e[type=minecraft:interaction,tag=Campfire] at @s if data entity @s attack on attacker run function oakfall:campfires/break

execute as @e[type=minecraft:interaction,tag=Campfire,tag=!Soul_Campfire] at @s unless block ~ ~ ~ campfire[lit=true] align y run function of_particles:campfire
execute as @e[type=minecraft:interaction,tag=Soul_Campfire] at @s unless block ~ ~ ~ soul_campfire[lit=true] align y run function of_particles:soul_campfire
execute as @e[type=minecraft:interaction,tag=Campfire] at @s unless block ~ ~ ~ #minecraft:campfires[lit=true] run kill @s

execute as @e[type=minecraft:interaction,tag=Campfire] if data entity @s interaction run data remove entity @s interaction
execute as @e[type=minecraft:interaction,tag=Campfire] if data entity @s attack run data remove entity @s attack

scoreboard players set @a[scores={of_placed_campfire=1..}] of_placed_campfire 0
scoreboard players set @a[scores={of_placed_soul_campfire=1..}] of_placed_soul_campfire 0

execute at @e[type=minecraft:interaction,tag=Campfire,tag=!Soul_Campfire,scores={of_campfire_display_range=0..}] run particle trial_spawner_detection ~ ~ ~ 4 0.2 4 0 10 normal @a
execute at @e[type=minecraft:interaction,tag=Soul_Campfire,scores={of_campfire_display_range=0..}] run particle trial_spawner_detection_ominous ~ ~ ~ 4 0.2 4 0 10 normal @a
execute at @e[type=minecraft:interaction,tag=Campfire,scores={of_campfire_display_range=1..}] run particle end_rod ~10 ~0.5 ~ 0 0 0 0 1 normal @a
execute at @e[type=minecraft:interaction,tag=Campfire,scores={of_campfire_display_range=1..}] run particle end_rod ~-10 ~0.5 ~ 0 0 0 0 1 normal @a
execute at @e[type=minecraft:interaction,tag=Campfire,scores={of_campfire_display_range=1..}] run particle end_rod ~ ~0.5 ~10 0 0 0 0 1 normal @a
execute at @e[type=minecraft:interaction,tag=Campfire,scores={of_campfire_display_range=1..}] run particle end_rod ~ ~0.5 ~-10 0 0 0 0 1 normal @a
execute at @e[type=minecraft:interaction,tag=Campfire,scores={of_campfire_display_range=1..}] run particle end_rod ~7 ~0.5 ~7 0 0 0 0 1 normal @a
execute at @e[type=minecraft:interaction,tag=Campfire,scores={of_campfire_display_range=1..}] run particle end_rod ~-7 ~0.5 ~7 0 0 0 0 1 normal @a
execute at @e[type=minecraft:interaction,tag=Campfire,scores={of_campfire_display_range=1..}] run particle end_rod ~-7 ~0.5 ~-7 0 0 0 0 1 normal @a
execute at @e[type=minecraft:interaction,tag=Campfire,scores={of_campfire_display_range=1..}] run particle end_rod ~7 ~0.5 ~-7 0 0 0 0 1 normal @a

scoreboard players remove @e[scores={of_campfire_display_range=0..}] of_campfire_display_range 1

# campfire respawning
# execute as @r[scores={of_campfire_spawn=1,TimeSinceDeath=1}] run function oakfall:campfires/respawn