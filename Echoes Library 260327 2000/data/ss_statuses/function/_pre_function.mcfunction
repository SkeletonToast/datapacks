tag @a add StatusEligible
execute as @a[scores={TimeSinceDeath=1}] run function ss_statuses:respawn_timer_reset

# base activity scores
execute as @a unless entity @s[scores={alert_active=0..}] run scoreboard players set @s alert_active -1

# IMMOBILIZED
execute as @e[tag=StatusEligible,scores={immobilized_active=0}] run attribute @s minecraft:jump_strength modifier remove immobilized_jump_strength
execute as @e[tag=StatusEligible,scores={immobilized_active=0}] run attribute @s minecraft:movement_speed modifier remove immobilized_movement_speed
execute as @e[tag=StatusEligible,scores={immobilized_active=0}] run attribute @s minecraft:knockback_resistance modifier remove immobilized_knockback_resistance

# INCENDIARY - Should only be run with timer
scoreboard players set @a[scores={incendiary_timer=200..}] incendiary_timer 200
execute as @a[scores={incendiary_timer=1..}] if score @s incendiary_timer <= @s wet_timer run scoreboard players set @s incendiary_timer 0
execute as @a run attribute @s minecraft:burning_time modifier remove incendiary_burning_time
    # execute as @a[scores={incendiary_active=0}] run attribute @s minecraft:burning_time modifier remove incendiary_burning_time

# WET - Should only be run with timer
# function ss_lib:fetch/in_water {s:"@a"}
scoreboard players set @a[scores={wet_timer=200..}] wet_timer 200
execute as @a[scores={wet_timer=1..}] if score @s wet_timer <= @s incendiary_timer run scoreboard players set @s wet_timer 0
scoreboard players set @a[scores={wet_timer=1..,Dimension=2}] wet_timer 0
scoreboard players add @a[scores={InWater=1..}] wet_timer 3
execute as @a[predicate=ss_lib:in_rain] unless entity @s[predicate=ss_lib:in_biome_cold] run scoreboard players add @s wet_timer 2
execute as @a run attribute @s minecraft:burning_time modifier remove wet_burning_time
    # execute as @a[scores={wet_active=0}] run attribute @s minecraft:burning_time modifier remove wet_burning_time