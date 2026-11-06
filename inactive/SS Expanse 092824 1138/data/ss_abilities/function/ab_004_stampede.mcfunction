scoreboard players add @a[scores={ability004=1..,OnGround=1},predicate=ss_library:is_sprinting] ability004-01 2
execute as @a[scores={ability004=1..}] run attribute @s minecraft:generic.movement_speed modifier remove ability004_movement_speed
execute as @a[scores={ability004=1..}] run attribute @s minecraft:generic.step_height modifier remove ability004_step_height
execute as @a[scores={ability004=1..,ability004-01=360..,Food=18..}] run attribute @s minecraft:generic.movement_speed modifier add ability004_movement_speed 0.10 add_value
execute as @a[scores={ability004=1..,ability004-01=300..,Food=16..}] run attribute @s minecraft:generic.movement_speed modifier add ability004_movement_speed 0.07 add_value
execute as @a[scores={ability004=1..,ability004-01=240..,Food=14..}] run attribute @s minecraft:generic.movement_speed modifier add ability004_movement_speed 0.05 add_value
execute as @a[scores={ability004=1..,ability004-01=90..,Food=14..}] run attribute @s minecraft:generic.movement_speed modifier add ability004_movement_speed 0.03 add_value
execute as @a[scores={ability004=1..,ability004-01=60..,Food=10..}] run attribute @s minecraft:generic.movement_speed modifier add ability004_movement_speed 0.02 add_value
execute as @a[scores={ability004=1..,ability004-01=30..,Food=10..}] run attribute @s minecraft:generic.movement_speed modifier add ability004_movement_speed 0.01 add_value
execute as @a[scores={ability004=1..,ability004-01=90..,Food=10..}] run attribute @s minecraft:generic.step_height modifier add ability004_step_height 1 add_multiplied_base
execute as @a[scores={ability004=1..,ability004-01=91..}] unless entity @s[predicate=ss_library:is_sprinting] run scoreboard players set @s ability004-01 90
execute as @a[scores={ability004=1..,ability004-01=..90,ability004-01=1..}] unless entity @s[predicate=ss_library:is_sprinting] run scoreboard players remove @s ability004-01 1