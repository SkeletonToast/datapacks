execute unless entity @s[scores={run_recursions=1..}] run scoreboard players set @s run_recursions 0
$$(f)
scoreboard players add @s run_recursions 1
$execute unless entity @s[scores={run_recursions=$(r)..}] run function run:recur {f:"$(f)",r:$(r)}
$scoreboard players set @s[scores={run_recursions=$(r)..}] run_recursions -1