scoreboard players remove @s generic_e 1
$scoreboard players operation @s $(base_score) *= @s generic_b

$execute as @s[scores={generic_e=1..}] run function math:power/recur {base_score:"$(base_score)"}