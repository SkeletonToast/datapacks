execute at @s unless entity @s[predicate=ss_lib:is/moving] anchored eyes positioned ^ ^ ^ run function ss_statuses:alert_particles {"base":"0.0"}

execute at @s[predicate=ss_lib:is/moving] anchored eyes positioned ^ ^ ^ run function ss_statuses:alert_particles {"base":"0."}

scoreboard players set @s alert_active 1