# de-negatizing
scoreboard players operation @s[scores={generic_a=..-1}] generic_a *= @s -1

scoreboard players operation @s[scores={run_score_recursions=1..}] generic_a /= @s 10
scoreboard players operation @s generic_b = @s generic_a
scoreboard players operation @s generic_b %= @s 10
scoreboard players add @s run_score_recursions 1
scoreboard players remove @s run_score_active_digit 1

# $execute as @s[scores={run_score_recursions=1}] run function parse:score_recur {"function":"$(function)",prepend:"$(prepend)",append:"$(append)","value":"$(prepend)"}

# unappended - if active digit is not yet ≥ append position
$execute if score @s run_score_recursions < @s run_score_digits \
    if score @s run_score_active_digit < @s run_score_append_position run function parse:score_recur \
    {"function":"$(function)",prepend:"$(prepend)",append:"$(append)","value":"$(value)"}

# appended - if active digit is = append position
$execute if score @s run_score_recursions < @s run_score_digits \
    if score @s run_score_active_digit = @s run_score_append_position run function parse:score_recur \
    {"function":"$(function)",prepend:"$(prepend)",append:"$(append)","value":"$(append)$(value)"}

# appended - if active digit is > append position
$execute if score @s run_score_recursions < @s run_score_digits \
    if score @s run_score_active_digit > @s run_score_append_position run function parse:score_recur \
    {"function":"$(function)",prepend:"$(prepend)",append:"$(append)","value":"$(value)"}

# final score - if recursions ≥ digits AND NOT proper append position
$execute if score @s run_score_recursions >= @s run_score_digits \
    unless score @s run_score_active_digit = @s run_score_append_position run function parse:score_finalize \
    {"function":"$(function)",prepend:"$(prepend)","value":"$(value)"}

# final score - if recursions ≥ digits AND proper append position
$execute if score @s run_score_recursions >= @s run_score_digits \
    if score @s run_score_active_digit = @s run_score_append_position run function parse:score_finalize \
    {"function":"$(function)",prepend:"$(prepend)","value":"$(append)$(value)"}