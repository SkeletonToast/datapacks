execute as @a[scores={trait001=1..}] run attribute @s block_break_speed modifier remove trait001_block_break_speed
execute as @a[scores={trait001=1..}] run attribute @s movement_speed modifier remove trait001_movement_speed
execute as @a[scores={trait001=1..}] run attribute @s jump_strength modifier remove trait001_jump_strength
execute as @a[scores={trait001=1..}] run attribute @s fall_damage_multiplier modifier remove trait001_fall_damage_multiplier
execute as @a[scores={trait001=1..}] run attribute @s movement_efficiency modifier remove trait001_movement_efficiency
execute as @a[scores={trait001=1..}] run attribute @s water_movement_efficiency modifier remove trait001_water_movement_efficiency
execute as @a[scores={trait001=1..}] run attribute @s step_height modifier remove trait001_step_height

execute as @a[scores={trait001=1}] run attribute @s block_break_speed modifier add trait001_block_break_speed 0.10 add_multiplied_base
execute as @a[scores={trait001=2}] run attribute @s block_break_speed modifier add trait001_block_break_speed 0.15 add_multiplied_base
execute as @a[scores={trait001=3}] run attribute @s block_break_speed modifier add trait001_block_break_speed 0.20 add_multiplied_base

execute as @a[scores={trait001=1}] run attribute @s movement_speed modifier add trait001_movement_speed 0.20 add_multiplied_base
execute as @a[scores={trait001=2}] run attribute @s movement_speed modifier add trait001_movement_speed 0.25 add_multiplied_base
execute as @a[scores={trait001=3}] run attribute @s movement_speed modifier add trait001_movement_speed 0.30 add_multiplied_base

execute as @a[scores={trait001=2}] run attribute @s jump_strength modifier add trait001_jump_strength 0.20 add_multiplied_base
execute as @a[scores={trait001=3}] run attribute @s jump_strength modifier add trait001_jump_strength 0.30 add_multiplied_base

execute as @a[scores={trait001=1}] run attribute @s fall_damage_multiplier modifier add trait001_fall_damage_multiplier -0.30 add_multiplied_base
execute as @a[scores={trait001=2}] run attribute @s fall_damage_multiplier modifier add trait001_fall_damage_multiplier -0.35 add_multiplied_base
execute as @a[scores={trait001=3}] run attribute @s fall_damage_multiplier modifier add trait001_fall_damage_multiplier -0.40 add_multiplied_base

execute as @a[scores={trait001=1}] run attribute @s safe_fall_distance modifier add trait001_safe_fall_distance 7 add_value
execute as @a[scores={trait001=2}] run attribute @s safe_fall_distance modifier add trait001_safe_fall_distance 10 add_value
execute as @a[scores={trait001=3}] run attribute @s safe_fall_distance modifier add trait001_safe_fall_distance 13 add_value

execute as @a[scores={trait001=1}] run attribute @s movement_efficiency modifier add trait001_movement_efficiency 0.4 add_multiplied_base
execute as @a[scores={trait001=2}] run attribute @s movement_efficiency modifier add trait001_movement_efficiency 0.5 add_multiplied_base
execute as @a[scores={trait001=3}] run attribute @s movement_efficiency modifier add trait001_movement_efficiency 0.6 add_multiplied_base

execute as @a[scores={trait001=1}] run attribute @s water_movement_efficiency modifier add trait001_water_movement_efficiency 0.4 add_value
execute as @a[scores={trait001=2}] run attribute @s water_movement_efficiency modifier add trait001_water_movement_efficiency 0.5 add_value
execute as @a[scores={trait001=3}] run attribute @s water_movement_efficiency modifier add trait001_water_movement_efficiency 0.6 add_value

execute as @a[scores={trait001=1..}] run attribute @s step_height modifier add trait001_step_height 1 add_multiplied_base

execute as @a[scores={trait001=1..}] at @s unless block ~ ~ ~ #minecraft:climbable unless block ~ ~1 ~ #minecraft:climbable run attribute @s gravity modifier remove trait001_climbing_gravity
execute as @a[scores={trait001=1..}] unless entity @s[predicate=ss_lib:traits/climbing_input] run attribute @s gravity modifier remove trait001_climbing_gravity
execute as @a[scores={trait001=1..},predicate=ss_lib:traits/climbing_input] if predicate ss_lib:input/jump at @s if block ~ ~ ~ #minecraft:climbable run attribute @s gravity modifier add trait001_climbing_gravity -1.5 add_multiplied_base
execute as @a[scores={trait001=1..},predicate=ss_lib:traits/climbing_input] at @s anchored eyes if block ^ ^ ^ #minecraft:climbable run attribute @s gravity modifier add trait001_climbing_gravity -1.5 add_multiplied_base