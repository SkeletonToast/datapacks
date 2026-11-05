scoreboard players add @s circle.node 1

$execute positioned ^ ^ ^$(radius) run $(run_at_node)

$execute unless score @s circle.node matches $(nodes).. run execute rotated ~$(rotation) 0 run function circle:internal/node {nodes:$(nodes),radius:$(radius),rotation:$(rotation),run_at_node:"$(run_at_node)"}