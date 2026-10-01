scoreboard players add @s parse_score_digits 1
scoreboard players operation @s generic_b /= #const.10 value

execute as @s[scores={generic_b=1..}] run function parse:digit_counter