$execute as $(s) run scoreboard players add @s[predicate=ss_lib:is/sprinting] SprintTime 1
$execute as $(s) unless entity @s[predicate=ss_lib:is/sprinting] run scoreboard players set @s SprintTime 0