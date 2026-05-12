# score reset
# scoreboard objectives add parse_score_recursions dummy
# scoreboard objectives add parse_score_digits dummy
# scoreboard objectives add parse_score_append_position dummy
# scoreboard objectives add parse_score_prepend_position dummy
# scoreboard objectives add parse_score_input dummy

scoreboard players set @s parse_score_recursions -1
scoreboard players set @s parse_score_append_position 0
scoreboard players set @s parse_score_digits 0

    $scoreboard players operation @s parse_score_input = @s $(score)

tag @s[scores={parse_score_input=..-1}] add parse_score_negative
scoreboard players operation @s[tag=parse_score_negative] parse_score_input *= @s -1

# digit counter initialization
    scoreboard players operation @s generic_b = @s parse_score_input
    function parse:digit_counter

# setting prepend and append positions
$scoreboard players set @s parse_score_append_position $(append_position)
$scoreboard players set @s parse_score_prepend_position $(prepend_position)
# de-negatizing
scoreboard players operation @s[scores={parse_score_append_position=..-1}] parse_score_append_position *= @s -1
scoreboard players operation @s[scores={parse_score_prepend_position=..-1}] parse_score_prepend_position *= @s -1

# digit extension
execute if score @s parse_score_digits < @s parse_score_append_position run \
    scoreboard players operation @s parse_score_digits = @s parse_score_append_position
execute if score @s parse_score_append_position > @s parse_score_digits run \
    scoreboard players operation @s parse_score_prepend_position = @s parse_score_digits

# prepend position
scoreboard players set @s[scores={parse_score_prepend_position=0}] parse_score_prepend_position -1

scoreboard players operation @s[scores={parse_score_prepend_position=0..}] generic_a = @s parse_score_digits
    scoreboard players operation @s[scores={parse_score_prepend_position=0..}] generic_a -= @s parse_score_prepend_position
    scoreboard players operation @s[scores={parse_score_prepend_position=0..}] parse_score_prepend_position = @s generic_a

$function parse:score_increment {"function":"$(function)","prepend":"$(prepend)","append":"$(append)","value":""}

tag @s[tag=parse_score_negative] remove parse_score_negative