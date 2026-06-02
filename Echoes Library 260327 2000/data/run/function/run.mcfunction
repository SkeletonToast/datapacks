scoreboard objectives add run_recursions dummy
execute unless entity @s[scores={run_recursions=1..}] run scoreboard players set @s run_recursions 0
$$(f)
scoreboard players add @s run_recursions 1
$execute unless entity @s[scores={run_recursions=$(r)..}] run function run:run {"f":"$(f)","r":"$(r)"}
$execute as @s[scores={run_recursions=$(r)..}] run scoreboard objectives remove run_recursions