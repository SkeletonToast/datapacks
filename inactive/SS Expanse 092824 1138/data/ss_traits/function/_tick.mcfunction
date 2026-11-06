function ss_traits:_traits

execute as @a[scores={trait001=0}] run attribute @s generic.safe_fall_distance modifier remove trait001_safe_fall_distance
execute as @a[scores={trait001=0}] run attribute @s player.block_break_speed modifier remove trait001_block_break_speed
execute as @a[scores={trait001=0}] run attribute @s generic.movement_speed modifier remove trait001_movement_speed
execute as @a[scores={trait001=0}] run attribute @s generic.jump_strength modifier remove trait001_jump_strength
execute as @a[scores={trait001=0}] run attribute @s generic.fall_damage_multiplier modifier remove trait001_fall_damage_multiplier
execute as @a[scores={trait001=0}] run attribute @s generic.movement_efficiency modifier remove trait001_movement_efficiency
execute as @a[scores={trait001=0}] run attribute @s generic.water_movement_efficiency modifier remove trait001_water_movement_efficiency
execute as @a[scores={trait001=0}] run attribute @s generic.step_height modifier remove trait001_step_height
execute as @a[scores={trait001=0}] run attribute @s generic.gravity modifier remove trait001_climbing_gravity

clear @a[scores={trait002=0}] elytra[custom_data~{wing_type:{min:1}}]
execute as @a[scores={trait002-01=0}] run attribute @s generic.gravity modifier remove trait002_gravity
execute as @a[predicate=ss_library:is_ascending] run attribute @s generic.gravity modifier remove trait002_gravity
scoreboard players set @a[scores={trait002-01=1..}] trait002-01 0

scoreboard players remove @a[scores={trait003=0}] trait003-01 1