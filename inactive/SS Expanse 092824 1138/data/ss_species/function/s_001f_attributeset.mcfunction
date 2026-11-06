function ss_library:attribute_reset
execute as @s run attribute @s minecraft:generic.attack_damage modifier remove species001_evolution_attack_damage
execute as @s run attribute @s minecraft:generic.attack_speed modifier remove species001_evolution_attack_speed
execute as @s run attribute @s minecraft:generic.knockback_resistance modifier remove species001_evolution_knockback_resistance
execute as @s run attribute @s minecraft:generic.movement_speed modifier remove species001_evolution_movement_speed
execute as @s run attribute @s minecraft:generic.max_health modifier remove species001_evolution_max_health

execute as @s[scores={species001-02=30..}] run attribute @s minecraft:generic.attack_damage modifier add species001_evolution_attack_damage 2.50 add_value
execute as @s[scores={species001-02=27..}] run attribute @s minecraft:generic.attack_damage modifier add species001_evolution_attack_damage 2.25 add_value
execute as @s[scores={species001-02=24..}] run attribute @s minecraft:generic.attack_damage modifier add species001_evolution_attack_damage 2.00 add_value
execute as @s[scores={species001-02=21..}] run attribute @s minecraft:generic.attack_damage modifier add species001_evolution_attack_damage 1.75 add_value
execute as @s[scores={species001-02=18..}] run attribute @s minecraft:generic.attack_damage modifier add species001_evolution_attack_damage 1.50 add_value
execute as @s[scores={species001-02=15..}] run attribute @s minecraft:generic.attack_damage modifier add species001_evolution_attack_damage 1.25 add_value
execute as @s[scores={species001-02=12..}] run attribute @s minecraft:generic.attack_damage modifier add species001_evolution_attack_damage 1.00 add_value
execute as @s[scores={species001-02=09..}] run attribute @s minecraft:generic.attack_damage modifier add species001_evolution_attack_damage 0.75 add_value
execute as @s[scores={species001-02=06..}] run attribute @s minecraft:generic.attack_damage modifier add species001_evolution_attack_damage 0.50 add_value
execute as @s[scores={species001-02=03..}] run attribute @s minecraft:generic.attack_damage modifier add species001_evolution_attack_damage 0.25 add_value

execute as @s[scores={species001-02=30..}] run attribute @s minecraft:generic.attack_speed modifier add species001_evolution_attack_speed 0.5 add_value
execute as @s[scores={species001-02=24..}] run attribute @s minecraft:generic.attack_speed modifier add species001_evolution_attack_speed 0.4 add_value
execute as @s[scores={species001-02=18..}] run attribute @s minecraft:generic.attack_speed modifier add species001_evolution_attack_speed 0.3 add_value
execute as @s[scores={species001-02=12..}] run attribute @s minecraft:generic.attack_speed modifier add species001_evolution_attack_speed 0.2 add_value
execute as @s[scores={species001-02=06..}] run attribute @s minecraft:generic.attack_speed modifier add species001_evolution_attack_speed 0.1 add_value

execute as @s[scores={species001-02=10..}] run attribute @s minecraft:generic.knockback_resistance modifier add species001_evolution_knockback_resistance 1.0 add_value
execute as @s[scores={species001-02=09..}] run attribute @s minecraft:generic.knockback_resistance modifier add species001_evolution_knockback_resistance 0.9 add_value
execute as @s[scores={species001-02=08..}] run attribute @s minecraft:generic.knockback_resistance modifier add species001_evolution_knockback_resistance 0.8 add_value
execute as @s[scores={species001-02=07..}] run attribute @s minecraft:generic.knockback_resistance modifier add species001_evolution_knockback_resistance 0.7 add_value
execute as @s[scores={species001-02=06..}] run attribute @s minecraft:generic.knockback_resistance modifier add species001_evolution_knockback_resistance 0.6 add_value
execute as @s[scores={species001-02=05..}] run attribute @s minecraft:generic.knockback_resistance modifier add species001_evolution_knockback_resistance 0.5 add_value
execute as @s[scores={species001-02=04..}] run attribute @s minecraft:generic.knockback_resistance modifier add species001_evolution_knockback_resistance 0.4 add_value
execute as @s[scores={species001-02=03..}] run attribute @s minecraft:generic.knockback_resistance modifier add species001_evolution_knockback_resistance 0.3 add_value
execute as @s[scores={species001-02=02..}] run attribute @s minecraft:generic.knockback_resistance modifier add species001_evolution_knockback_resistance 0.2 add_value
execute as @s[scores={species001-02=01..}] run attribute @s minecraft:generic.knockback_resistance modifier add species001_evolution_knockback_resistance 0.1 add_value

execute as @s[scores={species001-02=20..}] run attribute @s minecraft:generic.movement_speed modifier add species001_evolution_movement_speed 0.025 add_value
execute as @s[scores={species001-02=26..}] run attribute @s minecraft:generic.movement_speed modifier add species001_evolution_movement_speed 0.020 add_value
execute as @s[scores={species001-02=12..}] run attribute @s minecraft:generic.movement_speed modifier add species001_evolution_movement_speed 0.015 add_value
execute as @s[scores={species001-02=08..}] run attribute @s minecraft:generic.movement_speed modifier add species001_evolution_movement_speed 0.010 add_value
execute as @s[scores={species001-02=04..}] run attribute @s minecraft:generic.movement_speed modifier add species001_evolution_movement_speed 0.005 add_value

execute as @s[scores={species001-02=30..}] run attribute @s minecraft:generic.max_health modifier add species001_evolution_max_health 20 add_value
execute as @s[scores={species001-02=27..}] run attribute @s minecraft:generic.max_health modifier add species001_evolution_max_health 18 add_value
execute as @s[scores={species001-02=24..}] run attribute @s minecraft:generic.max_health modifier add species001_evolution_max_health 16 add_value
execute as @s[scores={species001-02=21..}] run attribute @s minecraft:generic.max_health modifier add species001_evolution_max_health 14 add_value
execute as @s[scores={species001-02=18..}] run attribute @s minecraft:generic.max_health modifier add species001_evolution_max_health 12 add_value
execute as @s[scores={species001-02=15..}] run attribute @s minecraft:generic.max_health modifier add species001_evolution_max_health 10 add_value
execute as @s[scores={species001-02=12..}] run attribute @s minecraft:generic.max_health modifier add species001_evolution_max_health 8 add_value
execute as @s[scores={species001-02=09..}] run attribute @s minecraft:generic.max_health modifier add species001_evolution_max_health 6 add_value
execute as @s[scores={species001-02=06..}] run attribute @s minecraft:generic.max_health modifier add species001_evolution_max_health 4 add_value
execute as @s[scores={species001-02=03..}] run attribute @s minecraft:generic.max_health modifier add species001_evolution_max_health 2 add_value