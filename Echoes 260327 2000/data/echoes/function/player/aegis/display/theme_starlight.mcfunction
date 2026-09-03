function ss_lib:fetch/absorption {"s":"@s"}

# execute as @s[scores={aegis_display_level=8,Absorption=0}] run function echoes:particles/aegis_ring_break

$function echoes:player/aegis/display/break {"dy":"$(dy)","display":"$(display)","particle":"glow"}

$function echoes:player/aegis/display/default_particles {particle:electric_spark,dy:"$(dy)",display:"$(display)"}