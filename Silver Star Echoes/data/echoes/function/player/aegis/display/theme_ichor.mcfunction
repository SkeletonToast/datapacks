# execute as @s[scores={aegis_display_level=8,Absorption=0}] run function echoes:particles/aegis_ring_break

$function echoes:player/aegis/display/break {dy:"$(dy)",particle:"dust{color:[1,1,1],scale:1}"}
function echoes:player/aegis/display/calculate_display_level

scoreboard players set @s[scores={Absorption=0}] aegis_display_level 0

$execute as @s[scores={aegis_display_level=1..,FallFlying=0}] unless predicate ss_lib:is/swimming at @s rotated ~090 ~ positioned ^.5 ^ ^ positioned ~ ~$(dy) ~ run function echoes:particles/aegis_link {from:"$(base_color)",display:"$(display)",to:"001,000,000"}
$execute as @s[scores={aegis_display_level=2..,FallFlying=0}] unless predicate ss_lib:is/swimming at @s rotated ~135 ~ positioned ^.5 ^ ^ positioned ~ ~$(dy) ~ run function echoes:particles/aegis_link {from:"$(base_color)",display:"$(display)",to:"001,.67,000"}
$execute as @s[scores={aegis_display_level=3..,FallFlying=0}] unless predicate ss_lib:is/swimming at @s rotated ~180 ~ positioned ^.5 ^ ^ positioned ~ ~$(dy) ~ run function echoes:particles/aegis_link {from:"$(base_color)",display:"$(display)",to:"001,001,.33"}
$execute as @s[scores={aegis_display_level=4..,FallFlying=0}] unless predicate ss_lib:is/swimming at @s rotated ~225 ~ positioned ^.5 ^ ^ positioned ~ ~$(dy) ~ run function echoes:particles/aegis_link {from:"$(base_color)",display:"$(display)",to:".33,001,.33"}
$execute as @s[scores={aegis_display_level=5..,FallFlying=0}] unless predicate ss_lib:is/swimming at @s rotated ~270 ~ positioned ^.5 ^ ^ positioned ~ ~$(dy) ~ run function echoes:particles/aegis_link {from:"$(base_color)",display:"$(display)",to:".33,001,001"}
$execute as @s[scores={aegis_display_level=6..,FallFlying=0}] unless predicate ss_lib:is/swimming at @s rotated ~315 ~ positioned ^.5 ^ ^ positioned ~ ~$(dy) ~ run function echoes:particles/aegis_link {from:"$(base_color)",display:"$(display)",to:".33,.33,001"}
$execute as @s[scores={aegis_display_level=7..,FallFlying=0}] unless predicate ss_lib:is/swimming at @s rotated ~000 ~ positioned ^.5 ^ ^ positioned ~ ~$(dy) ~ run function echoes:particles/aegis_link {from:"$(base_color)",display:"$(display)",to:".67,000,.67"}
$execute as @s[scores={aegis_display_level=8..,FallFlying=0}] unless predicate ss_lib:is/swimming at @s rotated ~045 ~ positioned ^.5 ^ ^ positioned ~ ~$(dy) ~ run function echoes:particles/aegis_link {from:"$(base_color)",display:"$(display)",to:"1.0,.33,1.0"}

$execute as @s[scores={aegis_display_level=1..,FallFlying=0}] if predicate ss_lib:is/swimming at @s anchored eyes positioned ^0000 ^-.50 ^ run function echoes:particles/aegis_link {from:"$(base_color)",display:"$(display)",to:"001,000,000"}
$execute as @s[scores={aegis_display_level=2..,FallFlying=0}] if predicate ss_lib:is/swimming at @s anchored eyes positioned ^-.35 ^-.35 ^ run function echoes:particles/aegis_link {from:"$(base_color)",display:"$(display)",to:"001,.67,000"}
$execute as @s[scores={aegis_display_level=3..,FallFlying=0}] if predicate ss_lib:is/swimming at @s anchored eyes positioned ^-.50 ^0000 ^ run function echoes:particles/aegis_link {from:"$(base_color)",display:"$(display)",to:"001,001,.33"}
$execute as @s[scores={aegis_display_level=4..,FallFlying=0}] if predicate ss_lib:is/swimming at @s anchored eyes positioned ^-.35 ^0.35 ^ run function echoes:particles/aegis_link {from:"$(base_color)",display:"$(display)",to:".33,001,.33"}
$execute as @s[scores={aegis_display_level=5..,FallFlying=0}] if predicate ss_lib:is/swimming at @s anchored eyes positioned ^0000 ^0.50 ^ run function echoes:particles/aegis_link {from:"$(base_color)",display:"$(display)",to:".33,001,001"}
$execute as @s[scores={aegis_display_level=6..,FallFlying=0}] if predicate ss_lib:is/swimming at @s anchored eyes positioned ^0.35 ^0.35 ^ run function echoes:particles/aegis_link {from:"$(base_color)",display:"$(display)",to:".33,.33,001"}
$execute as @s[scores={aegis_display_level=7..,FallFlying=0}] if predicate ss_lib:is/swimming at @s anchored eyes positioned ^0.50 ^0000 ^ run function echoes:particles/aegis_link {from:"$(base_color)",display:"$(display)",to:".67,000,.67"}
$execute as @s[scores={aegis_display_level=8..,FallFlying=0}] if predicate ss_lib:is/swimming at @s anchored eyes positioned ^0.35 ^-.35 ^ run function echoes:particles/aegis_link {from:"$(base_color)",display:"$(display)",to:"1.0,.33,1.0"}

$execute as @s[scores={aegis_display_level=1..,FallFlying=1}] at @s positioned ^0000 ^-.50 ^ run function echoes:particles/aegis_link {from:"$(base_color)",display:"$(display)",to:"001,000,000"}
$execute as @s[scores={aegis_display_level=2..,FallFlying=1}] at @s positioned ^-.35 ^-.35 ^ run function echoes:particles/aegis_link {from:"$(base_color)",display:"$(display)",to:"001,.67,000"}
$execute as @s[scores={aegis_display_level=3..,FallFlying=1}] at @s positioned ^-.50 ^0000 ^ run function echoes:particles/aegis_link {from:"$(base_color)",display:"$(display)",to:"001,001,.33"}
$execute as @s[scores={aegis_display_level=4..,FallFlying=1}] at @s positioned ^-.35 ^0.35 ^ run function echoes:particles/aegis_link {from:"$(base_color)",display:"$(display)",to:".33,001,.33"}
$execute as @s[scores={aegis_display_level=5..,FallFlying=1}] at @s positioned ^0000 ^0.50 ^ run function echoes:particles/aegis_link {from:"$(base_color)",display:"$(display)",to:".33,001,001"}
$execute as @s[scores={aegis_display_level=6..,FallFlying=1}] at @s positioned ^0.35 ^0.35 ^ run function echoes:particles/aegis_link {from:"$(base_color)",display:"$(display)",to:".33,.33,001"}
$execute as @s[scores={aegis_display_level=7..,FallFlying=1}] at @s positioned ^0.50 ^0000 ^ run function echoes:particles/aegis_link {from:"$(base_color)",display:"$(display)",to:".67,000,.67"}
$execute as @s[scores={aegis_display_level=8..,FallFlying=1}] at @s positioned ^0.35 ^-.35 ^ run function echoes:particles/aegis_link {from:"$(base_color)",display:"$(display)",to:"1.0,.33,1.0"}