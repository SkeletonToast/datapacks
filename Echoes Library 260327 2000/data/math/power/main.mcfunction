$execute as @s[scores={generic_e=..0}] run scoreboard players set @s $(base_score) 1

$scoreboard players operation @s generic_b = @s $(base_score)
scoreboard players remove @s generic_e 1
$execute as @s[scores={generic_e=1..}] run function math:power/recur {"base_score":"$(base_score)"}