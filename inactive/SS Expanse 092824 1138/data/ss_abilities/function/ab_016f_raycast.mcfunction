scoreboard players add @s raycast_lifetime 1
$execute as @s[scores={raycast_lifetime=1}] $(run_at_start)

particle sculk_soul ~ ~ ~ 0.1 0.1 0.1 0 1 normal @s

execute unless block ~ ~ ~ #ss_library:nonsolidblocks positioned ^ ^ ^-1 run scoreboard players set @s raycast_lifetime 80

$execute unless entity @s[scores={raycast_lifetime=80..}] positioned ^ ^ ^0.25 run function ss_abilities:ab_016f_raycast {"run_at_start":"$(run_at_start)","run_at_end":"$(run_at_end)"}
$execute as @s[scores={raycast_lifetime=80..}] $(run_at_end)
execute as @s[scores={raycast_lifetime=80..}] run scoreboard players set @s raycast_lifetime 0