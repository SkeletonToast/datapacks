scoreboard players add @s raycast_lifetime 1

$$(particle)

function raycast:entity_self_check with entity @s
$execute as @s[scores={raycast_lifetime=1..}] if entity @e[type=$(entity),dx=0,dy=0,dz=0] run $(run_on_entity_success)
$execute as @s[scores={raycast_lifetime=1..}] if entity @e[type=$(entity),dx=0,dy=0,dz=0] run scoreboard players set @s raycast_lifetime 0
$execute as @s[scores={raycast_lifetime=1..}] if entity @e[type=$(entity),dx=0,dy=0,dz=0] run return fail

$execute $(condition) block ~ ~ ~ $(block) run $(run_on_block_success)
$execute $(condition) block ~ ~ ~ $(block) run scoreboard players set @s raycast_lifetime 0
$execute $(condition) block ~ ~ ~ $(block) run return fail
$execute if score $true true matches $(solid_block_collision) unless block ~ ~ ~ #ss_lib:nonsolidblocks run scoreboard players set @s raycast_lifetime $(max_lifetime)

$execute unless entity @s[scores={raycast_lifetime=$(max_lifetime)..}] positioned ^ ^ ^$(increment_distance) run function raycast:either_specific \
    {block:"$(block)",condition:"$(condition)",entity:"$(entity)",particle:"$(particle)", \
    increment_distance:"$(increment_distance)",max_lifetime:"$(max_lifetime)",run_on_block_success:"$(run_on_block_success)", \
    run_on_entity_success:"$(run_on_entity_success)",solid_block_collision:$(solid_block_collision)}
$execute as @s[scores={raycast_lifetime=$(max_lifetime)..}] run scoreboard players set @s raycast_lifetime 0