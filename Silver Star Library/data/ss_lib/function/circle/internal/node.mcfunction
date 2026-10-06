scoreboard players remove @s circle_nodes 1

$execute positioned ^ ^ ^$(radius) run $(run_at_node)

$execute if score @s circle_nodes matches 1.. run execute rotated ~$(rotation) 0 run function ss_lib:circle/internal/node {radius:"$(radius)",rotation:"$(rotation)",run_at_node:"$(run_at_node)"}