execute unless score @s execute.targeting_timer matches 1.. run return fail
execute unless score @s execute.target matches 1.. unless score @s execute.target matches ..-1 run return fail
$function parse:macros/complex_unended {score:execute.target,function:"execute:internal/on/parse_to_target",macros:"run:'$(run)'"}