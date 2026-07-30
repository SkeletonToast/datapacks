attribute @s[type=!#echoes:not_spawn_bolstered] attack_damage modifier add monster.bolster_attack_damage 0.5 add_multiplied_total
attribute @s[type=!#echoes:not_spawn_bolstered] step_height modifier add monster.bolster_step_height 1 add_multiplied_total
attribute @s[type=!#echoes:not_spawn_bolstered] armor modifier add monster.bolster_armor 10 add_value
attribute @s[type=!#echoes:not_spawn_bolstered] armor_toughness modifier add monster.bolster_armor 10 add_value
attribute @s[type=!#echoes:not_spawn_bolstered] max_health modifier add monster.bolster_max_health 0.5 add_multiplied_base
attribute @s[type=!#echoes:not_spawn_bolstered,type=!minecraft:creeper,type=!#echoes:spawn_bolster_scale] movement_speed modifier add monster.bolster_movement_speed 0.2 add_multiplied_base
# attribute @s[type=#echoes:spawn_bolster_scale] scale modifier add monster.bolster_scale 0.2 add_multiplied_base
execute at @s unless dimension eochrin:erdefret run attribute @s[type=!#echoes:not_spawn_bolstered] follow_range modifier add monster.bolster_follow_range 3 add_multiplied_base
# execute if entity @s[type=#minecraft:burn_in_daylight] unless items entity @s armor.head * run item replace entity @s armor.head with stone_button[enchantments={vanishing_curse:1}]

execute at @s if dimension eochrin:erdefret run attribute @s[type=!#echoes:not_spawn_bolstered] scale modifier add erdefret_monster.scale 0.2 add_multiplied_base

execute if entity @s[type=enderman] run attribute @s attack_damage modifier add moon_spirit.bolster_attack_damage -0.8 add_multiplied_total
execute if entity @s[type=enderman] if dimension minecraft:the_end run attribute @s max_health modifier add moon_spirit.bolster_attack_damage -0.75 add_multiplied_total
execute if entity @s[type=enderman] run attribute @s movement_speed modifier add moon_spirit.bolster_movement_speed -0.5 add_multiplied_total
execute if entity @s[type=enderman] run attribute @s scale modifier add moon_spirit.bolster_scale 0.3 add_multiplied_total
execute if entity @s[type=enderman] run effect give @s invisibility infinite 0 true
# execute if entity @s[type=enderman] run data merge entity @s {DeathLootTable:"minecraft:entities/enderman"}

tag @s[type=!#echoes:not_spawn_bolstered] add SpawnBolstered
tag @s add SpawnDuplicated

execute as @s[type=spider] if predicate ss_lib:random_50_percent run return fail
attribute @s[type=spider] movement_speed modifier remove monster.bolster_movement_speed
attribute @s[type=spider] scale modifier add monster.spider.scale -0.3 add_multiplied_base