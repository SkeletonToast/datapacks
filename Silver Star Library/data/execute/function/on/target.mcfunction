execute unless score @s execute.target_timer matches 1.. run return fail
execute if score @s execute.target matches 0 run return fail
$function parse:score_unended_with_macros {score:execute.target,function:"execute:internal/on",macros:"run:'$(run)'"}