scoreboard players add @s raycast_lifetime 1

execute unless block ~ ~ ~ #ss_lib:nonsolidblocks run return fail

$$(particle)

function raycast:entity_self_check with entity @s
$execute as @s[scores={raycast_lifetime=1..}] if entity @e[type=!#ss_lib:not_alive,dx=0,dy=0,dz=0] run $(run_on_success)
$execute as @s[scores={raycast_lifetime=1..}] if entity @e[type=!#ss_lib:not_alive,dx=0,dy=0,dz=0] run scoreboard players set @s raycast_lifetime $(max_lifetime)

$execute unless entity @s[scores={raycast_lifetime=$(max_lifetime)..}] positioned ^ ^ ^$(increment_distance) run function raycast:entity {"particle":"$(particle)","increment_distance":"$(increment_distance)","max_lifetime":"$(max_lifetime)","run_on_success":"$(run_on_success)"}
$execute as @s[scores={raycast_lifetime=$(max_lifetime)..}] run scoreboard players set @s raycast_lifetime 0