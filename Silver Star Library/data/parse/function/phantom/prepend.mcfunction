scoreboard players reset @a parse_score_input
$execute as @r run scoreboard players operation @s parse_score_input = $(target) $(score)

$execute as @a if score @s parse_score_input >= #const.MIN value run function parse:macros/complex {function:"$(function)",prepend:"$(prepend)",append:"",prepend_position:"$(prepend_position)",append_position:"0",score:parse_score_input,macros:""}