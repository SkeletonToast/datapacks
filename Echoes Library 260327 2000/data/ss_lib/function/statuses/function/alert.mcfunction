$execute at @s unless entity @s[predicate=ss_lib:is/moving] if predicate {"condition":"minecraft:random_chance","chance":$(value)} anchored eyes positioned ^ ^ ^ run function ss_lib:status/alert_particles {"base":"0.0"}

$execute at @s[predicate=ss_lib:is/moving] if predicate {"condition":"minecraft:random_chance","chance":$(value)} anchored eyes positioned ^ ^ ^ run function ss_lib:status/alert_particles {"base":"0."}

scoreboard players set @s alert_active 1