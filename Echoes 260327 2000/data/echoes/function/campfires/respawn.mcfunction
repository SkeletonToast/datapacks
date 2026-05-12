execute at @s as @e[type=interaction,tag=campfire] \
    if score @s campfire_spawn_x = @p[distance=0] campfire_spawn_x \
    if score @s campfire_spawn_y = @p[distance=0] campfire_spawn_y \
    if score @s campfire_spawn_z = @p[distance=0] campfire_spawn_z \
        run tp @p[distance=0] @s

execute at @s if block ~ ~ ~ campfire run function echoes:campfires/particles_campfire
execute at @s if block ~ ~ ~ soul_campfire run function echoes:campfires/particles_soul_campfire
execute at @s if block ~ ~ ~ campfire[lit=true] run setblock ~ ~ ~ campfire[lit=false]
execute at @s if block ~ ~ ~ soul_campfire[lit=true] run setblock ~ ~ ~ soul_campfire[lit=false]
execute at @s if block ~ ~ ~ #minecraft:campfires run effect give @s fire_resistance 10 0 true
scoreboard players set @s campfire_spawn 0