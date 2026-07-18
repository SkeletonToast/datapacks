# score re-initialization
scoreboard objectives remove run_score_recursions
scoreboard objectives remove run_score_append_position
scoreboard objectives remove run_score_active_digit
scoreboard objectives remove run_score_digits
scoreboard objectives add run_score_recursions dummy
scoreboard objectives add run_score_append_position dummy
scoreboard objectives add run_score_active_digit dummy
scoreboard objectives add run_score_digits dummy

# score reset
scoreboard players set @s run_score_recursions 0
scoreboard players set @s run_score_append_position 0
scoreboard players set @s run_score_active_digit 0
scoreboard players set @s run_score_digits 0

    $scoreboard players operation @s generic_a = @s $(score)

# yet another bandaid fix for if the input score is just zero
$execute as @s[scores={generic_a=0}] run function $(function) {"value":"0"}
execute as @s[scores={generic_a=0}] run return fail

# digit counter initialization
    scoreboard players operation @s generic_b = @s generic_a
    scoreboard players operation @s[scores={generic_b=..-1}] generic_b *= @s -1

    scoreboard players add @s run_score_digits 1
    execute as @s[scores={generic_b=10..}] run function parse:digit_counter
    scoreboard players operation @s run_score_active_digit = @s run_score_digits
    scoreboard players add @s run_score_active_digit 1

# append position
    $scoreboard players set @s run_score_append_position $(append_position)
        execute if score @s run_score_append_position > @s run_score_digits run scoreboard players set @s run_score_append_position 0
    tag @s[scores={run_score_append_position=..-1}] add parse_append_negative
    scoreboard players operation @s[scores={run_score_append_position=..0}] run_score_append_position += @s run_score_digits

    execute as @s[scores={run_score_append_position=..-1}] run scoreboard players operation @s run_score_digits -= @s run_score_append_position
    scoreboard players set @s[scores={run_score_append_position=..-1}] run_score_append_position 0

$execute if entity @s[scores={generic_a=1..},tag=!parse_append_negative] run function parse:score_increment {"function":"$(function)","prepend":"$(prepend)","append":"$(append)","value":""}
$execute if entity @s[scores={generic_a=..-1},tag=!parse_append_negative] run function parse:score_increment {"function":"$(function)","prepend":"$(prepend)-","append":"$(append)","value":""}

# kind of a bandaid fix lol but these are meant to differentiate if the function has a negative append position,
# but the negative position is the same as the # of digits, so it's just set to 0 instead
$execute if entity @s[scores={generic_a=1..,run_score_append_position=1..},tag=parse_append_negative] run function parse:score_increment {"function":"$(function)","prepend":"$(prepend)","append":"$(append)","value":""}
$execute if entity @s[scores={generic_a=..-1,run_score_append_position=1..},tag=parse_append_negative] run function parse:score_increment {"function":"$(function)","prepend":"$(prepend)-","append":"$(append)","value":""}
$execute if entity @s[scores={generic_a=1..,run_score_append_position=0},tag=parse_append_negative] run function parse:score_increment {"function":"$(function)","prepend":"$(prepend)$(append)","append":"","value":""}
$execute if entity @s[scores={generic_a=..-1,run_score_append_position=0},tag=parse_append_negative] run function parse:score_increment {"function":"$(function)","prepend":"$(prepend)-$(append)","append":"","value":""}

tag @s[tag=parse_append_negative] remove parse_append_negative