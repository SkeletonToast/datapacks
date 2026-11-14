scoreboard players reset @a parse_score_input
$execute as @r run scoreboard players operation @s parse_score_input = $(target) $(score)

$execute as @r[scores={parse_score_input=1..}] run function parse:macros/complex {function:"$(function)",prepend:"$(prepend)",append:"$(append)",prepend_position:"$(prepend_position)",append_position:"$(append_position)",score:parse_score_input,macros:"$(macros)"}
$execute unless entity @a[scores={parse_score_input=1..}] as @r[scores={parse_score_input=..0}] run function parse:macros/complex {function:"$(function)",prepend:"$(prepend)",append:"$(append)",prepend_position:"$(prepend_position)",append_position:"$(append_position)",score:parse_score_input,macros:"$(macros)"}