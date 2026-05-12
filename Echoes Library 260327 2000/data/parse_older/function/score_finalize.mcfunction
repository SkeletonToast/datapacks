$execute as @s[scores={generic_b=0}] run function $(function) {"value":"$(prepend)0$(value)"}
$execute as @s[scores={generic_b=1}] run function $(function) {"value":"$(prepend)1$(value)"}
$execute as @s[scores={generic_b=2}] run function $(function) {"value":"$(prepend)2$(value)"}
$execute as @s[scores={generic_b=3}] run function $(function) {"value":"$(prepend)3$(value)"}
$execute as @s[scores={generic_b=4}] run function $(function) {"value":"$(prepend)4$(value)"}
$execute as @s[scores={generic_b=5}] run function $(function) {"value":"$(prepend)5$(value)"}
$execute as @s[scores={generic_b=6}] run function $(function) {"value":"$(prepend)6$(value)"}
$execute as @s[scores={generic_b=7}] run function $(function) {"value":"$(prepend)7$(value)"}
$execute as @s[scores={generic_b=8}] run function $(function) {"value":"$(prepend)8$(value)"}
$execute as @s[scores={generic_b=9}] run function $(function) {"value":"$(prepend)9$(value)"}

scoreboard objectives remove run_score_recursions
scoreboard objectives remove run_score_append_position
scoreboard objectives remove run_score_active_digit
scoreboard objectives remove run_score_digits