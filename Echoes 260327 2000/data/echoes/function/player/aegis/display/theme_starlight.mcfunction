function ss_lib:fetch/absorption {"s":"@s"}

# execute as @s[scores={aegis_display_level=8,Absorption=0}] run function echoes:particles/aegis_ring_break

$function echoes:player/aegis/display/break {"dy":"$(dy)","display":"$(display)","particle":"glow"}

$execute unless score @s FallFlying matches 1 unless predicate ss_lib:is/swimming run function echoes:player/aegis/display/default_particles {particle:electric_spark,dy:"$(dy)",display:"$(display)"}
$execute if score @s FallFlying matches 1 unless predicate ss_lib:is/swimming run function echoes:player/aegis/display/default_particles_gliding {particle:electric_spark,dy:"$(dy)",display:"$(display)"}
$execute unless score @s FallFlying matches 1 if predicate ss_lib:is/swimming run function echoes:player/aegis/display/default_particles_swimming {particle:electric_spark,dy:"$(dy)",display:"$(display)"}