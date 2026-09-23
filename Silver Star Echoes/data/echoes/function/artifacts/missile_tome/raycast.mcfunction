scoreboard players add @s raycast_lifetime 1

function echoes:artifacts/missile_tome/raycast_particles

function raycast:entity_self_check with entity @s
$execute as @s[scores={raycast_lifetime=1..}] if entity @e[type=!#ss_lib:not_alive,distance=..$(radius)] run function echoes:artifacts/missile_tome/hit
$execute as @s[scores={raycast_lifetime=1..}] if entity @e[type=!#ss_lib:not_alive,distance=..$(radius)] run return fail

execute unless block ~ ~ ~ #ss_lib:nonsolidblocks run execute positioned ^ ^ ^-2 run function echoes:artifacts/missile_tome/hit
execute unless block ~ ~ ~ #ss_lib:nonsolidblocks run scoreboard players set @s raycast_lifetime 0
execute unless block ~ ~ ~ #ss_lib:nonsolidblocks run return fail

$execute as @s[scores={raycast_lifetime=$(max_lifetime)..}] run function echoes:artifacts/missile_tome/hit

$execute unless entity @s[scores={raycast_lifetime=$(max_lifetime)..}] positioned ^ ^ ^1 run function echoes:artifacts/missile_tome/raycast {"max_lifetime":"$(max_lifetime)","radius":"$(radius)"}
$execute as @s[scores={raycast_lifetime=$(max_lifetime)..}] run scoreboard players set @s raycast_lifetime 0