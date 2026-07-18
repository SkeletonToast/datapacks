scoreboard players add @s raycast_lifetime 1

particle large_smoke ~ ~ ~ 0 0 0 0 1 normal @a
particle small_flame ~ ~ ~ 0.2 0.2 0.2 0 2 normal @a

function raycast:entity_self_check with entity @s
$execute as @s[scores={raycast_lifetime=1..}] if entity @e[type=!#ss_lib:not_alive,dx=0,dy=0,dz=0] run $(run_on_success)
execute as @s[scores={raycast_lifetime=1..}] if entity @e[type=!#ss_lib:not_alive,dx=0,dy=0,dz=0] run return fail

# $execute as @s[scores={raycast_lifetime=1..}] if entity @e[tag=!ShotgunFired,type=!#ss_lib:not_alive,dx=1,dy=1,dz=1] run $(run_on_success)
# execute as @s[scores={raycast_lifetime=1..}] if entity @e[tag=!ShotgunFired,type=!#ss_lib:not_alive,dx=1,dy=1,dz=1] run return fail
# $execute as @s[scores={raycast_lifetime=1..}] if entity @e[tag=!ShotgunFired,type=!#ss_lib:not_alive,dx=-1,dy=-1,dz=-1] run $(run_on_success)
# execute as @s[scores={raycast_lifetime=1..}] if entity @e[tag=!ShotgunFired,type=!#ss_lib:not_alive,dx=-1,dy=-1,dz=-1] run return fail

$execute unless block ~ ~ ~ #ss_lib:nonsolidblocks run $(run_on_success)
execute unless block ~ ~ ~ #ss_lib:nonsolidblocks run return fail

$execute unless entity @s[scores={raycast_lifetime=$(max_lifetime)..}] positioned ^ ^ ^0.25 run function ss_armory:properties/guns/shotgun/raycast {"max_lifetime":"$(max_lifetime)","run_on_success":"$(run_on_success)","run_on_success":"$(run_on_success)","solid_block_collision":"$(solid_block_collision)"}
$execute as @s[scores={raycast_lifetime=$(max_lifetime)..}] run $(run_on_success)
$execute as @s[scores={raycast_lifetime=$(max_lifetime)..}] run scoreboard players set @s raycast_lifetime 0