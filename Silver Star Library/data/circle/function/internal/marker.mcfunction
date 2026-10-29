scoreboard players set @s circle.angle 0
scoreboard players set @s circle.node 0
tp @s[type=!player] ~ ~ ~ 0 0

scoreboard players set @s circle.angle 3600
$function math:divide/int {score:circle.angle,div:$(nodes)}
$scoreboard players set @s circle.nodes $(nodes)

$function parse:score_with_macros {score:circle.angle,function:"circle:internal/draw",prepend:"",append:".",prepend_position:0,append_position:1,macros:"radius:$(radius),nodes:$(nodes),run_at_node:'$(run_at_node)'"}

kill @s[type=!player]