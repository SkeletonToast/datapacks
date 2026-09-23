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
    # generic_b is returned with the best starting value
scoreboard players set @s generic_d 2147483647
scoreboard players set @s generic_c 0
$function math:sqrt/find_closest_square {"input_score":"$(input_score)"}
    $scoreboard players operation @s $(input_score) /= @s 10
        $scoreboard players operation @s $(input_score) /= @s 10
# function run:recur {f:"function math:sqrt/test",r:3}
# generic_a is the square, generic_b is returned as the square root of generic_a

# once closest square is found, do calculation here
    # multiply 'x' in formula by 100
    # also multiply the lone 'sqrt(a)' by 100
    # adding these together will help negate floating point error and still give approx 2 decimal places

# in case it is a perfect square, and we get it right without further calculation
scoreboard players operation @s generic_f = @s generic_a
    scoreboard players operation @s generic_f /= @s 10
    scoreboard players operation @s generic_f /= @s 10
$execute if score @s generic_f = @s $(input_score) run scoreboard players operation @s $(output_score) = @s generic_b
    $execute if score @s generic_f = @s $(input_score) run scoreboard players operation @s $(output_score) *= @s 10
    # $execute if score @s generic_f = @s $(input_score) run scoreboard players operation @s $(output_score) *= @s 10
$execute if score @s generic_f = @s $(input_score) run return fail

$scoreboard players operation @s generic_a -= @s $(input_score)
scoreboard players operation @s generic_a *= @s -1

scoreboard players operation @s generic_a *= @s 10
    scoreboard players operation @s generic_a *= @s 10

scoreboard players operation @s generic_d = @s generic_b
scoreboard players set @s generic_c 10
$function math:power/integer {"base_score":"generic_c","exponent":"$(decimal_places)"}
    # changed this so that scale is just 100 if unscaled
scoreboard players operation @s generic_b = @s generic_d
    scoreboard players operation @s generic_a *= @s generic_c
scoreboard players operation @s generic_a /= @s generic_b
    scoreboard players operation @s generic_a /= @s 2

scoreboard players operation @s generic_b *= @s 10
    scoreboard players operation @s generic_b *= @s 10

scoreboard players operation @s generic_a += @s generic_b
    scoreboard players operation @s generic_a /= @s 10

$scoreboard players operation @s $(output_score) = @s generic_a
