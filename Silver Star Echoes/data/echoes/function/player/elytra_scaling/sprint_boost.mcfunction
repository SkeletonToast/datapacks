# scoreboard players set $strength player_motion.api.launch 212
# execute unless predicate ss_lib:input/right unless predicate ss_lib:input/left run scoreboard players set $strength player_motion.api.launch 300
    scoreboard players operation $strength player_motion.api.launch = @s boost_fuel
    execute if score $strength player_motion.api.launch matches ..99 run scoreboard players set $strength player_motion.api.launch 100
# execute unless predicate ss_lib:input/right unless predicate ss_lib:input/left at @s anchored eyes run function player_motion:api/launch_looking
execute at @s anchored eyes run function player_motion:api/launch_looking
    # execute if predicate ss_lib:input/right run scoreboard players set $strength player_motion.api.launch 1000
    # execute if predicate ss_lib:input/left run scoreboard players set $strength player_motion.api.launch 1000
# execute if predicate ss_lib:input/right at @s anchored eyes facing ^-10 ^ ^-1 run function player_motion:api/launch_looking
# execute if predicate ss_lib:input/left at @s anchored eyes facing ^10 ^ ^-1 run function player_motion:api/launch_looking

execute at @s anchored eyes positioned ^ ^ ^ run particle firework ~ ~ ~ 0.5 0.5 0.5 0.01 10 normal @a
execute at @s anchored eyes positioned ^ ^ ^ run particle ominous_spawning ~ ~ ~ 0.5 0.5 0.5 0 10 normal @a
execute at @s anchored eyes positioned ^ ^ ^ run particle cloud ~ ~ ~ 0.5 0.5 0.5 0.02 10 normal @a
execute as @s[predicate=echoes:flying_very_quickly] at @s anchored eyes positioned ^ ^ ^1 run particle firework ~ ~ ~ 0.5 0.5 0.5 0.01 10 normal @s
execute as @s[predicate=echoes:flying_very_quickly] at @s anchored eyes positioned ^ ^ ^1 run particle ominous_spawning ~ ~ ~ 0.5 0.5 0.5 0 10 normal @s
execute as @s[predicate=echoes:flying_very_quickly] at @s anchored eyes positioned ^ ^ ^1 run particle cloud ~ ~ ~ 0.5 0.5 0.5 0.02 10 normal @s

scoreboard players set @s boost_visual_effects 20
scoreboard players set @s air_brake_time 0
scoreboard players remove @s boost_fuel 3
execute as @s[scores={slipstream=-200..0}] run function echoes:player/elytra_scaling/caught_slipstream_title
# scoreboard players set @s elytra_boost_cooldown 1
scoreboard players operation @s[scores={elytra_boost_cooldown=-200..}] slipstream += @s flight_level

xp add @s -1 points

scoreboard players operation @s[gamemode=creative] boost_fuel = @s generic_f

scoreboard players remove @s[tag=!elytra_sprint_boosting] boost_fuel 10
tag @s add elytra_sprint_boosting