attribute @s[type=!#echoes:not_spawn_bolstered] attack_damage modifier add monster_bolster_attack_damage 0.5 add_multiplied_total
attribute @s[type=!#echoes:not_spawn_bolstered] step_height modifier add monster_bolster_step_height 1 add_multiplied_total
attribute @s[type=!#echoes:not_spawn_bolstered] armor modifier add monster_bolster_armor 10 add_value
attribute @s[type=!#echoes:not_spawn_bolstered] max_health modifier add monster_bolster_max_health 1 add_multiplied_base
attribute @s[type=!#echoes:not_spawn_bolstered] movement_speed modifier add monster_bolster_movement_speed 0.2 add_multiplied_base
execute at @s unless dimension eochrin:erdefret run attribute @s[type=!#echoes:not_spawn_bolstered] follow_range modifier add monster_bolster_follow_range 2 add_multiplied_base
execute if entity @s[type=#minecraft:burn_in_daylight] unless items entity @s armor.head * run item replace entity @s armor.head with stone_button[enchantments={vanishing_curse:1}]

execute at @s if dimension eochrin:erdefret run attribute @s[type=!#echoes:not_spawn_bolstered] scale modifier add erdefret_monster_scale 0.2 add_multiplied_base

execute if entity @s[type=enderman] run attribute @s attack_damage modifier add enderman_bolster_attack_damage -0.8 add_multiplied_total
execute if entity @s[type=enderman] if dimension minecraft:the_end run attribute @s max_health modifier add enderman_bolster_attack_damage -0.75 add_multiplied_total
execute if entity @s[type=enderman] run attribute @s movement_speed modifier add enderman_bolster_movement_speed -0.5 add_multiplied_total
execute if entity @s[type=enderman] run attribute @s scale modifier add enderman_bolster_scale 0.3 add_multiplied_total
execute if entity @s[type=enderman] run effect give @s invisibility infinite 0 true
# execute if entity @s[type=enderman] run data merge entity @s {DeathLootTable:"minecraft:entities/enderman"}

tag @s[type=!#echoes:not_spawn_bolstered] add SpawnBolstered
tag @s add SpawnDuplicated