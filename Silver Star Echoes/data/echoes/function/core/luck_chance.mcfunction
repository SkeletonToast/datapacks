$function echoes:fetch/luck_chance {scale:$(scale)}
$scoreboard players add @s luck_chance $(base)

$function parse:score_with_macros {score:luck_chance,prepend:"",append:".",prepend_position:0,append_position:2,function:"echoes:core/luck_chance_predicate",macros:"function:\"$(function)\",condition:$(condition)"}

$scoreboard players remove @s luck_chance $(base)