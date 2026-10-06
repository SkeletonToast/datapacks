# $score, $append_position, $prepend_position, $prepend, $append, $function, $macros

# $say swm $(score)

scoreboard players set @s parse_score_recursions -1
scoreboard players set @s parse_score_append_position 0
scoreboard players set @s parse_score_digits 0

    $scoreboard players operation @s parse_score_input = @s $(score)

tag @s[scores={parse_score_input=..-1}] add parse_score_negative
scoreboard players operation @s[tag=parse_score_negative] parse_score_input *= #const.-1 value

# digit counter initialization
    scoreboard players operation @s generic_b = @s parse_score_input
    function math:digit_counter {input_score:generic_b,output_score:parse_score_digits}

# setting prepend and append positions
$scoreboard players set @s parse_score_append_position $(append_position)
$scoreboard players set @s parse_score_prepend_position $(prepend_position)
# de-negatizing
    # prepend
    scoreboard players operation @s[scores={parse_score_prepend_position=..-1}] parse_score_digits -= @s parse_score_prepend_position
    scoreboard players set @s[scores={parse_score_prepend_position=..-1}] parse_score_prepend_position 0

    # append
    scoreboard players operation @s[scores={parse_score_append_position=..-1}] parse_score_digits -= @s parse_score_append_position
    scoreboard players operation @s[scores={parse_score_append_position=..-1}] generic_e = @s parse_score_append_position
    scoreboard players operation @s[scores={parse_score_append_position=..-1}] generic_e *= #const.-1 value
    scoreboard players set @s[scores={parse_score_append_position=..-1}] generic_p 10
    execute as @s[scores={parse_score_append_position=..-1}] run function math:power/score {base_score:generic_p,exponent_score:generic_e}
    scoreboard players operation @s[scores={parse_score_append_position=..-1}] parse_score_input *= @s generic_p
    scoreboard players set @s[scores={parse_score_append_position=..-1}] parse_score_append_position 0

# digit extension
    # append
    execute if score @s parse_score_digits < @s parse_score_append_position run scoreboard players operation @s parse_score_digits = @s parse_score_append_position

    # prepend
    execute if score @s parse_score_digits < @s parse_score_prepend_position run scoreboard players set @s generic_p 10
    execute if score @s parse_score_digits < @s parse_score_prepend_position run scoreboard players operation @s generic_e = @s parse_score_prepend_position
    execute if score @s parse_score_digits < @s parse_score_prepend_position run scoreboard players operation @s generic_e -= @s parse_score_digits
    execute if score @s parse_score_digits < @s parse_score_prepend_position run function math:power/score {base_score:generic_p,exponent_score:generic_e}
    execute if score @s parse_score_digits < @s parse_score_prepend_position run scoreboard players operation @s parse_score_input *= @s generic_p
    execute if score @s parse_score_digits < @s parse_score_prepend_position run scoreboard players operation @s parse_score_digits = @s parse_score_prepend_position

# prepend position
scoreboard players set @s[scores={parse_score_prepend_position=0}] parse_score_prepend_position -1

scoreboard players operation @s[scores={parse_score_prepend_position=0..}] generic_a = @s parse_score_digits
    scoreboard players operation @s[scores={parse_score_prepend_position=0..}] generic_a -= @s parse_score_prepend_position
    scoreboard players operation @s[scores={parse_score_prepend_position=0..}] parse_score_prepend_position = @s generic_a

$function parse:score_increment {function:"$(function)",prepend:"$(prepend)",append:"$(append)",value:"",macros:"$(macros)"}

tag @s[tag=parse_score_negative] remove parse_score_negative