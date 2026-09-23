scoreboard players add @s raycast_lifetime 1

$execute unless block ~ ~ ~ #ss_lib:nonsolidblocks run scoreboard players set @s raycast_lifetime $(max_lifetime)

$$(particle)

$execute unless entity @s[scores={raycast_lifetime=$(max_lifetime)..}] positioned ^ ^ ^$(increment_distance) run function ss_lib:raycast {"particle":"$(particle)","increment_distance":"$(increment_distance)","max_lifetime":"$(max_lifetime)","run_on_completion":"$(run_on_completion)"}
$execute as @s[scores={raycast_lifetime=$(max_lifetime)..}] run $(run_on_completion)
$execute as @s[scores={raycast_lifetime=$(max_lifetime)..}] run scoreboard players set @s raycast_lifetime 0