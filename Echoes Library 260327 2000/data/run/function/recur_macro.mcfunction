# scoreboard objectives add run_recursions dummy
execute unless entity @s[scores={run_recursions=1..}] run scoreboard players set @s run_recursions 0

$function parse:score_unended {score:run_recursions,function:"$(function)"}

scoreboard players add @s run_recursions 1
$execute unless entity @s[scores={run_recursions=$(r)..}] run function run:recur {function:"$(function)",r:$(r)}
$scoreboard players set @s[scores={run_recursions=$(r)..}] run_recursions -1
# $execute as @s[scores={run_recursions=$(r)..}] run scoreboard objectives remove run_recursions