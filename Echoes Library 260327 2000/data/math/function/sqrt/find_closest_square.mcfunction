# function parse:score_unended {"function":"ss_lib:output_test","score":"generic_b"}
# function parse:score_unended {"function":"ss_lib:output_test","score":"generic_d"}
# function parse:score_unended {"function":"ss_lib:output_test","score":"generic_c"}

scoreboard players operation @s generic_a = @s generic_b
scoreboard players operation @s generic_a *= @s generic_b

$scoreboard players operation @s generic_c = @s $(input_score)
scoreboard players operation @s generic_c -= @s generic_a

execute if score @s generic_c > @s generic_d run return fail

scoreboard players add @s generic_b 1
scoreboard players operation @s generic_d = @s generic_c
$function math:sqrt/find_closest_square {"input_score":"$(input_score)"}