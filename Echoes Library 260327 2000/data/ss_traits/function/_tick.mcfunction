function ss_traits:_traits

execute as @a[scores={trait001=0}] run attribute @s safe_fall_distance modifier remove trait001_safe_fall_distance
execute as @a[scores={trait001=0}] run attribute @s block_break_speed modifier remove trait001_block_break_speed
execute as @a[scores={trait001=0}] run attribute @s movement_speed modifier remove trait001_movement_speed
execute as @a[scores={trait001=0}] run attribute @s jump_strength modifier remove trait001_jump_strength
execute as @a[scores={trait001=0}] run attribute @s fall_damage_multiplier modifier remove trait001_fall_damage_multiplier
execute as @a[scores={trait001=0}] run attribute @s movement_efficiency modifier remove trait001_movement_efficiency
execute as @a[scores={trait001=0}] run attribute @s water_movement_efficiency modifier remove trait001_water_movement_efficiency
execute as @a[scores={trait001=0}] run attribute @s step_height modifier remove trait001_step_height
execute as @a[scores={trait001=0}] run attribute @s gravity modifier remove trait001_climbing_gravity

clear @a[scores={trait002=0}] elytra[custom_data~{wing_type:{min:1}}]
execute as @a[scores={trait002-01=0}] run attribute @s gravity modifier remove trait002_gravity
execute as @a[predicate=ss_lib:is/ascending] run attribute @s gravity modifier remove trait002_gravity
scoreboard players set @a[scores={trait002-01=1..}] trait002-01 0

scoreboard players remove @a[scores={trait003=0}] trait003-01 1

execute as @a[scores={trait004=0}] run attribute @s sneaking_speed modifier remove trait004_sneaking_speed

execute as @r[scores={trait001=1..}] run function ss_traits:t_001_agile
execute as @r[scores={trait002=1..}] run function ss_traits:t_002_winged
execute as @r[scores={trait003=1..}] run function ss_traits:t_003_quick_learner
execute as @r[scores={trait004=1..}] run function ss_traits:t_004_stealthy