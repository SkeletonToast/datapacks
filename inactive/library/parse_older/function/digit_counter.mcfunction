scoreboard players add @s run_score_digits 1
scoreboard players operation @s[scores={generic_b=10..}] generic_b /= @s 10

execute as @s[scores={generic_b=10..}] run function parse:digit_counter