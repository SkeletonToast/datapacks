# required macros:
    # input_score: scoreboard objective
    # output_score: scoreboard objective
    # scale: integer, scale for final output (set to 1 if this is run through the default function)

# scores used:
    # generic_a: stores the main value, and is used for nearest square root
    # generic_b: used for nearest square root
    # generic_c: used for finding distance from nearest square
    # generic_d: stores the digits / stores the distance from nearest square
    # generic_e: used for the scale

$function parse:digit_counter {"input_score":"$(input_score)","output_score":"generic_d"}
scoreboard players remove @s generic_d 1
scoreboard players operation @s generic_d /= @s 2

scoreboard players set @s generic_b 10
function math:power/score {"base_score":"generic_b","exponent_score":"generic_d"}

scoreboard players operation @s generic_a = @s generic_b
$function math:sqrt/find_closest_square {"input_score":"$(input_score)"}

# $scoreboard players operation @s generic_a = @s $(input_score)
# $scoreboard players set @s generic_e $(scale)

$scoreboard players operation @s $(output_score) = @s generic_a