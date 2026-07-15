function ss_lib:fetch/absorption {"s":"@s"}

execute as @s[scores={FallFlying=1}] run return fail

# execute as @s[scores={aegis_display_level=8,Absorption=0}] run function echoes:particles/aegis_ring_break

$function echoes:player/aegis/display/break {"dy":"$(dy)","display":"$(display)","particle":"glow"}
function echoes:player/aegis/display/calculate_display_level

scoreboard players set @s[scores={Absorption=0}] aegis_display_level 0
$execute as @s[scores={aegis_display_level=1..}] run particle electric_spark ~.5 ~$(dy) ~ 0.02 0.02 0.02 0 1 normal $(display)
$execute as @s[scores={aegis_display_level=2..}] run particle electric_spark ~.35 ~$(dy) ~.35 0.02 0.02 0.02 0 1 normal $(display)
$execute as @s[scores={aegis_display_level=3..}] run particle electric_spark ~ ~$(dy) ~.5 0.02 0.02 0.02 0 1 normal $(display)
$execute as @s[scores={aegis_display_level=4..}] run particle electric_spark ~-.35 ~$(dy) ~.35 0.02 0.02 0.02 0 1 normal $(display)
$execute as @s[scores={aegis_display_level=5..}] run particle electric_spark ~-.5 ~$(dy) ~ 0.02 0.02 0.02 0 1 normal $(display)
$execute as @s[scores={aegis_display_level=6..}] run particle electric_spark ~-.35 ~$(dy) ~-.35 0.02 0.02 0.02 0 1 normal $(display)
$execute as @s[scores={aegis_display_level=7..}] run particle electric_spark ~ ~$(dy) ~-.5 0.02 0.02 0.02 0 1 normal $(display)
$execute as @s[scores={aegis_display_level=8..}] run particle electric_spark ~.35 ~$(dy) ~-.35 0.02 0.02 0.02 0 1 normal $(display)