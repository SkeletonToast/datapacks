$function echoes:fetch/luck_chance {scale:$(scale)}
$scoreboard players add @s luck_chance $(base)

$function parse:decimal_with_macros {score:luck_chance,scale:0.01,function:"echoes:luck_chance_predicate",macros:"function:\"$(function)\",condition:$(condition)"}

$scoreboard players remove @s luck_chance $(base)