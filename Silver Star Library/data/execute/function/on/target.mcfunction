execute unless score @s execute.targeting_timer matches 1.. run return fail
execute unless score @s execute.target matches 1.. unless score @s execute.target matches ..-1 run return fail
$function parse:score_unended_with_macros {score:execute.target,function:"execute:internal/on_target",macros:"run:'$(run)'"}