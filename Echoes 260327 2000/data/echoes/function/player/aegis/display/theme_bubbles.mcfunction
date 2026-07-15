function ss_lib:fetch/absorption {"s":"@s"}

execute as @s[scores={FallFlying=1}] run return fail

# execute as @s[scores={aegis_display_level=8,Absorption=0}] run function echoes:particles/aegis_ring_break

$function echoes:player/aegis/display/break {"dy":"$(dy)","display":"$(display)","particle":"bubble_pop"}
function echoes:player/aegis/display/calculate_display_level

scoreboard players set @s[scores={Absorption=0}] aegis_display_level 0
$execute as @s[scores={aegis_display_level=1..}] run particle bubble ~.5 ~$(dy) ~ 0.01 0.01 0.01 0 3 normal $(display)
$execute as @s[scores={aegis_display_level=2..}] run particle bubble ~.35 ~$(dy) ~.35 0.01 0.01 0.01 0 3 normal $(display)
$execute as @s[scores={aegis_display_level=3..}] run particle bubble ~ ~$(dy) ~.5 0.01 0.01 0.01 0 3 normal $(display)
$execute as @s[scores={aegis_display_level=4..}] run particle bubble ~-.35 ~$(dy) ~.35 0.01 0.01 0.01 0 3 normal $(display)
$execute as @s[scores={aegis_display_level=5..}] run particle bubble ~-.5 ~$(dy) ~ 0.01 0.01 0.01 0 3 normal $(display)
$execute as @s[scores={aegis_display_level=6..}] run particle bubble ~-.35 ~$(dy) ~-.35 0.01 0.01 0.01 0 3 normal $(display)
$execute as @s[scores={aegis_display_level=7..}] run particle bubble ~ ~$(dy) ~-.5 0.01 0.01 0.01 0 3 normal $(display)
$execute as @s[scores={aegis_display_level=8..}] run particle bubble ~.35 ~$(dy) ~-.35 0.01 0.01 0.01 0 3 normal $(display)