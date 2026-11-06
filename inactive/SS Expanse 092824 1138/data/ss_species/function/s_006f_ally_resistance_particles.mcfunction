particle electric_spark ~ ~ ~

execute at @a[scores={species=006},distance=..1] run function ss_particles:wax_off_triple_ring
execute if entity @a[scores={species=006},distance=..1] run return fail

execute positioned ^ ^ ^0.5 run function ss_species:s_006f_ally_resistance_particles