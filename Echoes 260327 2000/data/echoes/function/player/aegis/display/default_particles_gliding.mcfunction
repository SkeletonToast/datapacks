execute unless score @s FallFlying matches 1 run return fail

function echoes:player/aegis/display/calculate_display_level
scoreboard players set @s[scores={Absorption=0}] aegis_display_level 0
$execute as @s[scores={aegis_display_level=1..}] at @s positioned ^0000 ^-.50 ^ run particle $(particle) ~ ~$(dy) ~ 0 0 0 0 1 normal $(display)
$execute as @s[scores={aegis_display_level=2..}] at @s positioned ^-.35 ^-.35 ^ run particle $(particle) ~ ~$(dy) ~ 0 0 0 0 1 normal $(display)
$execute as @s[scores={aegis_display_level=3..}] at @s positioned ^-.50 ^0000 ^ run particle $(particle) ~ ~$(dy) ~ 0 0 0 0 1 normal $(display)
$execute as @s[scores={aegis_display_level=4..}] at @s positioned ^-.35 ^0.35 ^ run particle $(particle) ~ ~$(dy) ~ 0 0 0 0 1 normal $(display)
$execute as @s[scores={aegis_display_level=5..}] at @s positioned ^0000 ^0.50 ^ run particle $(particle) ~ ~$(dy) ~ 0 0 0 0 1 normal $(display)
$execute as @s[scores={aegis_display_level=6..}] at @s positioned ^0.35 ^0.35 ^ run particle $(particle) ~ ~$(dy) ~ 0 0 0 0 1 normal $(display)
$execute as @s[scores={aegis_display_level=7..}] at @s positioned ^0.50 ^0000 ^ run particle $(particle) ~ ~$(dy) ~ 0 0 0 0 1 normal $(display)
$execute as @s[scores={aegis_display_level=8..}] at @s positioned ^0.35 ^-.35 ^ run particle $(particle) ~ ~$(dy) ~ 0 0 0 0 1 normal $(display)

# $execute as @s[scores={aegis_display_level=1..}] run particle $(particle) ~.5 ~$(dy) ~ 0 0 0 0 1 normal $(display)
# $execute as @s[scores={aegis_display_level=2..}] run particle $(particle) ~.35 ~$(dy) ~.35 0 0 0 0 1 normal $(display)
# $execute as @s[scores={aegis_display_level=3..}] run particle $(particle) ~ ~$(dy) ~.5 0 0 0 0 1 normal $(display)
# $execute as @s[scores={aegis_display_level=4..}] run particle $(particle) ~-.35 ~$(dy) ~.35 0 0 0 0 1 normal $(display)
# $execute as @s[scores={aegis_display_level=5..}] run particle $(particle) ~-.5 ~$(dy) ~ 0 0 0 0 1 normal $(display)
# $execute as @s[scores={aegis_display_level=6..}] run particle $(particle) ~-.35 ~$(dy) ~-.35 0 0 0 0 1 normal $(display)
# $execute as @s[scores={aegis_display_level=7..}] run particle $(particle) ~ ~$(dy) ~-.5 0 0 0 0 1 normal $(display)
# $execute as @s[scores={aegis_display_level=8..}] run particle $(particle) ~.35 ~$(dy) ~-.35 0 0 0 0 1 normal $(display)