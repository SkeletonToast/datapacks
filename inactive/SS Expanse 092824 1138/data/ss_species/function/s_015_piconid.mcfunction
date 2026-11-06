execute as @a[scores={species=015}] unless entity @s[predicate=ss_library:is_sneaking] run attribute @s minecraft:generic.jump_strength modifier remove species015_jump_height
execute as @a[scores={species=015},predicate=ss_library:is_sneaking] run attribute @s minecraft:generic.jump_strength modifier add species015_jump_height 0.5 add_multiplied_base
execute as @a[scores={species=015}] run attribute @s minecraft:generic.scale base set 0.5
execute as @a[scores={species=015}] run attribute @s minecraft:generic.movement_speed base set 0.07
execute as @a[scores={species=015}] run attribute @s minecraft:player.entity_interaction_range base set 1.5
execute as @a[scores={species=015}] run attribute @s minecraft:player.block_interaction_range base set 2.25
execute as @a[scores={species=015}] run attribute @s minecraft:player.block_break_speed base set 0.25
execute as @a[scores={species=015}] run attribute @s minecraft:generic.jump_strength base set 0.21
execute as @a[scores={species=015}] run attribute @s minecraft:generic.step_height base set 0.3
execute as @a[scores={species=015}] run attribute @s minecraft:generic.gravity base set 0.04