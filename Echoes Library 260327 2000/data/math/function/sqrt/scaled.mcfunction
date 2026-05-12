# required macros:
    # input_score: scoreboard objective
    # output_score: scoreboard objective
    # scale: integer, scale for final output (set to 1 if this is run through the default function)

# scores used:
    # generic_a: stores the main value / stores nearest square
    # generic_b: used for nearest square root
    # generic_c: used for calculating distance from nearest square
    # generic_d: stores the digits / stores the distance from nearest square
    # generic_e: used for the scale

$execute if entity @s[scores={$(input_score)=..-1}] run scoreboard players operation @s $(input_score) *= @s -1
$execute if score @s $(input_score) matches 0 run scoreboard players set @s $(output_score) 0
$execute if score @s $(input_score) matches 0 run return fail

$scoreboard players operation @s $(input_score) *= @s 10
    $scoreboard players operation @s $(input_score) *= @s 10

$function math:digit_counter {"input_score":"$(input_score)","output_score":"generic_d"}
scoreboard players remove @s generic_d 1
scoreboard players operation @s generic_d /= @s 2

scoreboard players set @s generic_b 10
function math:power/score {"base_score":"generic_b","exponent_score":"generic_d"}
    # generic_b is returned with the best value

# scoreboard players operation @s generic_a = @s generic_b
scoreboard players set @s generic_d 2147483647
$function math:sqrt/find_closest_square {"input_score":"$(input_score)"}
# generic_a is returned as the square, generic_b is returned as the square root of generic_a

# once closest square is found, do calculation here
    # multiply 'x' in formula by 100
    # also multiply the lone 'sqrt(a)' by 100
    # adding these together will help negate floating point error and still give approx 2 decimal places
$scoreboard players operation @s generic_a -= @s $(input_score)
scoreboard players operation @s generic_a *= @s -1
scoreboard players operation @s generic_a *= @s 10
    scoreboard players operation @s generic_a *= @s 10
$scoreboard players set @s generic_e $(scale)
    scoreboard players operation @s generic_a *= @s generic_e
scoreboard players operation @s generic_a /= @s generic_b
    scoreboard players operation @s generic_a /= @s generic_b

scoreboard players operation @s generic_b *= @s 10
    scoreboard players operation @s generic_b *= @s 10

scoreboard players operation @s generic_a += @s generic_b

$scoreboard players operation @s $(output_score) = @s generic_a