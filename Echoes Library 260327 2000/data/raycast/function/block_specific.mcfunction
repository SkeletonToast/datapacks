scoreboard players add @s raycast_lifetime 1

$$(particle)

$execute if block ~ ~ ~ $(block) run $(run_on_success)
$execute if block ~ ~ ~ $(block) run scoreboard players set @s raycast_lifetime $(max_lifetime)
$execute if $true true matches $(solid_block_collision) unless block ~ ~ ~ #ss_lib:nonsolidblocks run scoreboard players set @s raycast_lifetime $(max_lifetime)

$execute unless entity @s[scores={raycast_lifetime=$(max_lifetime)..}] positioned ^ ^ ^$(increment_distance) run function raycast:block_specific {"block":"$(block)","particle":"$(particle)","increment_distance":"$(increment_distance)","max_lifetime":"$(max_lifetime)","run_on_success":"$(run_on_success)","solid_block_collision":"$(solid_block_collision)"}
$execute as @s[scores={raycast_lifetime=$(max_lifetime)..}] run scoreboard players set @s raycast_lifetime 0