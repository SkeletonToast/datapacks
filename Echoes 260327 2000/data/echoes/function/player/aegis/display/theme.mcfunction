execute if predicate ss_lib:is/hiding run return fail
execute as @s[gamemode=spectator] run return fail

$function echoes:player/aegis/display/break {dy:"$(dy)",display:"$(display)",particle:"$(break_particle)"}

$execute unless score @s FallFlying matches 1 unless predicate ss_lib:is/swimming run function echoes:player/aegis/display/default_particles {particle:"$(default_particle)",dy:"$(dy)",display:"$(display)"}
$execute if score @s FallFlying matches 1 unless predicate ss_lib:is/swimming run function echoes:player/aegis/display/default_particles_gliding {particle:"$(default_particle)",dy:"$(dy)",display:"$(display)"}
$execute unless score @s FallFlying matches 1 if predicate ss_lib:is/swimming run function echoes:player/aegis/display/default_particles_swimming {particle:"$(default_particle)",dy:"$(dy)",display:"$(display)"}

# $execute as SkeletonToast if score @s aegis_theme matches $(color_id) if score @s sse.debug matches 1 at @s run function echoes:player/aegis/display/theme_$(theme) \
    {display:"@s",dy:"0.9",base_color:"$(base_color)"}