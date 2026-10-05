scoreboard players set @s generic_c 3600
$function math:round {score:generic_c,round:$(nodes)}

$function parse:score_with_macros {score:generic_c,function:"circle:internal/draw",prepend:"",append:".",prepend_position:0,append_position:1,macros:"radius:$(radius),run_at_node:$(run_at_node),nodes:$(nodes)"}