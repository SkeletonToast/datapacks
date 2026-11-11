# function parse:simple {score:generic_b",function:"ss_lib:output_test"}
# function parse:simple {score:generic_d",function:"ss_lib:output_test"}
# function parse:simple {score:generic_c",function:"ss_lib:output_test"}

scoreboard players operation @s generic_a = @s generic_b
scoreboard players operation @s generic_a *= @s generic_b

$scoreboard players operation @s generic_c = @s $(input_score)
scoreboard players operation @s generic_c -= @s generic_a

function math:absolute_value {score:generic_c}

# execute if score @s generic_c >= @s generic_d run return fail
# execute if score @s generic_c matches 0 run return fail
execute if entity @s[scores={generic_c=..0}] run return fail
    # this one works, but technically doesn't find the closest square

scoreboard players add @s generic_b 1
scoreboard players operation @s generic_d = @s generic_c
$function math:sqrt/find_closest_square {input_score:"$(input_score)"}