execute as @e[type=#ss_lib:hostile,distance=..3] run function echoes:enchantments/pyrebrand_particles
execute as @e[type=#ss_lib:hostile,distance=..3] unless entity @s[scores={cleansed_timer=20..}] run scoreboard players set @s cleansed_timer 200
tag @e[type=#ss_lib:hostile,distance=..3] add ssl.action.pacify