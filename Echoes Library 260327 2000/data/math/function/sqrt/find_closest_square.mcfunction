function parse:score_unended {"function":"ss_lib:output_test","score":"generic_b"}

scoreboard players operation @s generic_a = @s generic_b
scoreboard players operation @s generic_a *= @s generic_b

$scoreboard players operation @s generic_c = @s $(input_score)
scoreboard players operation @s generic_c -= @s generic_a

execute unless score @s generic_c > @s generic_d run scoreboard players add @s generic_b 1
execute unless score @s generic_c > @s generic_d run scoreboard players operation @s generic_d = @s generic_c
$execute unless score @s generic_c > @s generic_d run function math:sqrt/find_closest_square {"input_score":"$(input_score)"}