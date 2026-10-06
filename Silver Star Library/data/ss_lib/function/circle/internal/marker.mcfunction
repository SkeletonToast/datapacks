scoreboard players set @s circle_angle 0
scoreboard players set @s circle_nodes 0
tp @s[type=!player] ~ ~ ~ 0 0

scoreboard players set @s circle_angle 3600
$function math:round {score:circle_angle,round:$(nodes),reduce:true}
$scoreboard players set @s circle_nodes $(nodes)

$function parse:score_with_macros {score:circle_angle,function:"ss_lib:circle/internal/draw",prepend:"",append:".",prepend_position:0,append_position:1,macros:"radius:$(radius),run_at_node:'$(run_at_node)'"}

kill @s[type=!player]