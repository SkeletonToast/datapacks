tag @a[tag=Kindling] remove Kindling
tag @a[tag=near_campfire] remove near_campfire

execute as @e[type=minecraft:interaction,tag=campfire,tag=!soul_campfire] at @s if block ~ ~ ~ soul_campfire run tag @s add soul_campfire
execute as @e[type=minecraft:interaction,tag=soul_campfire] at @s if block ~ ~ ~ campfire run tag @s remove soul_campfire

function echoes:campfires/lanterns

# scoreboard players set @a[scores={used_flint_and_steel=1..}] placed_campfire 1

    # FIX THIS!!!!!!!!!!
execute as @a at @s if entity @e[type=interaction,tag=campfire,distance=..5] run tag @s add near_campfire_5
execute as @a at @s if entity @e[type=interaction,tag=campfire,distance=..10] run tag @s add near_campfire_10
    tag @a[tag=near_campfire_5] add near_campfire

# execute as @a on vehicle if entity @s[type=#minecraft:boat] on passengers if items entity @s weapon.mainhand #echoes:campfires run tag @s add near_campfire

scoreboard players set @a[scores={placed_soul_campfire=1..}] placed_campfire 1
execute as @a[scores={placed_campfire=1}] at @s anchored eyes positioned ^ ^ ^0.25 run function raycast:block_specific {"block":"#minecraft:campfires","particle":"execute if entity @s","increment_distance":"0.25","max_lifetime":"30","run_on_success":"execute align xyz positioned ~0.5 ~0.15 ~0.5 run function echoes:campfires/place"}
execute as @a[scores={placed_campfire=1}] at @s anchored eyes positioned ^ ^ ^0.25 positioned ~ ~1 ~ run function raycast:block_specific {"block":"#minecraft:campfires","particle":"execute if entity @s","increment_distance":"0.25","max_lifetime":"30","run_on_success":"execute align xyz positioned ~0.5 ~0.15 ~0.5 run function echoes:campfires/place"}

# particles
execute at @e[type=minecraft:interaction,tag=campfire,tag=!soul_campfire] run particle trial_spawner_detection ~ ~ ~ 0.2 0.2 0.2 0 1 normal @a
execute at @e[type=minecraft:interaction,tag=soul_campfire] run particle trial_spawner_detection_ominous ~ ~ ~ 0.2 0.2 0.2 0 1 normal @a

execute at @e[type=minecraft:interaction,tag=campfire,tag=!soul_campfire] as @a[distance=..10] unless entity @s[predicate=ss_lib:is/hiding] if predicate ss_lib:random_10_percent at @s anchored eyes run particle trial_spawner_detection ^ ^ ^ 0.2 0.2 0.2 0 1 normal @a[distance=0.1..]
execute at @e[type=minecraft:interaction,tag=soul_campfire] as @a[distance=..10] unless entity @s[predicate=ss_lib:is/hiding] if predicate ss_lib:random_10_percent at @s anchored eyes run particle trial_spawner_detection_ominous ^ ^ ^ 0.2 0.2 0.2 0 1 normal @a[distance=0.1..]
    # execute at @e[type=minecraft:interaction,tag=soul_campfire] run particle ominous_spawning ~ ~0.2 ~ 0 0 0 0.5 1 normal @a

# kindling / breaking
execute as @e[type=minecraft:interaction,tag=campfire] at @s if data entity @s interaction on target run function echoes:campfires/kindle
execute as @e[type=minecraft:interaction,tag=campfire] at @s if data entity @s attack on attacker run function echoes:campfires/break

# break particles
execute as @e[type=minecraft:interaction,tag=campfire,tag=!soul_campfire] at @s unless block ~ ~ ~ campfire[lit=true] align y run function echoes:campfires/particles_campfire
execute as @e[type=minecraft:interaction,tag=soul_campfire] at @s unless block ~ ~ ~ soul_campfire[lit=true] align y run function echoes:campfires/particles_soul_campfire
execute as @e[type=minecraft:interaction,tag=campfire] at @s unless block ~ ~ ~ #minecraft:campfires[lit=true] run kill @s

# data removal
execute as @e[type=minecraft:interaction,tag=campfire] if data entity @s interaction run data remove entity @s interaction
execute as @e[type=minecraft:interaction,tag=campfire] if data entity @s attack run data remove entity @s attack

# erdefret
execute if entity @a[scores={Dimension=4}] as @e[type=minecraft:interaction,tag=campfire] at @s if dimension eochrin:erdefret run function echoes:campfires/erdefret
    # execute as @a[scores={Dimension=4}] at @s anchored eyes facing entity @n[type=minecraft:interaction,tag=campfire,distance=5..50] feet run particle flame ^ ^ ^3 0 0 0 0 1 normal @s

# overheal enabling - make some sort of incense for this
execute at @e[type=minecraft:interaction,tag=campfire] as @a[distance=..10] run scoreboard players operation @s overheal_limit = @s BaseMaxHealth

# placing / flint and steel
    # scoreboard players set @a[scores={used_flint_and_steel=1..}] used_flint_and_steel 0
scoreboard players set @a[scores={placed_campfire=1..}] placed_campfire 0
scoreboard players set @a[scores={placed_soul_campfire=1..}] placed_soul_campfire 0

# range display
execute as @e[type=minecraft:interaction,tag=campfire,scores={campfire_display_range=1..}] at @s run function echoes:campfires/range_display

scoreboard players remove @e[scores={campfire_display_range=0..}] campfire_display_range 1

# campfire respawning
# execute as @r[scores={campfire_spawn=1,TimeSinceDeath=1}] run function echoes:campfires/respawn